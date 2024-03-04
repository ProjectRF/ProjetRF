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
<link rel="stylesheet" href="assets/css/FAQ.css" media="screen">
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
    <section class="u-align-center u-clearfix u-section-1" id="carousel_e02c">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h4 class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-1">FAQ </h4>
        <div class="u-accordion u-faq u-spacing-20 u-accordion-1">
          <div class="u-accordion-item">
            <a class="active u-accordion-link u-border-1 u-border-active-custom-color-5 u-border-custom-color-5 u-border-no-left u-border-no-right u-border-no-top u-button-style u-custom-font u-text-custom-color-14 u-accordion-link-1" id="link-accordion-6327" aria-controls="accordion-6327" aria-selected="true">
              <span class="u-accordion-link-text">여러 사람의 목소리가 섞인 음성도 변환이 가능한가요? </span><span class="u-accordion-link-icon u-icon u-text-custom-color-3 u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-8021"></use></svg><svg class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-8021" style=""><path d="M8,10.7L1.6,5.3c-0.4-0.4-1-0.4-1.3,0c-0.4,0.4-0.4,0.9,0,1.3l7.2,6.1c0.1,0.1,0.4,0.2,0.6,0.2s0.4-0.1,0.6-0.2l7.1-6
	c0.4-0.4,0.4-0.9,0-1.3c-0.4-0.4-1-0.4-1.3,0L8,10.7z"></path></svg></span>
            </a>
            <div class="u-accordion-active u-accordion-pane u-container-style u-accordion-pane-1" id="accordion-6327" aria-labelledby="link-accordion-6327">
              <div class="u-container-layout u-container-layout-1">
                <div class="fr-view u-clearfix u-rich-text u-text">
                  <p id="isPasted" style="line-height: 1.2;">
                    <span class="u-text-custom-color-14">
                      <span class="u-custom-font" style="font-family: Pretendard-SemiBold;">네, 가능합니다.</span>
                    </span>
                  </p>
                  <p id="isPasted" style="line-height: 1.2;">
                    <span class="u-text-custom-color-14">
                      <span class="u-custom-font" style="font-family: Pretendard-SemiBold;">RE.FIT은 사용자가 2인 이상의 음성이 녹음된 통화 파일이나 다른 음성 파일을 업로드하더라도&nbsp;</span>
                    </span>
                  </p>
                  <p style="line-height: 1.2;">
                    <span class="u-text-custom-color-14">
                      <span class="u-custom-font" style="font-family: Pretendard-SemiBold;">각 화자의 목소리를 구분해 화자별 음성을 개별 파일로 추출해 주기 때문에 대상자의 음성만 녹음되어 있다면 변환이 가능합니다.</span>
                    </span>
                  </p>
                  <p style="line-height: 1.2;">
                    <span class="u-text-custom-color-14">
                      <span class="u-custom-font" style="font-family: Pretendard-SemiBold;">음성 업로드 -&gt; 통화 녹음 업로드에서 이용하시면 됩니다.</span>
                    </span>
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="u-accordion-item">
            <a class="u-accordion-link u-border-1 u-border-active-custom-color-5 u-border-custom-color-5 u-border-no-left u-border-no-right u-border-no-top u-button-style u-custom-font u-text-custom-color-14 u-accordion-link-2" id="link-accordion-4aab" aria-controls="accordion-4aab" aria-selected="false">
              <span class="u-accordion-link-text"> 유언으로 효력을 가질 수 있을까요?</span><span class="u-accordion-link-icon u-icon u-text-custom-color-3 u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-3470"></use></svg><svg class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-3470" style=""><path d="M8,10.7L1.6,5.3c-0.4-0.4-1-0.4-1.3,0c-0.4,0.4-0.4,0.9,0,1.3l7.2,6.1c0.1,0.1,0.4,0.2,0.6,0.2s0.4-0.1,0.6-0.2l7.1-6
	c0.4-0.4,0.4-0.9,0-1.3c-0.4-0.4-1-0.4-1.3,0L8,10.7z"></path></svg></span>
            </a>
            <div class="u-accordion-pane u-container-style u-accordion-pane-2" id="accordion-4aab" aria-labelledby="link-accordion-4aab">
              <div class="u-container-layout u-container-layout-2">
                <div class="fr-view u-clearfix u-rich-text u-text">
                  <p id="isPasted" style="line-height: 1.2;">
                    <span class="u-custom-font" style="font-family: Pretendard-SemiBold;">
                      <span class="u-text-custom-color-14">아니요, 가질 수 없습니다.</span>
                    </span>
                  </p>
                  <p style="line-height: 1.2;">
                    <span class="u-custom-font" style="font-family: Pretendard-SemiBold;">
                      <span class="u-text-custom-color-14">유언은 민법 제1060조 등 관련 조항에서 규정하는 엄격한 요건과 형식을 갖추는 경우에만 법적인 효력을 가지게 됩니다.</span>
                    </span>
                  </p>
                  <p style="line-height: 1.2;">
                    <span class="u-custom-font" style="font-family: Pretendard-SemiBold;">
                      <span class="u-text-custom-color-14">저희 RE.FIT에서 고인이 음성을 남기거나 메시지를 남겼다 하더라도, 유언으로서 법적인 요건을 갖추지 못하여 법적 효력은 없습니다.</span>
                    </span>
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="u-accordion-item">
            <a class="u-accordion-link u-border-1 u-border-active-custom-color-5 u-border-custom-color-5 u-border-no-left u-border-no-right u-border-no-top u-button-style u-custom-font u-text-custom-color-14 u-accordion-link-3" id="link-accordion-eb1f" aria-controls="accordion-eb1f" aria-selected="false">
              <span class="u-accordion-link-text">내 음성을 다른 사람이 악용하면 어쩌죠?</span><span class="u-accordion-link-icon u-icon u-text-custom-color-3 u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-e07d"></use></svg><svg class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-e07d" style=""><path d="M8,10.7L1.6,5.3c-0.4-0.4-1-0.4-1.3,0c-0.4,0.4-0.4,0.9,0,1.3l7.2,6.1c0.1,0.1,0.4,0.2,0.6,0.2s0.4-0.1,0.6-0.2l7.1-6
	c0.4-0.4,0.4-0.9,0-1.3c-0.4-0.4-1-0.4-1.3,0L8,10.7z"></path></svg></span>
            </a>
            <div class="u-accordion-pane u-container-style u-accordion-pane-3" id="accordion-eb1f" aria-labelledby="link-accordion-eb1f">
              <div class="u-container-layout u-container-layout-3">
                <div class="fr-view u-clearfix u-rich-text u-text">
                  <p>
                    <span class="u-text-custom-color-14">
                      <span class="u-custom-font" style="font-family: Pretendard-SemiBold;">음성 안에 저희 RE.FIT의 시그니</span>
                    </span>
                    <span class="u-text-custom-color-14">
                      <span class="u-custom-font" style="font-family: Pretendard-SemiBold;">처</span>
                    </span>
                    <span class="u-text-custom-color-14">
                      <span class="u-custom-font" style="font-family: Pretendard-SemiBold;">&nbsp;사운드가 포함되어있어 악용의 가능성을 차단해두었습니다.</span>
                    </span>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <p class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-5">기타 문의사항은<br>&nbsp;하단에 있는 <span style="font-weight: 700;">이메일 혹은 대표 번호</span>를 통해&nbsp;<br>문의해 주시길 바랍니다.
        </p>
      </div>
    </section>
    
    
    
    <footer class="u-align-center-md u-align-center-sm u-align-center-xs u-clearfix u-custom-color-14 u-footer" id="sec-b163"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-align-center-lg u-align-center-md u-align-center-xl u-custom-font u-text u-text-1">HI-FIVE<br>Email : Teamhi-five@gmail.com<br>대표 번호 : 010​-0000-0000<br>광주광역시 남구 송암로 60 2층&nbsp;스마트 인재개발원 <br>
        </p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="" target="_blank">
        <span>Website Builder Software</span>
      </a>. 
    </section>
    
    
    
  <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
  <script>
  
  <!--------------------------------------------------------------------------------------------->
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
  
  
  
  <!--------------------------------------------------------------------------------------------->
  </script>
  
</body></html>