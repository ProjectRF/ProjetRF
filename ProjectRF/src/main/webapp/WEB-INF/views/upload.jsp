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
	    프로젝트명<input type="text" id="project" name="project"><br>
	    업로드할 파일<input type="file" id="file" name="sendfile" /><br>
	    <button type ="button" id="uploadbtn">목소리 등록</button><br>
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
    let pyurl = "http://127.0.0.1:5000/upload";
	
    const gopython = function() {
        var formData = new FormData();
        formData.append('file', $('#file')[0].files[0]);
        formData.append('project', $('#project').val());
        formData.append('nickname', nickname);

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

    $("#uploadbtn").on("click", gopython);
</script>

</body>
</html>
