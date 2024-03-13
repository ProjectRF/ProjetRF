![header](https://capsule-render.vercel.app/api?type=waving&color=5A4D45&height=150&section=header&text=RE.FIT&fontSize=40&fontColor=f8f3f1&fontAlignY=40)
# :musical_note: RE.FIT(팀명 : Hi-Five)
![image](https://github.com/ProjectRF/ProjetRF/assets/144158751/6974b95b-a3a1-4b3d-97bd-13154404ad5c)

><b>XTTS2와 ClovaSpeech를 활용한 화자인식 및 음성복제 서비스</b>
* 최신 XTTS 모델을 사용해 짧은 시간만으로 TTS학습 가능
* 사용자가 사용하기 편한 UI/UX
* 마이페이지에서 다운로드 가능

</br>

## 1. 제작 기간 & 역할분담
- :calendar: 2024년 1월 16일 ~ 3월 7일
- :crown: 손병권(팀장) : PM, Front-End
- :crown: 김연재(부팀장) : Back-End 및 DB 
- :star: 강치원(팀원) : Back-End 및 문서작업
- :star: 김미송(팀원) : Front-End 및 문서작업
- :star: 오푸른(팀원) : Front-End 및 문서작업

</br>

## 2. 사용 기술
#### `Back-end`
  - ![java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
  - ![oracle](https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=oracle&logoColor=black)
  - ![jpa](https://img.shields.io/badge/jpa-6DB33F?style=for-the-badge&logo=springboot&logoColor=white)
  - ![springboot](https://img.shields.io/badge/springboot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white)
  - ![python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
  - ![flask](https://img.shields.io/badge/Flask-000000?style=for-the-badge&logo=flask&logoColor=white)
  - ![amazonS3](https://img.shields.io/badge/AmazonS3-569A31?style=for-the-badge&logo=AmazonS3&logoColor=white)

#### `Front-end`
  - ![nicepage](https://img.shields.io/badge/Nicepage-4082f4?style=for-the-badge&logo=nicepage&logoColor=white)
  - ![html](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
  - ![css](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
  - ![js](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white)

#### `IDE`
- ![Eclipse](https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=eclipse&logoColor=white)
- ![visualstudiocode](https://img.shields.io/badge/VisualStudioCode-007ACC?style=for-the-badge&logo=visualstudiocode&logoColor=white)

</br>

## 3. ERD 설계
![image](https://github.com/ProjectRF/ProjetRF/assets/144158751/a78cd120-47e5-461f-9b59-d50ef3477b47)




## 4. 핵심 기능
이 서비스의 핵심 기능은 음성을 TTS 변환해 출력하는 기능입니다.  
사용자는 짧은 녹음 혹은 통화했던 음성 파일만 가지고 있더라도 바로 서비스를 이용할 수 있습니다.    

<details>
<summary><b>핵심 기능 설명 펼치기</b></summary>
<div markdown="1">

### 4.1. 전체 흐름
![image](https://github.com/ProjectRF/ProjetRF/assets/144158751/1189cfd7-806e-4839-8255-4db046941f81)




### 4.2. 시스템 아키텍처
![image](https://github.com/ProjectRF/ProjetRF/assets/144158751/38b907a0-3af6-4a1d-a079-a3a0c020a999)


- **흐름예시**
  - 사용자는 로그인을 한 후 녹음, 업로드, 통화파일 업로드 3가지 메인기능 이용 가능 그 외 서비스소개, FAQ, 마이페이지 이용 가능
  - 서비스소개 : 간단한 사이트에 대한 소개 및 정보
  - 음성 녹음 : 파일이름을 작성한 후 10문장을 녹음하고 원하는 텍스트를 작성하여 이용 가능
  - 파일 업로드 : 불가피한 경우로 녹음이 불가능 할 경우 개인 녹음파일로 진행 가능 진행 순서는 음성 녹음과 동일
  - 통화 구분 : 불가피한 경우로 인해 녹음 또는 개인 음성파일이 없을 경우 기본적으로 1대 1 통화파일을 업로드 시켜 화자를 구분해줌. 차후 선택창에서 A 또는 B의 목소리를 정해 다운로드 받을 수 있음
  - FAQ : 간단한 질문들에 대한 답변을 적어놓음
  - 마이페이지 : 자신의 닉네임과 잔여 다운로드 횟수를 확인할 수 있고 녹음과 업로드에서 저장된 목소리들을 다시 들어보고 다운로드 가능

### 4.3.1 핵심 기능 : 음성녹음

![image](https://github.com/ProjectRF/ProjetRF/assets/144158751/0b5146b7-1ab2-488d-a2e8-e556c547f2b6)



  - 음성 녹음에서는 먼저 파일 이름을 지은 후  10개의 문장을 통해 녹음을 진행하게됩니다.
  - JS로 구현한 녹음파일들을 하나로 합쳐 AJAX 비동기 요청을 PYTHON FLASK에 보냅니다.
  - PYTHON FLASK에서 UPLOAD루트로 연결된 후 AMAZON S3와 연결하여 파일이름, 사용자ID, 녹음된 목소리를 폴더에 저장합니다.
  - 그 후 사용자는 자신이 원하는 텍스트를 적어 변환하기 버튼을 누르면 AJAX통신으로 다시 PYTHON FLASK로 요청을 보냅니다.
  - AJAX에서 텍스트와 사용자의 ID를 FORMDATA형식으로 받아 자료를 처리한 후 XTTS2에 녹음된 파일을 사용하여 텍스트를 입력하고 결과 파일을 AMAZON S3에 저장합니다.
  - FALSK에서 RETURN값으로 AMAZON S3에 저장된 URL값을 받아온 후 URL을 JS를 통해 AUDIO 태그의 SRC에 추가해줍니다.
  - 사용자가 결과로 출력된 음성을 듣고 마음에 든다면 저장하기 버튼을 눌러 CONTROLLER를 통해 ORACLE DB에 IDX, 사용자의 ID, 생성날짜, URL를 저장합니다.
  - DB에 저장된 값들은 차후 마이페이지에서 자신의 보관함을 사용할 때 이용됩니다.



### 4.3.2 핵심 기능 : 음성 파일 업로드

![img-1](https://github.com/ProjectRF/ProjetRF/assets/150218741/b8c8d3d0-f9a0-45e0-b531-fc00c799f307)
 
 
 - 음성 파일 업로드에서는 사용자가 오디오 파일을 먼저 업로드 합니다.
 - 업로드 완료 알림 이후 음성 녹음과 마찬가지로 파일 이름을 짓고 시작하기 버튼을 누릅니다.
 - 추후 과정은 음성 녹음과 같습니다. 

### 4.3.3 핵심 기능 : 통화 파일 업로드 (화자 구분)
![img-2](https://github.com/ProjectRF/ProjetRF/assets/150218741/e5c6dad7-0d80-40c3-b32c-fe6f6cc51b48)

  - 통화 파일 업로드에서는 사용자가 오디오 파일을 먼저 업로드 합니다.
  - 업로드 완료 알림 이후 파일 이름을 짓고 시작하기 버튼을 누릅니다.
  - CloverSpeech를 통해 해당 파일에서 화자를 구분한 후 목소리 선택으로 넘어갑니다.
  - 목소리 선택에서는 재생하기를 통해 구분된 화자의 목소리를 들을 수 있으며 누구의 목소리로 변환할 것인지 선택합니다.
  - 선택하기 버튼을 통해 선택된 음성은 즉시 다운로드 되며, 사용자는 음성 파일 업로드에 해당 음성을 업로드 해 서비스를 이용합니다.


### 4.3.4 기타 기능 : 마이페이지
![img-3](https://github.com/ProjectRF/ProjetRF/assets/150218741/6c1697ff-b920-44cc-a643-08d4d9756c4e)

  - 마이페이지에서는 음성녹음, 음성 업로드를 통해 저장한 음성 파일들을 확인할 수 있습니다.
  - 사용자가 입력한 텍스트, 생성 일자를 확인할 수 있으며 재생하기를 통해 저장된 음성을 재생할 수 있고, 다운로드가 가능합니다.
  - 기본으로 주어지는 다운로드 횟수는 5회 입니다. 이후 사용자의 이용에 따라 차감됩니다.

</div>
</details>

</br>

## 5. 핵심 트러블 슈팅
### 5.1. 파일 저장명 오류
![img-4](https://github.com/ProjectRF/ProjetRF/assets/150218741/977aaf50-c647-461c-807f-5af8fca78778)

  - 파일을 임시로 저장할때 안전성을 위해 파이썬의 werkzeug의 secure_filename을 사용했지만, 라이브러리에서 한글을 포함하는 모든 특수문자를 삭제시켜 오류가 발생하였습니다.
  - 이를 해결하기 위해 라이브러리를 사용하지 않고, 불필요하거나 허용되지 않은 특수문자들을 삭제하는 새로운 함수를 직접 선언해 사용하였습니다.

### 5.2. 변환 실패 오류
![img-5](https://github.com/ProjectRF/ProjetRF/assets/150218741/89cae56b-1d31-452d-a440-3014ac8686c4)


  - XTTS는 wav파일만 사용 가능합니다. 이 때문에 녹음기를 만들어 로직을 수행시켰지만 파일의 확장자가 달라 파이썬 플라스크에서 XTTS변환 실패하는 오류가 있었습니다.
  - 이를 해결하기 위해 녹음 결과파일의 원래 확장자를 파악 후, 플라스크내에서 ffmpeg를 사용해 다양한 확장자를 가진 파일들을 wav파일로 변환시켜주는 로직을 추가하였습니다.
  - 
</br>


    
</br>

![footer](https://capsule-render.vercel.app/api?type=waving&color=5A4D45&height=150&section=footer&text=Team%20Hi-Five&fontSize=20&fontColor=f8f3f1&fontAlignY=60)
