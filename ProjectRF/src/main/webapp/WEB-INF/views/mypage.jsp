<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords"
	content="Sign up and get fresh loot for popular games plus more, Our Story, Innovation in the gameindustry, Sign up and get fresh loot for popular games plus more, Game Gadgets, Download games and play free games every month.">
<meta name="description" content="">
<title>main</title>
<link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
<link rel="stylesheet" href="assets/css/mypage.css" media="screen">
<script class="u-script" type="text/javascript" src="assets/js/jquery.js"
	defer=""></script>
<script class="u-script" type="text/javascript"
	src="assets/js/nicepage.js" defer=""></script>
<meta name="generator" content="Nicepage 6.5.3, nicepage.com">


<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">



<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "아마도최종사본",
		"logo": "images/logogaro1.png"
}</script>
<meta name="theme-color" content="#7f93d0">
<meta property="og:title" content="main">
<meta property="og:description" content="">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="./" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">
	<header
		class="u-border-1 u-border-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-clearfix u-header u-white u-header"
		id="header" data-animation-name="" data-animation-duration="0"
		data-animation-delay="0" data-animation-direction="">
		<div class="u-clearfix u-sheet u-sheet-1">
			<a href="main"
				class="u-image u-logo u-image-1" data-image-width="533"
				data-image-height="310"> <img src="images/logogaro1.png"
				class="u-logo-image u-logo-image-1">
			</a>
			
			
			
			<c:if test="${empty user}">
			<a href="login"
				class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-default u-text-1">
				<span class="u-file-icon u-icon u-text-custom-color-14 u-icon-1"><img
					src="images/2990300-0595acad.png" alt=""></span>&nbsp;<br>로그​인
			</a>
			<a href="join"
				class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-default u-text-2">
				<span class="u-file-icon u-icon u-text-custom-color-14 u-icon-2"><img
					src="images/2342329-d2e71f9a.png" alt=""></span>&nbsp;<br>회원​가입
			</a>
			</c:if>
			<c:if test="${!empty user}">
			<a href="logout"
				class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-default u-text-1">
				<span class="u-file-icon u-icon u-text-custom-color-14 u-icon-1"><img
					src="images/2990300-0595acad.png" alt=""></span>&nbsp;<br>로그아웃
					<a href="join"
				class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-default u-text-2">
				<span class="u-file-icon u-icon u-text-custom-color-14 u-icon-2"><img
					src="images/2342329-d2e71f9a.png" alt="" style="display: none;" ></span>&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;
			</a>
			
			</c:if>
			
			
			
			<nav
				class="u-align-center u-font-size-14 u-menu u-menu-dropdown u-nav-spacing-25 u-offcanvas u-menu-1"
				data-responsive-from="MD" data-position="myHeader">
				<div class="menu-collapse u-custom-font"
					style="font-size: 1.125rem; letter-spacing: 0px; text-transform: uppercase; font-weight: 700; font-family: Pretendard-SemiBold;">
					<a
						class="u-button-style u-custom-active-border-color u-custom-border u-custom-border-color u-custom-borders u-custom-hover-border-color u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link"
						href="#" style="padding: 6px 18px; font-size: calc(1em + 12px);">
						<svg class="u-svg-link" preserveAspectRatio="xMidYMin slice"
							viewBox="0 0 302 302" style="">
							<use xmlns:xlink="http://www.w3.org/1999/xlink"
								xlink:href="#svg-7b92"></use></svg> <svg
							xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
							id="svg-7b92" x="0px" y="0px" viewBox="0 0 302 302"
							style="enable-background: new 0 0 302 302;" xml:space="preserve"
							class="u-svg-content">
							<g>
							<rect y="36" width="302" height="30"></rect>
							<rect y="236" width="302" height="30"></rect>
							<rect y="136" width="302" height="30"></rect>
