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
<link rel="stylesheet" href="assets/css/divide.css" media="screen">
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











    <section class="u-align-center u-clearfix u-section-1" id="sec-16a7">
      <form action="chagne" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" style="padding: 10px;" method="post">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h4 class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-default u-text-1">통화 파일 업로드</h4>
        <div class="u-container-style u-custom-color-18 u-group u-radius u-shape-round u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <p class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-default u-text-2">나와 상대방의 목소리가 담긴 통화 음성 파일을 업로드 하여&nbsp;<br>서비스를 이용할 수 있습니다.<br>
              <span style="font-weight: 700;">"mp3, wav 등의 오디오 파일"</span>만 업로드가 가능합니다.<br>업로드 하기 버튼을 눌러 업로드를 마친 후, 원하시는 파일명을 작성해주세요.<br>
            </p>
            <input type="file" id="file" name="file" class="u-btn u-btn-round u-button-style u-custom-color-14 u-custom-font u-custom-item u-hover-custom-color-15 u-radius u-btn-1">
            <div class="u-align-center u-form u-form-1">
                <div class="u-form-group u-form-textarea u-label-none u-form-group-1">
                  <label for="textarea-da5b" class="u-label">Textarea</label>
                  <input rows="4" cols="50" id="project" name="project" class="u-custom-font u-input u-input-rectangle u-input-1" required="required" type="text" maxlength="50" placeholder="저장될 파일명을 작성해주십시오.">
                </div>
                <div class="u-align-center u-form-group u-form-submit u-label-none">
                  <button type="button" id="uploadbtn" class="u-btn u-btn-round u-btn-submit u-button-style u-custom-color-14 u-custom-font u-hover-custom-color-15 u-radius u-btn-2"> &nbsp;시작하기 </a>
                  <input type="submit" value="submit" class="u-form-control-hidden">
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-section-2" id="section2">
      
      
      
      
      
      
      
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-default u-text-1" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="0"> 목소리 선택<span style="font-weight: 700;"></span>
        </h2>
        <div class="u-container-align-center u-container-style u-custom-color-18 u-group u-radius u-shape-round u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h5 class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-2">재생하기 버튼을 통해 두 가지의 목소리를 모두 들어보세요.<br>A와 B, 두 가지의 목소리 중 변환하고자 하는 목소리를 선택 후 선택하기를 눌러주세요.<br>선택은 단 하나만 가능합니다.
            </h5>
          </div>
        </div>
        <div class="u-rotation-parent u-rotation-parent-1"><span class="u-file-icon u-flip-horizontal u-icon u-icon-1"><img src="images/483947.png" alt=""></span>
        </div>
        <p class="u-align-center u-custom-font u-text u-text-default u-text-3">B</p><audio id="second" src=""></audio>
        	
        <p class="u-align-center u-custom-font u-text u-text-default u-text-4">A</p><audio id="first" src=""></audio>
        	
        <div class="u-rotation-parent u-rotation-parent-2"><span class="u-file-icon u-flip-horizontal u-icon u-text-custom-color-19 u-icon-2"><img src="images/483947-7bebaf9f.png" alt=""></span>
        </div>
        <div class="u-rotation-parent u-rotation-parent-3"><span class="u-file-icon u-icon u-text-custom-color-20 u-icon-3"><img src="images/483947-25a61f16.png" alt=""></span>
        </div>
        <a href="#" class="u-btn u-btn-round u-button-style u-custom-color-14 u-custom-font u-custom-item u-hover-custom-color-15 u-radius u-btn-1" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><span class="u-file-icon u-icon u-text-custom-color-18 u-icon-4" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="images/27223-3460c3a5.png" alt=""></span>&nbsp;재생하기
        </a>
        <a href="#" class="u-btn u-btn-round u-button-style u-custom-color-14 u-custom-font u-custom-item u-hover-custom-color-15 u-radius u-btn-2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><span class="u-file-icon u-icon u-text-custom-color-18 u-icon-5" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="images/27223-3460c3a5.png" alt=""></span>&nbsp;재생하기
        </a>
<!-- B --> <button id="choice2" class="u-btn u-btn-round u-button-style u-custom-color-14 u-custom-font u-custom-item u-hover-custom-color-15 u-radius u-btn-3"></span>&nbsp;선택하기
        </button>
<!-- A --> <button id="choice1" class="u-btn u-btn-round u-button-style u-custom-color-14 u-custom-font u-custom-item u-hover-custom-color-15 u-radius u-btn-4"></span>&nbsp;선택하기
        </button>
      </div>
    </section>
    <footer class="u-align-center-md u-align-center-sm u-align-center-xs u-clearfix u-custom-color-14 u-footer" id="sec-b163"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-align-center-lg u-align-center-md u-align-center-xl u-custom-font u-text u-text-1">HI-FIVE<br>Email : Teamhi-five@gmail.com<br>대표 번호 : 010​-0000-0000<br>광주광역시 남구 송암로 60 2층&nbsp;스마트 인재개발원 <br>
        </p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-mockup" target="_blank">
        <span>Website Mockup</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/website-builder" target="_blank">
        <span>Website Builder</span>
      </a>. 
    </section><span style="height: 64px; width: 64px; margin-left: 0px; margin-right: auto; margin-top: 0px; right: 20px; bottom: 20px; padding: 20px; background-image: none;" class="u-back-to-top u-custom-color-3 u-icon u-icon-circle u-opacity u-opacity-85" data-href="#">
        <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 551.13 551.13"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-1d98"></use></svg>
        <svg class="u-svg-content" enable-background="new 0 0 551.13 551.13" viewBox="0 0 551.13 551.13" xmlns="http://www.w3.org/2000/svg" id="svg-1d98"><path d="m275.565 189.451 223.897 223.897h51.668l-275.565-275.565-275.565 275.565h51.668z"></path></svg>
    </span>
    
    
    
    
    
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