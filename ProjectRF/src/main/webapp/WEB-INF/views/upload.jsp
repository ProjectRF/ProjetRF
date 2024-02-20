<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
    프로젝트?명<input type="text" id="Projectid" name="Projectid"><br>
    업로드할 파일<input type="file" id="file" name="sendfile" /><br>
    <button>목소리 등록</button>
    <a href="change">다음 페이지</a>




<!----------------------------구분선-------------------------------->
<!----------------------------구분선-------------------------------->
<!----------------------------구분선-------------------------------->
<!----------------------------구분선-------------------------------->


    <script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script> 
    var nick = "${user.memId}"; // JSP에서 서버 측 변수를 가져와 JavaScript 변수에 할당
    let pyurl = "http://127.0.0.1:5000/upload";
    
    const gopython = function(){
        var formData = new FormData();
        formData.append('file', $('#file')[0].files[0]);
        formData.append('Projectid', $('#Projectid').val());
        formData.append('nick', nick); // 수정된 부분: 서버 측에서 받아온 닉네임 사용
		
        $.ajax({
            url : pyurl,
            type : 'POST',
            data : formData,
            processData: false,
            contentType: false,
            dataType : 'json',
            success: function(response){
                alert("목소리 등록 성공");
                sessionStorage.setItem('Projectid', response.Projectid);
                sessionStorage.setItem('nickname', response.nickname);
            },
            error : function(xhr, status, error){
                alert("전송실패");
            }
        });
    }; 

    $("button").on("click", gopython);
</script>
</body>
</html>