</g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g></svg>
					</a>
				</div>
				<div class="u-custom-menu u-nav-container">
					<ul class="u-custom-font u-nav u-spacing-86 u-unstyled u-nav-1">
						<li class="u-nav-item"><a
							class="u-border-4 u-border-active-custom-color-14 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-custom-color-3 u-text-custom-color-14 u-text-hover-custom-color-3"
							href="Service" style="padding: 10px 0px;">서비스 소개</a></li>
						<li class="u-nav-item">
						<a id="recordlink"
							class="u-border-4 u-border-active-custom-color-14 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-custom-color-3 u-text-custom-color-14 u-text-hover-custom-color-3"
							href="#" style="padding: 10px 0px;">음성 녹음</a></li>
						<li class="u-nav-item">
						<a id="uploadlink"
							class="u-border-4 u-border-active-custom-color-14 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-custom-color-3 u-text-custom-color-14 u-text-hover-custom-color-3"
							href="#" style="padding: 10px 0px;">음성 업로드</a>
						<div class="u-nav-popup">
								<ul
									class="u-border-2 u-border-custom-color-3 u-custom-font u-h-spacing-20 u-nav u-unstyled u-v-spacing-15 u-nav-2">
									<li class="u-nav-item">
									<a id="uploadlink2"
										class="u-active-custom-color-3 u-button-style u-hover-custom-color-3 u-nav-link u-white"
										href="#">음성 파일 업로드</a></li>
									<li class="u-nav-item">
									<a id="dividelink"
										class="u-active-custom-color-3 u-button-style u-hover-custom-color-3 u-nav-link u-white"
										href="#">통화 녹음 업로드</a></li>
								</ul>
							</div></li>
						<li class="u-nav-item">
						<a id="FAQlink"
							class="u-border-4 u-border-active-custom-color-14 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-custom-color-3 u-text-custom-color-14 u-text-hover-custom-color-3"
							href="FAQ" style="padding: 10px 0px;">문의 하기</a></li>
						<li class="u-nav-item">
						
						
						<a
    				id="mypagelink"
    				class="u-border-4 u-border-active-custom-color-14 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-custom-color-3 u-text-custom-color-14 u-text-hover-custom-color-3"
    				href="#" style="padding: 10px 0px;">마이 페이지</a>
							
							
						<div class="u-nav-popup">
								<ul
									class="u-border-2 u-border-custom-color-3 u-custom-font u-h-spacing-20 u-nav u-unstyled u-v-spacing-15 u-nav-3">
									<li class="u-nav-item">
									<a id="mypagelink2"
										class="u-active-custom-color-3 u-button-style u-hover-custom-color-3 u-nav-link u-white"
										href="#">내 보관함</a></li>
									<li class="u-nav-item">
									<a id = "checkPWlinkt"
										class="u-active-custom-color-3 u-button-style u-hover-custom-color-3 u-nav-link u-white"
										href="#">내 정보 수정</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
				<div class="u-custom-menu u-nav-container-collapse">
					<div
						class="u-align-center u-container-style u-custom-color-3 u-inner-container-layout u-sidenav">
						<div class="u-inner-container-layout u-sidenav-overflow">
							<div class="u-menu-close"></div>
							<ul
								class="u-align-center u-custom-font u-nav u-popupmenu-items u-spacing-30 u-unstyled u-nav-4">
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="Service">서비스 소개</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="#">음성 녹음</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="#">음성 업로드</a>
								<div class="u-nav-popup">
										<ul
											class="u-border-2 u-border-custom-color-3 u-custom-font u-h-spacing-20 u-nav u-unstyled u-v-spacing-15 u-nav-5">
											<li class="u-nav-item"><a
												class="u-button-style u-nav-link" href="#">음성 파일 업로드</a></li>
											<li class="u-nav-item"><a
												class="u-button-style u-nav-link" href="#">통화 녹음 업로드</a></li>
										</ul>
									</div></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="#">문의 하기</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="#">마이 페이지</a>
								<div class="u-nav-popup">
										<ul
											class="u-border-2 u-border-custom-color-3 u-custom-font u-h-spacing-20 u-nav u-unstyled u-v-spacing-15 u-nav-6">
											<li class="u-nav-item"><a
												class="u-button-style u-nav-link" href="#">내 보관함</a></li>
											<li class="u-nav-item"><a
												class="u-button-style u-nav-link" href="#">내 정보 수정</a></li>
										</ul>
									</div></li>
							</ul>
						</div>
					</div>
					<div class="u-custom-color-4 u-menu-overlay u-opacity u-opacity-70"></div>
				</div>
			</nav>
		</div>
		<style class="u-sticky-style" data-style-id="abde">
