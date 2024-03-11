<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>음성 녹음</title>
    <link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
<link rel="stylesheet" href="assets/css/record.css" media="screen">
    <script class="u-script" type="text/javascript" src="assets/js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="assets/js/nicepage.js" defer=""></script>
    
    <meta name="generator" content="Nicepage 6.5.3, nicepage.com">
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    
    
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "아마도최종사본",
		"logo": "images/logogaro1.png"
}</script>
    <meta name="theme-color" content="#7f93d0">
    <meta property="og:title" content="음성 녹음">
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
</li><li class="u-nav-item"><a class="u-border-4 u-border-active-custom-color-14 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-custom-color-3 u-text-custom-color-14 u-text-hover-custom-color-3" href="#" style="padding: 10px 0px;">문의 하기</a>
</li><li class="u-nav-item"><a class="u-border-4 u-border-active-custom-color-14 u-border-hover-custom-color-3 u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-custom-color-3 u-text-custom-color-14 u-text-hover-custom-color-3" href="mypage" style="padding: 10px 0px;">마이 페이지</a><div class="u-nav-popup"><ul class="u-border-2 u-border-custom-color-3 u-custom-font u-h-spacing-20 u-nav u-unstyled u-v-spacing-15 u-nav-3"><li class="u-nav-item"><a class="u-active-custom-color-3 u-button-style u-hover-custom-color-3 u-nav-link u-white" href="#">내 보관함</a>
</li><li class="u-nav-item"><a class="u-active-custom-color-3 u-button-style u-hover-custom-color-3 u-nav-link u-white" href="#">내 정보 수정</a>
</li></ul>
</div>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-align-center u-container-style u-custom-color-3 u-inner-container-layout u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-custom-font u-nav u-popupmenu-items u-spacing-30 u-unstyled u-nav-4"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#">서비스 소개</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#">음성 녹음</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#">음성 업로드</a><div class="u-nav-popup"><ul class="u-border-2 u-border-custom-color-3 u-custom-font u-h-spacing-20 u-nav u-unstyled u-v-spacing-15 u-nav-5"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#">음성 파일 업로드</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#">통화 녹음 업로드</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#">문의 하기</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#">마이 페이지</a><div class="u-nav-popup"><ul class="u-border-2 u-border-custom-color-3 u-custom-font u-h-spacing-20 u-nav u-unstyled u-v-spacing-15 u-nav-6"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#">내 보관함</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#">내 정보 수정</a>
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
    <section class="u-align-center u-clearfix u-custom-color-2 u-section-1" id="sec-6a05">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h4 class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-1">음성 녹음하기</h4>
        <div class="u-container-style u-custom-color-16 u-group u-radius u-shape-round u-group-1">
          <div class="u-container-layout u-valign-top u-container-layout-1">
            <h5 class="u-custom-font u-text u-text-custom-color-14 u-text-2"> 버튼 안내<br>
              <br>
            </h5>
            <p class="u-custom-font u-text u-text-custom-color-14 u-text-3"> - 녹음 : 버튼을 눌러 녹음을 진행합니다.&nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;버튼을 다시 누르면 다시 녹음을 진행할 수 있습니다.<br>- 정지 : 버튼을 누르면 녹음이 중단됩니다.<br>- 재생 : 버튼을 누르면 녹음된 음성이 재생됩니다.<br>- 다음 : 화면의 문장에 대해 녹음이 완료되었다면 다음 문장으로 넘어갑니다.<br>- 변환 : 녹음된 음성을 가지고 텍스트 변환 페이지로 넘어갑니다.&nbsp;&nbsp;
            </p>
            <div class="u-align-center u-form u-form-1">
              <form action="#" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 10px;" method="post">
                <p class="u-align-center u-custom-font u-form-group u-form-text u-text u-text-custom-color-14 u-text-4">음성 녹음 전 원하시는 파일명을 작성해주세요. </p>
                <div class="u-form-group u-form-textarea u-label-none u-form-group-2">
                  <label for="textarea-da5b" class="u-label">Textarea</label>
                  <input rows="4" cols="50" id="project" name="project" class="u-custom-font u-input u-input-rectangle u-input-1" required="required" type="text" maxlength="50" placeholder="저장될 파일명을 작성해주십시오.">
                </div>
                <div class="u-align-center u-form-group u-form-submit u-label-none">
                  <button id="startButton" class="u-btn u-btn-round u-btn-submit u-button-style u-custom-color-14 u-custom-font u-hover-custom-color-15 u-radius u-btn-1" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""> &nbsp;시작하기 </button>
             
                </div>
                
                <input type="hidden" value="" name="recaptchaResponse">
              </form>
            </div>
          </div>
        </div>
        <img class="u-image u-image-contain u-image-default u-preserve-proportions u-image-1" src="images/4827887__3_-removebg-preview.png" alt="" data-image-width="500" data-image-height="500">
      </div>
    </section>
    <section class="u-clearfix u-section-2" id="section2" style="display:none;">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <button id="nextButton" class="u-btn u-btn-round u-button-style u-custom-color-14 u-custom-font u-custom-item u-hover-custom-color-15 u-radius u-btn-1" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">▶▶다음 </button>
      </div>
    </section>
    <section class="u-clearfix u-section-3" id="section3" style="display:none;">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-container-style u-custom-color-16 u-group u-radius u-shape-round u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <p id="recordTitle" class="u-align-center u-custom-font u-text u-text-1">준비가 완료되시면 <br> 우측 상단의 다음을 눌러주시고 <br> 나오는 텍스트에 맞춰 녹음을 진행해주세요<br>
            </p>
          </div>
        </div>
        <button id="stopButton" class="u-btn u-btn-round u-button-style u-custom-color-14 u-custom-font u-custom-item u-hover-custom-color-15 u-radius u-btn-1" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><span class="u-file-icon u-icon u-text-custom-color-2 u-icon-1" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="images/6529049-91f95467.png" alt=""></span>&nbsp;정지
        </button>
        <button id="recordButton" class="u-btn u-btn-round u-button-style u-custom-color-14 u-custom-font u-custom-item u-hover-custom-color-15 u-radius u-btn-2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><span class="u-file-icon u-icon u-text-custom-color-2 u-icon-2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="images/149669-a3ae0ec9.png" alt=""></span>&nbsp;녹음
        </button>
        <button id="playButton" class="u-btn u-btn-round u-button-style u-custom-color-14 u-custom-font u-custom-item u-hover-custom-color-15 u-radius u-btn-3" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><span class="u-icon u-icon-3" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><svg class="u-svg-content" viewBox="0 0 60 60" x="0px" y="0px" style="width: 1em; height: 1em;"><path d="M30,0C13.458,0,0,13.458,0,30s13.458,30,30,30s30-13.458,30-30S46.542,0,30,0z M45.563,30.826l-22,15
	C23.394,45.941,23.197,46,23,46c-0.16,0-0.321-0.038-0.467-0.116C22.205,45.711,22,45.371,22,45V15c0-0.371,0.205-0.711,0.533-0.884
	c0.328-0.174,0.724-0.15,1.031,0.058l22,15C45.836,29.36,46,29.669,46,30S45.836,30.64,45.563,30.826z"></path></svg></span>&nbsp;재생
        </button>
       <button id="uploadButton" class="u-btn u-btn-round u-button-style u-custom-color-14 u-custom-font u-custom-item u-hover-custom-color-15 u-radius u-btn-4" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="" display style="display: none;"><span class="u-file-icon u-icon u-text-custom-color-2 u-icon-4" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="images/1372840-a18b8393.png" alt=""></span>&nbsp;변환하기
        </button>
        <audio id="audioPlayer" style="display: none;"></audio>
      </div>
    </section>
    <section class="u-clearfix u-section-4" id="section4" style="display:none;">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <h4 class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-default u-text-1"> 음성 변환 </h4>
        <p class="u-align-center u-custom-font u-text u-text-custom-color-14 u-text-2">텍스트를 입력하시고 변환하기를 눌러주세요<br>녹음된 목소리가 입력하신 텍스트의 음성으로 변환됩니다
        </p>
        <div class="u-container-style u-custom-color-16 u-expanded-width u-group u-radius u-shape-round u-group-1" data-animation-out="0">
          <div class="u-container-layout u-container-layout-1">
            <div class="u-form u-form-1">
              <form action="#" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 10px;" method="post">
                <div class="u-form-group u-form-textarea u-label-none u-form-group-1">
                  <label for="textarea-da5b" class="u-label">Textarea</label>
                  <input rows="4" cols="50" id="sendtext" name="sendtext" class="u-input u-input-rectangle" required="required" type="text" autofocus="autofocus">
                </div>
                <div class="u-align-center u-form-group u-form-submit u-label-none">
 <!-- 텍스트입력 변환 --> <button id="playbtn" class="u-btn u-btn-round u-btn-submit u-button-style u-custom-color-14 u-custom-font u-hover-custom-color-15 u-radius u-btn-1" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><span class="u-file-icon u-icon u-text-custom-color-11 u-icon-1"><img src="images/2782895-33d20188.png" alt=""></span>&nbsp; 변환하기 
                  </button>
                  <input type="submit" value="submit" class="u-form-control-hidden">
                </div>
                <input type="hidden" value="" name="recaptchaResponse">
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-section-5" id="section5" style="display:none;">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h4 class="u-custom-font u-text u-text-custom-color-14 u-text-default u-text-1">음성 확인</h4>
        <div class="u-container-style u-custom-color-16 u-expanded-width u-group u-radius u-shape-round u-group-1">
          <div class="u-container-layout u-container-layout-1">
          <audio id="audioPlayer2" style="display: none;"></audio>
            <button id="deepdb" name ="deepdb" class="u-btn u-btn-round u-button-style u-custom-color-14 u-custom-font u-custom-item u-hover-custom-color-15 u-radius u-btn-1" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><span class="u-file-icon u-icon u-text-custom-color-16 u-icon-1" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="images/724933-270cefb6.png" alt=""></span>&nbsp;보관함에 저장
            </button>
            <a href="record" class="u-btn u-btn-round u-button-style u-custom-color-14 u-custom-font u-custom-item u-hover-custom-color-15 u-radius u-btn-2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""> 다시 변환하기</a>
            <button id="lastplayButton" class="u-btn u-btn-round u-button-style u-custom-color-14 u-custom-font u-custom-item u-hover-custom-color-15 u-radius u-btn-3" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><span class="u-file-icon u-icon u-text-custom-color-18 u-icon-2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><img src="images/27223-3460c3a5.png" alt=""></span>&nbsp;재생하기
            </button>
          </div>
        </div>
      </div>
    </section>
    
    
    
    <footer class="u-align-center-md u-align-center-sm u-align-center-xs u-clearfix u-custom-color-14 u-footer" id="sec-b163"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-align-center-lg u-align-center-md u-align-center-xl u-custom-font u-text u-text-1">HI-FIVE<br>Email : Teamhi-five@gmail.com<br>대표 번호 : 010​-0000-0000<br>광주광역시 남구 송암로 60 2층&nbsp;스마트 인재개발원 <br>
        </p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/html-templates" target="_blank">
        <span>HTML Template</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/html-website-builder" target="_blank">
        <span>HTML Designer</span>
      </a>. 
    </section>
  
    
    

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
    
    document.addEventListener('DOMContentLoaded', function () {
        const startButton = document.getElementById('startButton');
        const play2Controls = document.getElementById('section2');
        const play3Controls = document.getElementById('section3');
        
        

        startButton.addEventListener('click', starting);

        function starting() {
            play2Controls.style.display = 'block';
            play3Controls.style.display = 'block';
            // 추가로 필요한 초기화 코드 등을 여기에 작성할 수 있습니다.
        }
    });
    
    	var nickname = "${user.memId}";
    
        let chunks = []; 
        let chunksList = []; // 변경된 부분: 각 녹음별 Blob을 저장할 배열 추가
        let mediaRecorder; 
        let recordCount = 0; 
        let lastRecordingBlob; 

        const recordTitle = document.getElementById('recordTitle');
        const recordButton = document.getElementById('recordButton');
        const stopButton = document.getElementById('stopButton');
        const playButton = document.getElementById('playButton');
        const nextButton = document.getElementById('nextButton');
        const uploadButton = document.getElementById('uploadButton');
        const audioPlayer = document.getElementById('audioPlayer');
        const audioPlayer2 = document.getElementById('audioPlayer2');
        
        
        const play4Controls = document.getElementById('section4');
        const play5Controls = document.getElementById('section5');
        
        
        

        
        recordButton.addEventListener('click', startRecording);
        stopButton.addEventListener('click', stopRecording);
        playButton.addEventListener('click', playLastRecording);
        nextButton.addEventListener('click', onNextButtonClick);
        uploadButton.addEventListener('click', uploadRecordings);
        
        
        
        
        

        function startRecording() {
            chunks = []; // 녹음을 시작하기 전에 chunks 배열 비우기
            navigator.mediaDevices.getUserMedia({ audio: true })
                .then(function (stream) {
                    mediaRecorder = new MediaRecorder(stream);
                    mediaRecorder.ondataavailable = function (event) {
                        chunks.push(event.data);
                        chunksList.push(event.data); // 변경된 부분: 새로운 배열에도 저장
                    }
                    mediaRecorder.start();
                    recordButton.disabled = true;
                    stopButton.disabled = false;
                    playButton.disabled = true;
                    nextButton.disabled = true;
                })
                .catch(function (err) {
                    console.error('Error accessing the microphone:', err);
                });
        }

        function stopRecording() {
            mediaRecorder.stop();
            mediaRecorder.onstop = function () {
                const blob = new Blob(chunks, { type: 'audio/mkv' });
                lastRecordingBlob = blob;

                const formData = new FormData();
                formData.append('recording', blob);

                uploadButton.disabled = false;
                playButton.disabled = false;
                nextButton.disabled = false;
                recordButton.disabled = false;
				console.log('안녕하세요');
                uploadRecording(formData); // 녹음 파일 업로드 요청
            }
        }

        function playLastRecording() {
            if (lastRecordingBlob) {
                const audioUrl = URL.createObjectURL(lastRecordingBlob);
                audioPlayer.src = audioUrl;
                audioPlayer.play();
            }
        }

        function onNextButtonClick() {
            recordCount++;
            if (recordCount <= 10) {
                if (recordCount === 1) {
                    recordTitle.innerHTML = "오늘은 날씨가 참 좋네요 <br> 햇살이 따뜻해서 마음까지 활짝 열리는 기분입니다"; // 1번째 레코드에 대한 텍스트 처리
                    uploadButton.style.display = 'none'; // uploadButton을 숨깁니다.
                } else if (recordCount === 2) {
                    recordTitle.innerHTML = "어제 읽은 책에서 인상 깊었던 구절이 있어요 <br> '인생은 자신이 만드는 것이다'라는 말이었어요";
                    uploadButton.style.display = 'none';
                } else if (recordCount === 3) {
                    recordTitle.innerHTML = "바다에서 소라를 주웠다";
                    uploadButton.style.display = 'none';
                } else if (recordCount === 4) {
                    recordTitle.innerHTML = "저는 여행을 가는 것을 정말 좋아해요 <br> 새로운 곳을 탐험하고 다양한 문화를 경험하는 것이 흥미롭습니다";
                    uploadButton.style.display = 'none';
                } else if (recordCount === 5) {
                    recordTitle.innerHTML = "빠르게 말하는 것보다는 <br> 천천히, 분명하게 말하는 것이 중요합니다 <br> 소통은 이해에서 시작되니까요";
                    uploadButton.style.display = 'none';
                } else if (recordCount === 6) {
                    recordTitle.innerHTML = "긴장된 순간에는 깊이 숨을 들이켜 보세요 <br> 그러면 마음이 조금 더 평온해질 거예요";
                    uploadButton.style.display = 'none';
                } else if (recordCount === 7) {
                    recordTitle.innerHTML = "한국어 음성 복제 프로그램을 통해 <br> 목소리를 만들어보세요";
                    uploadButton.style.display = 'none';
                } else if (recordCount === 8) {
                    recordTitle.innerHTML = "강아지가 나무 아래에서 쉬고 있다";
                    uploadButton.style.display = 'none';
                } else if (recordCount === 9) {
                    recordTitle.innerHTML = "빨리 달리는 여우가 <br> 게으른 개를 뛰어넘었다";
                    uploadButton.style.display = 'none';
                } else if (recordCount === 10) {
                    recordTitle.innerHTML = "오늘의 날씨는 맑음 <br> 기온은 23도입니다";
                    nextButton.style.display = 'none';
                    uploadButton.style.display = 'block';
                } else {
                    recordTitle.textContent = recordCount;
                }
            }
            chunks = []; // chunks 배열 초기화
        }


            

        function uploadRecordings() {
            const formData = new FormData();
            const finalBlob = new Blob(chunksList, { type: 'audio/mkv' }); // 변경된 부분: 모든 녹음본을 하나로 합친 Blob
            formData.append('recording', finalBlob);
            uploadRecording(formData);
            downloadMergedRecording(); // 합쳐진 음성 파일 다운로드
        }

        // 파일 다운로드 함수
        function downloadFile(blob, filename) {
        	console.log(filename);
    const now = new Date();
    const year = now.getFullYear();
    const month = String(now.getMonth() + 1).padStart(2, '0');
    const day = String(now.getDate()).padStart(2, '0');
    const hours = String(now.getHours()).padStart(2, '0');
    const minutes = String(now.getMinutes()).padStart(2, '0');
    const seconds = String(now.getSeconds()).padStart(2, '0');

    const timestamp = year + month + day + hours + minutes + seconds;
    const fullFilename = 'recording_' + timestamp + '.mkv'; // 문자열 연산을 이용하여 파일 이름 생성
    const url = URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = url;
    a.download = fullFilename;
    document.body.appendChild(a);
    a.click();
    setTimeout(() => {
        document.body.removeChild(a);
        window.URL.revokeObjectURL(url);
    }, 0);
}
        
        

        function uploadRecording(formData) {
            fetch('/upload', {
                method: 'POST',
                body: formData
            })
            .then(response => response.text())
          //  .then(data => console.log(data))
            .catch(error => console.error('Error uploading recording:', error));
        }
        
        
        // 업로드된 녹음파일을 합쳐 다운로드
        function downloadMergedRecording() {
            const finalBlob = new Blob(chunksList, { type: 'audio/mkv' });
            
            var formDatarecord = new FormData();
            formDatarecord.append('file', finalBlob, 'plz.mkv');
            formDatarecord.append('project', $('#project').val()); // project 명 변수로 받기
            formDatarecord.append('nickname', nickname); // ${user.memId}로 받기
            
            $.ajax({
                url : "http://125.136.157.189:5000/upload",
                type : 'POST',
                data : formDatarecord,
                dataType: 'json',
                processData: false,
                contentType: false,
                success : function(response) {
                	alert("변환성공")
                	play4Controls.style.display = 'block';
                },
                error : function(xhr, status, error) {
                    alert("파이썬 실패");
                }
            });
        };
            
            
        let isPlaying = false;

        const toggleAudioPlayback = function(audioPlayer) {
            if (isPlaying) {
                audioPlayer.pause();
            } else {
                audioPlayer.play();
            }
            isPlaying = !isPlaying;
        };

        const gopython2 = function() {
            var formData = new FormData();
            formData.append('sendtext', $('#sendtext').val());
            formData.append('nickname', nickname);
            formData.append('project', $('#project').val());

            const audioPlayer2 = $('#audioPlayer');
            const lastplayButton = document.getElementById('lastplayButton');

            lastplayButton.addEventListener('click', function() {
                toggleAudioPlayback(audioPlayer2[0]);
            });

            $.ajax({
                url: "http://125.136.157.189:5000/incoding",
                type: 'POST',
                data: formData,
                processData: false,
                contentType: false,
                success: function(response) {
                    alert("TTS변환완료");
                    play5Controls.style.display = 'block';
                    musicUrl = response.file_url;
                    audioPlayer2.attr('src', musicUrl);
                    audioPlayer2.show();
                },
                error: function(xhr, status, error) {
                    alert("tts실패");
                }
            });
        };

        $("#playbtn").on("click", gopython2);
        
        
        const savedeepdb  = function() {
            $.ajax({
                url : 'ending',
                type : 'POST',
                data : {
                   'nickname' : nickname,
                   'sendtext' : $('#sendtext').val(),
                   'musicUrl' : musicUrl
                },
                success : function(resultchange) {
                   console.log(musicUrl);
               alert("저장성공")                    
                },
                error : function(xhr, status, error) {
                    alert("실패");
                }
            });
        };
        
        
        
        $("#deepdb").on("click", savedeepdb);
        
    </script>

  
</body></html>