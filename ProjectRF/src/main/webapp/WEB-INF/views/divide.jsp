<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
		
    	<form action ="change" method="post">
    	<h1>화자구분 페이지입니다.</h1>
    	<h2>${user.memId}</h2>
    	
	    프로젝트명<input type="text" id="project" name="project"><br>
	    업로드할 파일<input type="file" id="file" name="file" /><br>
	    <button type ="button" id="uploadbtn">화자 구분</button><br><hr>
	    <audio id ="first" src = ""></audio><button id = "choice1" display = "none"></button><br>
	    <audio id ="second" src = ""></audio><button id = "choice2" display = "none"></button><br>
	    
		</form>
		<a href="changevoice">이동</a>

<!----------------------------구분선-------------------------------->
<!----------------------------구분선-------------------------------->
<!----------------------------구분선-------------------------------->
<!----------------------------구분선-------------------------------->


    <script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script>
    var nickname = "${user.memId}"; // JSP에서 서버 측 변수를 가져와 JavaScript 변수에 할당
    let pyurl = "http://192.168.219.57:5000/divide";
	
    const gopython = function() {
        var formData = new FormData();
        formData.append('file', $('#file')[0].files[0]);
        me
        formData.append('nickname', nickname);

        $.ajax({
            url: pyurl,
            type: 'POST',
            data: formData,
            processData: false,
            contentType: false,
            dataType: 'json',
            success: function(response) {
                alert("분리 성공");
                console.log(response.firsturl);
                var firstAudio = document.getElementById("first");
                firstAudio.src = response.firsturl;
                firstAudio.setAttribute("controls", "controls");
                
                var secondAudio = document.getElementById("second");
                secondAudio.src = response.secondurl;
                secondAudio.setAttribute("controls", "controls");
                
                
                // ajax로 결과값 파일 경로를 두개 다 가져와서 audio 태그에 둘다 넣고 실행시킬 수 있게 한다.
                // 둘중 하나를 고르면 그 파일만 등록하는 라우터를 하나 만들어서 단순등록만 시킨다? 프로젝트 명을 받는다?
                		
                		
                
            },
            error: function(xhr, status, error) {
                alert("전송실패");
            }
        });
    };

    $("#uploadbtn").on("click", gopython);
</script>

</body>
</html>
