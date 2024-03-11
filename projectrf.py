import os
import boto3
from pydub import AudioSegment
from TTS.api import TTS
from flask import Flask, request, jsonify,logging
from werkzeug.utils import secure_filename
import requests
import json
from dotenv import load_dotenv
import traceback
import re
from flask_cors import CORS
import subprocess
import psutil


tts = TTS("tts_models/multilingual/multi-dataset/xtts_v2", gpu=False)
app = Flask(__name__)
app.config['MAX_CONTENT_LENGTH'] = 100 * 1024 * 1024
CORS(app)

def s3_connection():
    try:
        s3 = boto3.client(
            service_name="s3",
            region_name="us-east-2",
            aws_access_key_id="",
            aws_secret_access_key=""
        )
        return s3
    except Exception as e:
        print(e)
        return None


def custom_secure_filename(filename):
    filename = re.sub(r'[^\w\s가-힣.]', '', filename)
    return filename


def clova_connection():
    global invoke_url, clova_secret_key
    load_dotenv()
    invoke_url = ""
    clova_secret_key = ""

def req_upload(file_path, completion, callback=None, userdata=None, forbiddens=None, boostings=None,wordAlignment=True, fullText=True, diarization=None):
    with open(file_path, 'rb') as f:
        file_content = f.read() 
    request_body = {
        'language': 'ko-KR',
        'completion': completion,
        'callback': callback,
        'userdata': userdata,
        'wordAlignment': wordAlignment,
        'fullText': fullText,
        'forbiddens': forbiddens,
        'boostings': boostings,
        'diarization': diarization,
    }
    headers = {
        'Accept': 'application/json;UTF-8',
        'X-CLOVASPEECH-API-KEY': clova_secret_key 
    }
    files = {
        'media': ('filename', file_content), 
        'params': (None, json.dumps(request_body, ensure_ascii=False).encode('UTF-8'), 'application/json')
    }
    response = requests.post(headers=headers, url=invoke_url + '/recognizer/upload', files=files)
    return response.json()


def speaker_diarization(timestamp):
    speech_list = {}
    speaker_sample_list = {}
    
    for seg in timestamp['segments']:
        cur_speaker_id = seg['diarization']['label']
        if cur_speaker_id in speech_list.keys():
            speech_list[cur_speaker_id].append({'speaker_id':cur_speaker_id,'start':seg['start'],'end':seg['end'],'confidence':seg['confidence']})
        else:
            speech_list[cur_speaker_id] = [{'speaker_id':cur_speaker_id,'start':seg['start'],'end':seg['end'],'confidence':seg['confidence']}]
    
    speaker_num = len(speech_list.keys())
    
    return speaker_num, speech_list, speaker_sample_list


def save_speaker_audio(file_path, speech_list):
    try:
        s3 = s3_connection()
        if not s3:
            return jsonify({'error': 'S3에 연결할 수 없습니다.'}), 500
        
        nickname = request.form.get('nickname')
        print(nickname)
        audio = AudioSegment.from_file(file_path)
        for speaker_id, speeches in speech_list.items():
            speaker_audio = AudioSegment.empty()
            for speech in speeches:
                start = int(speech['start'])
                end = int(speech['end'])
                speaker_audio += audio[start:end]
            output_path = f"C:/Users/??/Desktop/pro/temp/{nickname}speaker{speaker_id}_all.wav"
            speaker_audio.export(output_path, format='wav')
            print(f"화자 {speaker_id}의 모든 오디오가 {output_path}에 성공적으로 저장되었습니다.")
        s3.upload_file(f"C:/Users/??/Desktop/pro/temp/{nickname}speaker1_all.wav", '??', f'temp/{nickname}speaker1_all.wav')
        s3.upload_file(f"C:/Users/??/Desktop/pro/temp/{nickname}speaker2_all.wav", '??', f'temp/{nickname}speaker2_all.wav')
    except Exception as e:
        print(f"오류 발생: {e}")


def convert_to_wav(input_file, output_file):
    command = ['ffmpeg', '-y', '-i', input_file, '-vn', '-acodec', 'pcm_s16le', '-ar', '44100', '-ac', '2', output_file]
    subprocess.run(command)


