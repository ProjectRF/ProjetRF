<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
<style>
    table {
        width: 100%; /* 테이블의 너비를 페이지 전체 너비로 설정 */
        border-collapse: collapse; /* 테이블 사이의 간격 없애기 */
    }
    table, th, td {
        border: 1px solid black; /* 테이블과 셀에 테두리 설정 */
    }
    th, td {
        padding: 10px; /* 셀 내용과 테두리 사이의 여백 설정 */
        text-align: left; /* 셀 내용 왼쪽 정렬 */
    }
    th {
        background-color: #f2f2f2; /* 테이블 헤더 배경색 설정 */
    }
</style>
</head>
<body>
    <h1>My page</h1>
    <b>${user.memNick}</b>님 안녕하세요
    <hr>
    남은 다운로드 횟수: <b>${user.downloadchance}</b>
    <hr>
    저장공간:
    <table>
        <thead>
            <tr>
                <th>Course</th>
                <th>Indate</th>
                <th>URL</th>
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
                        row.append($('<td></td>').text(voice.url));
                        voiceList.append(row);
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
