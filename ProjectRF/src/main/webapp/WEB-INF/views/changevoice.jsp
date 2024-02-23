<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TTS 오디오 재생</title>
</head>
<body>

    입력할 텍스트
    <input type="text" id="sendtext" name="sendtext">
    <button id="playbtn">Play Music</button>
    <audio id="audioPlayer" controls hidden></audio>
    <button id="deepdb">저장하기</button>
    <a href="main">메인으로</a>
    <!-- --------------------------------------------------------------- -->

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
    <script>
    	var musicUrl = "";
        let pyurl = "http://127.0.0.1:5000/incoding";
        var project = sessionStorage.getItem('project');
        var nickname = sessionStorage.getItem('nickname');
		console.log(project);
		console.log(nickname);
		
        const gopython = function() {
            var formData = new FormData();
            formData.append('sendtext', $('#sendtext').val());
            formData.append('nickname', nickname);
            formData.append('project', project);
			
            console.log($('#sendtext').val());
            console.log(nickname);
            console.log(project);
            
            $.ajax({
                url : pyurl,
                type : 'POST',
                data : formData,
                processData: false,
                contentType: false,
                success : function(response) {
                    // 서버로부터 받은 응답에서 오디오 파일 URL을 올바르게 추출
                    musicUrl = response.file_url; // Flask에서 'file_url' 키로 URL을 반환한다고 가정
                    // audio 태그의 src 속성을 설정하고 음악을 재생
                    var audioPlayer = $('#audioPlayer');
                    audioPlayer.attr('src', musicUrl);
                    audioPlayer[0].play();
                    audioPlayer.show();
                },
                error : function(xhr, status, error) {
                    alert("전송 실패: " + error);
                }
            });
        };
        
        const savedeepdb  = function() {
            $.ajax({
                url : 'ending',
                type : 'POST',
                data : {
                	'nickname' : nickname,
                	'sendtext' : $('#sendtext').val(),
                	'musicUrl' : musicUrl
                },
                success : function(resultchange) {
                	console.log(musicUrl);
					alert("저장성공")                    
                },
                error : function(xhr, status, error) {
                    alert("실패");
                }
            });
        };
        $("#playbtn").on("click", gopython);
        $("#deepdb").on("click", savedeepdb);
    </script>
</body>
</html>