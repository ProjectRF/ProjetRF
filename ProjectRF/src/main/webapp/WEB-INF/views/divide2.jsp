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
        <button type="button" id="uploadbtn">화자 구분</button><br><hr>
    </form>
    	<audio id="first" src=""></audio><button id="choice1">선택하기</button><br>
        <audio id="second" src=""></audio><button id="choice2">선택하기</button><br>
    <a href="upload">업로드 페이지로 이동</a>

    <!-- 구분선 생략 -->

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script>
        var nickname = "${user.memId}";
        var pyurl = "http://192.168.219.57:5000/divide";
        
        const gopython = function() {
            var formData = new FormData();
            formData.append('file', $('#file')[0].files[0]);
            formData.append('nickname', nickname);

            $.ajax({
                url: pyurl,
                type: 'POST',
                data: formData,
                processData: false,
                contentType: false,
                dataType: 'json',
                success: function(response) {
                    alert("구분 성공");
                    var firstAudio = document.getElementById("first");
                    firstAudio.src = response.firsturl;
                    firstAudio.setAttribute("controls", "controls");

                    var secondAudio = document.getElementById("second");
                    secondAudio.src = response.secondurl;
                    secondAudio.setAttribute("controls", "controls");
                    
                    // 버튼에 URL 할당
                    document.getElementById("choice1").onclick = function() { window.location.href = response.firsturl; };
                    document.getElementById("choice2").onclick = function() { window.location.href = response.secondurl; };
                    
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