.u-sticky-fixed.u-sticky-abde:before, .u-body.u-sticky-fixed .u-sticky-abde:before
	{
	borders: bottom !important;
	border-width: 2px !important;
	border-color: var(- -custom-color-3) !important
}
</style>
	</header>
    <section class="u-clearfix u-section-1" id="sec-b026">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="data-layout-selected u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-custom-color-18 u-layout-cell u-size-30 u-layout-cell-1">
                <div class="u-container-layout u-valign-middle u-container-layout-1">
                  <p class="u-custom-font u-text u-text-custom-color-14 u-text-default u-text-1">${user.memNick } </p>
                  <p class="u-custom-font u-text u-text-custom-color-14 u-text-default u-text-2">님 환영합<span style="font-size: 1.125rem;"></span>니다 
                  </p>
                </div>
              </div>
              <div class="u-container-style u-custom-color-18 u-layout-cell u-shape-rectangle u-size-30 u-layout-cell-2">
                <div class="u-border-1 u-border-custom-color-15 u-border-no-bottom u-border-no-right u-border-no-top u-container-layout u-container-layout-2">
                  <p class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-3">잔여 다운로드 횟수&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                  <p class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-4">${user.downloadchance } </p>
                  <p class="u-align-right u-custom-font u-text u-text-custom-color-14 u-text-5">회 </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="skrollable u-align-center u-clearfix u-custom-color-2 u-lightbox u-parallax u-shading u-section-2" id="sec-78e0">
      <div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-align-left u-custom-font u-text u-text-custom-color-14 u-text-1">녹음 음성 보관함</p>

        <table style="font-family: 'Pretendard-SemiBold';">
          <thead>
            <tr style="background-color: #906756; color: white;">
              <th style="text-align: center;" width="800" height="50"><b style="font-size: 20px">받은 텍스트</b></th>
              <th style="text-align: center;" width="250" height="50"><b style="font-size: 20px">생성일자</b></th>
              <th style="text-align: center;" width="200" height="50"><b style="font-size: 20px">재생하기</b></th>
              <th style="text-align: center;" width="200" height="50"><b style="font-size: 20px">다운로드</b></th>
            </tr>
              </thead>
              <tbody id="voiceList">
            <tr style="background-color: #f8f3f1; color: #5a4d45; font-size: 17px">
              <td>5</td>
              <td>text5</td>
              <td>2024-03-07</td>
              <td><a href="#" style="color: #5a4d45;">재생하기</a></td>
              <td><a href="#" style="color: #5a4d45;">다운로드</a></td>
            </tr>
            <tr style="background-color: #f8f3f1; color: #5a4d45; font-size: 17px">
              <td>4</td>
              <td>text4</td>
              <td>2024-03-07</td>
              <td><a href="#" style="color: #5a4d45;">재생하기</a></td>
              <td><a href="#" style="color: #5a4d45;">다운로드</a></td>
            </tr>
            <tr style="background-color: #f8f3f1; color: #5a4d45; font-size: 17px">
              <td>3</td>
              <td>text3</td>
              <td>2024-03-07</td>
              <td><a href="#" style="color: #5a4d45;">재생하기</a></td>
              <td><a href="#" style="color: #5a4d45;">다운로드</a></td>
            </tr>
            <tr style="background-color: #f8f3f1; color: #5a4d45; font-size: 17px">
              <td>2</td>
              <td>text2</td>
              <td>2024-03-07</td>
              <td><a href="#" style="color: #5a4d45;">재생하기</a></td>
              <td><a href="#" style="color: #5a4d45;">다운로드</a></td>
            </tr>
            <tr style="background-color: #f8f3f1; color: #5a4d45; font-size: 17px">
              <td>1</td>
              <td>text1</td>
              <td>2024-03-07</td>
              <td><a href="#" style="color: #5a4d45;">재생하기</a></td>
              <td><a href="#" style="color: #5a4d45;">다운로드</a></td>
            </tr>
          
          </tbody>
        </table>
        
      </div>
    </section>
    
    
    
    <footer class="u-align-center-md u-align-center-sm u-align-center-xs u-clearfix u-custom-color-14 u-footer" id="sec-b163"><div class="u-clearfix u-sheet u-sheet-1">
        <img class="u-image u-image-contain u-image-default u-image-1" src="images/lorogaro.png" alt="" data-image-width="636" data-image-height="393">
        <p class="u-align-center-lg u-align-center-md u-align-center-xl u-custom-font u-text u-text-1">HI-FIVE<br>Email : Teamhi-five@gmail.com<br>대표 번호 : 010​-0000-0000<br>광주광역시 남구 송암로 60 2층&nbsp;스마트 인재개발원 <br>
        </p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/html5-template" target="_blank">
        <span>Free HTML5 Template</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.cc" target="_blank">
        <span>Website Builder</span>
      </a>. 
    </section>
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
                   var row = $('<tr style="background-color: #f8f3f1; color: #5a4d45; font-size: 17px"></tr>');
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
                      var urlButton = $('<button id = "down" name = "down">다운</button>').click(function() {
                       window.location.href = voice.url; // 버튼 클릭 시 해당 URL로 이동
                   });
                   var urlButtonCell = $('<td></td>').append(urlButton); // 버튼을 포함한 셀 생성
                   row.append(urlButtonCell); // 행에 버튼 셀 추가

                   voiceList.append(row);
                   
                   // 다운로드 횟수 줄이는 요청 보내기?
                   $.ajax({
                	// ajax요청에 값을 담아서 requestparam으로 받아서 아이디만 받아서 비교해서 ending 메소드랑 비슷하게
                	   
                   })
                   
                   
                   
                   }
                   else{
                	   var urlButton = $('<button id = "down" name = "down">다운</button>').click(function() {
                           alert("다운로드 기회가 없습니다"); 
                       });
                       var urlButtonCell = $('<td></td>').append(urlButton); 
                       row.append(urlButtonCell); 

                       voiceList.append(row);
                   }

               });
           },
           error: function(xhr, status, error) {
               console.error("Error occurred.");
           }
       });
   });
   
   
   function needid(elementId, pagePath) {
	    document.getElementById(elementId).addEventListener('click', function() {
	        var user = '${user}';
	        if(user) {
	            window.location.href = pagePath;
	        } else {
	            alert('로그인해주세요');
	        }
	    });
	}
 
 needid('recordlink', 'record');
 needid('uploadlink','upload');
 needid('uploadlink2','upload');
 needid('dividelink','divide');
 needid('mypagelink','mypage');
 needid('mypagelink2','mypage');
 needid('checkPWlinkt','checkPW');
 
   
   
   </script>
   
   
</body></html>