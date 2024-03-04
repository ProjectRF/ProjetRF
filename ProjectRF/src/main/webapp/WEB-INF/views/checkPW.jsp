<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>회원 정보 변경</title>
    <link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
<link rel="stylesheet" href="assets/css/checkPW.css" media="screen">
    <script class="u-script" type="text/javascript" src="assets/js/jquery.js" defer=""></script>
    <meta name="generator" content="Nicepage 6.5.3, nicepage.com">
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "아마도최종사본",
		"logo": "images/logogaro1.png"
}</script>
    <meta name="theme-color" content="#7f93d0">
    <meta property="og:title" content="회원 정보 변경">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
  <body data-path-to-root="./" data-include-products="false" class="u-body u-xl-mode" data-lang="en"><header class="u-border-1 u-border-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-clearfix u-header u-white u-header" id="header" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><div class="u-clearfix u-sheet u-sheet-1">
        <a href="main" class="u-image u-logo u-image-1" data-image-width="533" data-image-height="310">
          <img src="images/logogaro1.png" class="u-logo-image u-logo-image-1">
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
        
        
        <nav class="u-align-center u-font-size-14 u-menu u-menu-dropdown u-nav-spacing-25 u-offcanvas u-menu-1" data-responsive-from="MD" data-position="myHeader">
          <div class="menu-collapse u-custom-font" style="font-size: 1.125rem; letter-spacing: 0px; text-transform: uppercase; font-weight: 700; font-family: Pretendard-SemiBold;">
            <a class="u-button-style u-custom-active-border-color u-custom-border u-custom-border-color u-custom-borders u-custom-hover-border-color u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link" href="#" style="padding: 6px 18px; font-size: calc(1em + 12px);">
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 302 302" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-7b92"></use></svg>
              <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-7b92" x="0px" y="0px" viewBox="0 0 302 302" style="enable-background:new 0 0 302 302;" xml:space="preserve" class="u-svg-content"><g><rect y="36" width="302" height="30"></rect><rect y="236" width="302" height="30"></rect><rect y="136" width="302" height="30"></rect>
</g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-custom-font u-nav u-spacing-86 u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-border-4 u-border-active-custom-color-14 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-custom-color-3 u-text-custom-color-14 u-text-hover-custom-color-3" href="Service" style="padding: 10px 0px;">서비스 소개</a>
</li><li class="u-nav-item"><a class="u-border-4 u-border-active-custom-color-14 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-custom-color-3 u-text-custom-color-14 u-text-hover-custom-color-3" href="record" style="padding: 10px 0px;">음성 녹음</a>
</li><li class="u-nav-item"><a class="u-border-4 u-border-active-custom-color-14 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-custom-color-3 u-text-custom-color-14 u-text-hover-custom-color-3" href="upload" style="padding: 10px 0px;">음성 업로드</a><div class="u-nav-popup"><ul class="u-border-2 u-border-custom-color-3 u-custom-font u-h-spacing-20 u-nav u-unstyled u-v-spacing-15 u-nav-2"><li class="u-nav-item"><a class="u-active-custom-color-3 u-button-style u-hover-custom-color-3 u-nav-link u-white" href="upload">음성 파일 업로드</a>
</li><li class="u-nav-item"><a class="u-active-custom-color-3 u-button-style u-hover-custom-color-3 u-nav-link u-white" href="divide">통화 녹음 업로드</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-border-4 u-border-active-custom-color-14 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-custom-color-3 u-text-custom-color-14 u-text-hover-custom-color-3" href="FAQ" style="padding: 10px 0px;">문의 하기</a>
</li><li class="u-nav-item"><a class="u-border-4 u-border-active-custom-color-14 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-custom-color-3 u-text-custom-color-14 u-text-hover-custom-color-3" href="mypage" style="padding: 10px 0px;">마이 페이지</a><div class="u-nav-popup"><ul class="u-border-2 u-border-custom-color-3 u-custom-font u-h-spacing-20 u-nav u-unstyled u-v-spacing-15 u-nav-3"><li class="u-nav-item"><a class="u-active-custom-color-3 u-button-style u-hover-custom-color-3 u-nav-link u-white" href="mypage">내 보관함</a>
</li><li class="u-nav-item"><a class="u-active-custom-color-3 u-button-style u-hover-custom-color-3 u-nav-link u-white" href="checkPW">내 정보 수정</a>
</li></ul>
</div>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-align-center u-container-style u-custom-color-3 u-inner-container-layout u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-custom-font u-nav u-popupmenu-items u-spacing-30 u-unstyled u-nav-4"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#">서비스 소개</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="record">음성 녹음</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="upload">음성 업로드</a><div class="u-nav-popup"><ul class="u-border-2 u-border-custom-color-3 u-custom-font u-h-spacing-20 u-nav u-unstyled u-v-spacing-15 u-nav-5"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="upload">음성 파일 업로드</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="divdie">통화 녹음 업로드</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="FAQ">문의 하기</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="mypage">마이 페이지</a><div class="u-nav-popup"><ul class="u-border-2 u-border-custom-color-3 u-custom-font u-h-spacing-20 u-nav u-unstyled u-v-spacing-15 u-nav-6"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="mypage">내 보관함</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="checkPW">내 정보 수정</a>
</li></ul>
</div>
</li></ul>
              </div>
            </div>
            <div class="u-custom-color-4 u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div><style class="u-sticky-style" data-style-id="abde">.u-sticky-fixed.u-sticky-abde:before, .u-body.u-sticky-fixed .u-sticky-abde:before {
borders: bottom !important; border-width: 2px !important; border-color: var(--custom-color-3) !important
}</style></header>
    <section class="u-clearfix u-section-1" id="sec-d1af">
      <div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-default u-text-1">내 정보 수정</p>
        <div class="u-form u-form-1">
          <form action="checkok" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 10px;" method="post">
            <div class="u-form-group u-form-name">
              <label for="name-83bf" class="u-custom-font u-label u-text-custom-color-14 u-label-1">비밀번호 입력</label>
              <input type="text" placeholder="비밀번호를 입력해주세요." id="memPw" name="memPw" class="u-custom-font u-input u-input-rectangle u-input-1" required="">
              <input type="hidden" name="memId" id="memId" value="${user.memId}">
            </div>
            <div class="u-align-center u-form-group u-form-submit">
              <a href="#" class="u-btn u-btn-submit u-button-style u-custom-color-14 u-custom-font u-hover-custom-color-15 u-btn-1">입력 </a>
              <input type="submit" value="submit" class="u-form-control-hidden">
            </div>
          </form>
        </div>
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
  
</body></html>