@app.route('/upload', methods=['POST'])
def upload_to_s3():
    psutil.virtual_memory()
    try:
        s3 = s3_connection()
        if not s3:
            return jsonify({'error': 'S3에 연결할 수 없습니다.'}), 500

        if 'file' not in request.files:
            return jsonify({'error': '파일이 전송되지 않았습니다.'}), 400

        file = request.files['file']
        print(file)
        if file:
            project = request.form.get('project')
            original_filename = file.filename
            file_extension = os.path.splitext(original_filename)[1]
            
            file_path = None
            
            if file_extension.lower() == '.wav':
                filename = custom_secure_filename(f"{project}{file_extension}") 
                file_path = os.path.join('C:/Users/??/Desktop/pro/temp/', filename)
                file.save(file_path)
            else:
                input_file_path = os.path.join('C:/Users/??/Desktop/pro/temp/', original_filename)
                file.save(input_file_path)
                output_file_path = os.path.join('C:/Users/??/Desktop/pro/temp/', f"{project}.wav")
                convert_to_wav(input_file_path, output_file_path)
                os.remove(input_file_path)  
                filename = f"{project}.wav"
                file_path = output_file_path

            nickname = request.form.get('nickname')
            folder = f"{nickname}/"
            
            try:
                s3.head_object(Bucket="??", Key=folder)
            except s3.exceptions.ClientError:
                s3.put_object(Bucket="??", Key=folder)
            
            project_folder = f"{folder}{project}/"
            try:
                s3.head_object(Bucket="??", Key=project_folder)
            except s3.exceptions.ClientError:
                s3.put_object(Bucket="??", Key=project_folder)

            s3.upload_file(file_path, "??", project_folder + filename)

            name = project + "/" + nickname
            return jsonify({
                'result': name,
                'project': project,
                'nickname': nickname
            }), 200
    except Exception as e:
        print(e)
        return jsonify({'error': '파일 업로드에 실패하였습니다.'}), 500



@app.route('/incoding', methods=['POST'])
def incoding():
    print(psutil.virtual_memory())
    try:
        s3 = s3_connection()
        if not s3:
            return jsonify({'error': 'S3에 연결할 수 없습니다.'}), 500
            

        nickname = request.form.get('nickname')
        sendtext = request.form.get('sendtext')
        project = request.form.get('project')
        
        folder = f"{nickname}/{project}/{sendtext}/"
        try:
            s3.head_object(Bucket="??", Key=folder)
        except s3.exceptions.ClientError:
            s3.put_object(Bucket="??", Key=folder)
        
        output_path = f"C:/Users/??/Desktop/pro/temp/{nickname}_{sendtext}.wav"
        
        speaker_key = f"{nickname}/{project}/{project}.wav"
        local_speaker_path = f"C:/Users/??/Desktop/pro/temp/{project}.wav"
        
        s3.download_file('??', speaker_key, local_speaker_path)
        
        tts.tts_to_file(
            text=sendtext,
            file_path=output_path,
            speaker_wav=local_speaker_path,
            repetition_penalty=5.0,
            temperature=0.75,
            speed=1,
            language="ko"
        )
        
        sound1 = AudioSegment.from_file("C:/Users/??/Desktop/pro/22.4khzprotect.mp3")
        sound2 = AudioSegment.from_file(f"C:/Users/??/Desktop/pro/temp/{nickname}_{sendtext}.wav")

        combined = sound1.overlay(sound2)

        combined.export("C:/Users/??/Desktop/pro/temp/22.wav", format='wav')

        folder_name = f"{nickname}/{project}/{sendtext}/"
        s3.upload_file(output_path, "??", folder_name + f"{sendtext}.wav")
        
        file_url = f"https://??.s3.amazonaws.com/{folder_name}{sendtext}.wav"
        
        os.remove(local_speaker_path)
        os.remove(output_path)
        
        return jsonify({
            'file_url': file_url,
        }), 200
    except Exception as e:
        print(e)
        return jsonify({'error': '처리 중 오류가 발생했습니다.'}), 500


@app.route('/divide', methods=["POST"])
def divide():
    psutil.virtual_memory()
    try:
        
        clova_connection()
        file = request.files['file']
        temp_dir = "C:/Users/??/Desktop/pro/temp" 
        file_path = os.path.join(temp_dir, secure_filename(file.filename))
        file.save(file_path)

        completion = 'sync' 
        response = req_upload(file_path, completion)
        speaker_num, speech_list, speaker_sample_list = speaker_diarization(response)
        save_speaker_audio(file_path, speech_list)
        
        nickname = request.form.get('nickname')
        
        project = request.form.get('project')
        firsturl = f"https://??.s3.us-east-2.amazonaws.com/temp/{nickname}speaker1_all.wav"
        secondurl = f"https://??.s3.us-east-2.amazonaws.com/temp/{nickname}speaker2_all.wav"
        return jsonify({
            'firsturl' : firsturl,
            'secondurl' : secondurl,
            'project': project,
            'nickname': nickname
        })
    except Exception as e:
        app.logger.error('Unhandled exception', exc_info=True)
        return jsonify({'error': str(e), 'trace': traceback.format_exc()}), 500



if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug= True)
