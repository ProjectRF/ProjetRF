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
<link rel="stylesheet" href="assets/css/Service.css" media="screen">
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
    <section class="u-clearfix u-container-align-center-xs u-section-1" id="carousel_ed70">
      <div class="u-clearfix u-sheet u-valign-middle-sm u-valign-middle-xs u-sheet-1">
        <img src="images/mic2.jpg" alt="" class="u-image u-image-round u-radius-18 u-image-1" data-image-width="6000" data-image-height="4000" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="0" data-animation-direction="">
        <div class="u-align-center u-container-align-center-xs u-container-style u-custom-color-18 u-expanded-width-xs u-group u-radius-19 u-shape-round u-group-1" data-animation-name="customAnimationIn" data-animation-duration="1500">
          <div class="u-container-layout u-valign-middle u-container-layout-1">
            <p class="u-custom-font u-text u-text-custom-color-14 u-text-1">
              <span style="font-size: 2.5rem;"> RE.FIT</span>을 통해<br>보고 싶은 가족의 목소리로<br>듣고 싶었던 말을 들으며<br>함께 했던 소중한 날들을 떠올려 보세요.
            </p>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-section-2" id="carousel_44f0">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-default u-text-1" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="0">서비스소​개 </h2>
        <div class="u-align-center u-container-align-center-xs u-container-style u-custom-color-18 u-expanded-width-xs u-group u-opacity u-opacity-65 u-radius-19 u-shape-round u-group-1" data-animation-name="customAnimationIn" data-animation-duration="1500">
          <div class="u-container-layout u-valign-middle u-container-layout-1">
            <p class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-2" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500">보고싶은 가족의 목소리를 듣고 싶거나 <br>내가 떠난 후 가족에게 전하고 싶은 말을 <br>AI 음성 기술로 학습 및 생성하여 음성 메시지로 제작해 드립니다. 
            </p>
          </div>
        </div>
      </div>
    </section>
    <section class="u-align-left u-clearfix u-container-align-center u-section-3" id="carousel_04cf">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-default u-text-1" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="0"> 과정</h2>
        <div class="u-expanded-width u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            <div class="u-align-left u-container-style u-custom-color-18 u-custom-item u-list-item u-radius-19 u-repeater-item u-shape-round u-list-item-1" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500">
              <div class="u-container-layout u-similar-container u-container-layout-1"><span class="u-align-center u-custom-color-5 u-file-icon u-icon u-icon-circle u-text-custom-color-16 u-icon-1" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="750"><img src="images/6707113-298dddfc.png" alt=""></span>
                <p class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-2"> 음성데이터 수집<br>
                </p>
                <p class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-3"> 목소리 재현을 위해<br>약 10분 길이의&nbsp;<br>녹음 또는 파일이 필요합니다. 
                </p>
              </div>
            </div>
            <div class="u-align-left u-container-style u-custom-color-18 u-custom-item u-list-item u-radius-19 u-repeater-item u-shape-round u-video-cover u-list-item-2" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500">
              <div class="u-container-layout u-similar-container u-container-layout-2"><span class="u-align-center u-custom-color-5 u-file-icon u-icon u-icon-circle u-text-custom-color-16 u-icon-2" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="750"><img src="images/10176670-3862b869.png" alt=""></span>
                <p class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-4"> AI 학습 및 생성</p>
                <p class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-5"> 음성데이터 속 말투, 톤, 속도 등을<br>AI가 학습하고 <br>학습된 데이터를 기반으로<br>재현할 AI 음성 모델을 생성합니다. 
                </p>
              </div>
            </div>
            <div class="u-align-left u-container-style u-custom-color-18 u-custom-item u-list-item u-radius-19 u-repeater-item u-shape-round u-video-cover u-list-item-3" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500">
              <div class="u-container-layout u-similar-container u-container-layout-3"><span class="u-align-center u-custom-color-5 u-file-icon u-icon u-icon-circle u-text-custom-color-16 u-icon-3" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="750"><img src="images/2767144-b4135abc.png" alt=""></span>
                <p class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-6"> 저장 및 다운로드</p>
                <p class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-7"> AI 음성 모델의 목소리를 저장하고 <br>해당 목소리를 통해 주어진 문장을 생성하여<br>다운로드 할 수 있습니다. 
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-section-4" id="sec-d7d0">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-default u-text-1" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="0">주의사항 </h2>
        <div class="u-align-left u-container-align-center-xs u-container-style u-custom-color-18 u-expanded-width-xs u-group u-opacity u-opacity-65 u-radius-19 u-shape-round u-group-1" data-animation-name="customAnimationIn" data-animation-duration="1500">
          <div class="u-container-layout u-valign-top u-container-layout-1">
            <p class="u-custom-font u-text u-text-custom-color-14 u-text-2" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500"> 1. 개인 생체 데이터의 보안 및 안전상의 이유로 본인 및 직계가족만 이용 가능합니다. <br> 2. 보이스피싱 및 범죄에 악용될 수 있는 금전, 금융 관련 내용은 이용이 불가합니다. <br> 3. 하이파이브는 복원된 결과물 자체에 대한 책임은 있으나,<br>&nbsp; &nbsp; &nbsp;결과물의 사용/2차 가공 등에 대한 법적 책임은 지지 않습니다. 
            </p>
          </div>
        </div>
        <a href="https://nicepage.com/k/university-website-templates" class="u-border-none u-btn u-btn-round u-button-style u-custom-color-14 u-custom-font u-hover-custom-color-15 u-radius u-btn-1">시작하기</a>
      </div>
    </section>
    
    
    
    <footer class="u-align-center-md u-align-center-sm u-align-center-xs u-clearfix u-custom-color-14 u-footer" id="sec-b163"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-align-center-lg u-align-center-md u-align-center-xl u-custom-font u-text u-text-1">HI-FIVE<br>Email : Teamhi-five@gmail.com<br>대표 번호 : 010​-0000-0000<br>광주광역시 남구 송암로 60 2층&nbsp;스마트 인재개발원 <br>
        </p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-design" target="_blank">
        <span>Best Website Design</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.cloud" target="_blank">
        <span>Website Builder</span>
      </a>. 
    </section>
  
  <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
  <script>
  
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