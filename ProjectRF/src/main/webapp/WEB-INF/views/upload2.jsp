<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
	#change {
		display : none;
	}

</style>
<body>
    	<form action ="change" method="post">
	    프로젝트명<input type="text" id="project" name="project"><br>
	    업로드할 파일<input type="file" id="file" name="sendfile" /><br>
	    <button type ="button" id="uploadbtn">목소리 등록</button><br>
		</form>
		<hr>
		<h1>${user.memId}</h1>
		<hr>
		<div id = "change">
	<h1>입력할 텍스트</h1>
	<input type="text" id="sendtext" name="sendtext">
	<button id="playbtn">Play Music</button>
	<audio id="audioPlayer" controls hidden></audio> <!-- 이거 안씀 -->
	<button id="deepdb">저장하기</button><br>
	<a href="main">메인으로</a>
	<hr>
	</div>
<!----------------------------구분선-------------------------------->
<!----------------------------구분선-------------------------------->
<!----------------------------구분선-------------------------------->
<!----------------------------구분선-------------------------------->


    <script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script>
    var nickname = "${user.memId}"; // JSP에서 서버 측 변수를 가져와 JavaScript 변수에 할당
    var project = $('#project').val();
    let pyurl = "http://192.168.219.57:5000/upload";
	
    const gopython = function() {
        var formData = new FormData();
        formData.append('file', $('#file')[0].files[0]);
        formData.append('project', $('#project').val());
        formData.append('nickname', nickname);
		console.log(nickname);
        $.ajax({
            url: pyurl,
            type: 'POST',
            data: formData,
            processData: false,
            contentType: false,
            dataType: 'json',
            success: function(response) {
                alert("목소리 등록 성공");
                sessionStorage.setItem('project', response.project);
                sessionStorage.setItem('nickname', response.nickname);
                $("#change").show();
                var result = response.result; 

                // 새로운 AJAX 요청으로 `result` 값을 서버의 `/change` 엔드포인트로 전송
                $.ajax({
                    url: 'change',
                    type: 'POST',
                    data: response, // JSON 형식으로 데이터 변환
                    success: function(result) {
                        console.log("서버로부터의 응답:", response);
                    },
                    error: function(xhr, status, error) {
                        console.error("두 번째 요청 실패:", error);
                    }
                });
            },
            error: function(xhr, status, error) {
                alert("전송실패");
            }
        });
        
    };
						////////기존upload코드//////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////
  		var musicUrl = "";
        let pyurl2 = "http://192.168.219.57:5000/incoding";
		
        const gopython2 = function() {
            var formData = new FormData();
            formData.append('sendtext', $('#sendtext').val());
            formData.append('nickname', nickname);
            formData.append('project', $('#project').val());
            
            $.ajax({
                url : pyurl2,
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
        $("#playbtn").on("click", gopython2);
        $("#deepdb").on("click", savedeepdb);
        $("#uploadbtn").on("click", gopython);
    </script>
    
    
    
</script>

</body>
</html>
