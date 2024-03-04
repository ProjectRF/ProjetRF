<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
<style>
    table {
        width: 100%;
        border-collapse: collapse;
    }
    table, th, td {
        border: 1px solid black;
    }
    th, td {
        padding: 10px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>
    <h1>My page</h1>
    <b>${user.memNick}</b>님 안녕하세요<br>
    <a href="editprofile">정보수정</a>
    <hr>
    남은 다운로드 횟수: <b>${user.downloadchance}</b>
    <hr>
    저장공간:
    <table>
        <thead>
            <tr>
                <th>받은 텍스트 </th>
                <th>생성 일자</th>
                <th>Audio</th>
                <th>다운로드</th>
            </tr>
        </thead>
        <tbody id="voiceList">
            <!-- AJAX를 통해 받은 데이터가 여기에 출력됩니다. -->
        </tbody>
    </table>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script>
        $(document).ready(function() {
            var nickname = "${user.memId}";
            $.ajax({
                url: 'havevoice',
                type: 'POST',
                data: { 'userid': nickname },
                success: function(response) {
                    var voiceList = $('#voiceList');
                    voiceList.empty(); // 기존 리스트 초기화

                    $.each(response, function(index, voice) {
                        var row = $('<tr></tr>');
                        row.append($('<td></td>').text(voice.course));
                        row.append($('<td></td>').text(voice.indate));

                        // 오디오 태그 생성
                        var audio = $('<audio controls></audio>')
                            .append($('<source>')
                            .attr('src', voice.url)
                            .attr('type', 'audio/wav')); // MIME 타입을 audio/wav로 설정
                        var audioCell = $('<td></td>').append(audio); // 오디오 태그를 포함한 셀 생성
                        row.append(audioCell); // 행에 오디오 태그 셀 추가

                        // URL로 이동하는 버튼 생성
                        if(${user.downloadchance} > 0){                        
                           var urlButton = $('<button>다운</button>').click(function() {
                            window.location.href = voice.url; // 버튼 클릭 시 해당 URL로 이동
                        });
                        var urlButtonCell = $('<td></td>').append(urlButton); // 버튼을 포함한 셀 생성
                        row.append(urlButtonCell); // 행에 버튼 셀 추가

                        voiceList.append(row);}

                    });
                },
                error: function(xhr, status, error) {
                    console.error("Error occurred.");
                }
            });
        });
    </script>
</body>
</html>