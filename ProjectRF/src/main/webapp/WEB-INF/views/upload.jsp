<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
    프로젝트?명<input type="text" id="floder" name="sendfolder"><br>
    업로드할 파일<input type="file" id="file" name="sendfile" /><br>
	입력할 텍스트<input type="text" id="text" name="sendtext"><br>
    <button>보내기</button>




<!----------------------------구분선-------------------------------->
<!----------------------------구분선-------------------------------->
<!----------------------------구분선-------------------------------->
<!----------------------------구분선-------------------------------->


    <script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script> 
        let pyurl = "http://127.0.0.1:5000/folder"
    
    const gopython = function(){
        var formData = new FormData();
        formData.append('file', $('#file')[0].files[0]);
        formData.append('text', $('#floder').val());
        formData.append('text', $('#text').val());


        $.ajax({
                url : pyurl,
                type : 'POST',
                data : formData,
                processData: false,
                contentType: false,
                success: function(){
                    alert("목소리 등록 성공");
                },
                error : function(xhr, status, error){
                    alert("전송실패")
                }
            })

    }; 

    $("button").on("click", gopython)



    </script>
</body>
</html>