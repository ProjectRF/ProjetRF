<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	입력할 텍스트
	<input type="text" id="sendtext" name="sendtext">
	<button>Play Music</button>
	<audio id="audioPlayer" controls hidden></audio>
	<!-- --------------------------------------------------------------- -->

	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>
	<script>
		let pyurl = "http://127.0.0.1:5000/incoding"
		var Projectid = sessionStorage.getItem('Projectid');
		var nickname = sessionStorage.getItem('nickname');

		const gopython = function() {
			var formData = new FormData();
			formData.append('sendtext', $('#sendtext').val());
			formData.append('nick', nickname);
			formData.append('Projectid', Projectid);

			$.ajax({
				url : pyurl,
				type : 'POST',
				data : formData,
				processData : false,
				contentType : false,
				success : function(response) {
					var musicUrl = response.music_url;
                    // audio 태그의 src 속성을 설정하고 음악을 재생합니다.
                    var audioPlayer = $('#audioPlayer');
                    audioPlayer.attr('src', musicUrl);
                    audioPlayer[0].play();
                    audioPlayer.show();

				},
				error : function(xhr, status, error) {
					alert("전송실패")
				}
			})

		};

		$("button").on("click", gopython)

		var myAudio = new Audio('path/to/your-audio-file.mp3');

		function playAudio() {
			myAudio.play();
		}

		function pauseAudio() {
			myAudio.pause();
		}
	</script>
</body>
</html>