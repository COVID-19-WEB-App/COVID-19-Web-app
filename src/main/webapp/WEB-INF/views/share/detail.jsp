<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<!--[if IE 8 ]> <html lang="ko" class="ie8"> <![endif]-->
<!--[if IE 9 ]> <html lang="ko" class="ie9"> <![endif]-->
<html lang="ko">

<!-- Mirrored from www.ohmycompany.com/reward/8725 by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 10 Aug 2020 04:32:26 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8">
    <meta property="og:url" content="8725.html"/>
    <meta property="og:type" content="article"/>
    <meta property="og:title" content="기부가 기적이 되는 원포원 프로젝트, &lt;#덕분에 콘서트&gt;"/>
    <meta property="og:description" content="의료진과 예술가를 위한 문화콘서트"/>
    <meta property="og:image" content="https://www.ohmycompany.com/uploads/reward/REWARD_20200729060045917.jpg"/>
    <meta property="og:image:width" content="680"/>
    <meta property="og:image:height" content="408"/>

    
    





<meta name="description" content="후원형, 투자형 크라우드펀딩, 임팩트펀딩, 가치펀딩, 아이디어, 스타트업, 소셜벤처"/>
<meta name="keywords" content="크라우드펀딩,후원형,투자형, 소셜펀딩, 스타트업, 소셜벤처, 사회적기업,크라우드펀딩대회,사회적기업크라우드펀딩대회"/>
<title>COVID-19 공동구매</title>
    
    
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta name="naver-site-verification" content="9cf6afa832a16b3ba913b7d07418de0d0c349d38"/>
<meta name="facebook-domain-verification" content="150en2tc35wmdzse3qrrebsw5uuchw"/>
<link rel="stylesheet" type="text/css" href="/resources/static/css/sharelist.css"/>
<link rel="stylesheet" type="text/css" href="https://www.ohmycompany.com/omc/asset/js/uikit/uikit.css">

<script src="https://www.ohmycompany.com/omc/asset/js/jquery-1.12.4.js"></script>
<script src="https://www.ohmycompany.com/omc/asset/js/isMobile.min.js"></script>
<script src="https://www.ohmycompany.com/omc/asset/js/common/jquery.form.js"></script>
<script src="https://www.ohmycompany.com/omc/asset/js/common/jquery-scrollLock.min.js"></script>
<script src="https://www.ohmycompany.com/omc/asset/js/uikit/uikit.min.js"></script>

<!-- Swiper -->
<link rel="stylesheet" href="../../cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.2/css/swiper.min.css">
<script src="../../cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.2/js/swiper.min.js"></script>

<!-- 공통 유틸 js -->
<script src="https://www.ohmycompany.com/omc/asset/js/common/commonUtil.js?ver=20191030"></script>

<!--[if lt IE 9]>
<script src="/omc/asset/js/html5shiv.min.js"></script>
<script src="/omc/asset/js/respond.min.js"></script>
<![endif]-->

 <jsp:include page="/WEB-INF/views/include/header.jsp" />

    <!-- Facebook Pixel Code -->
    <script>
      !function (f, b, e, v, n, t, s) {
        if (f.fbq) return;
        n = f.fbq = function () {
          n.callMethod ?
              n.callMethod.apply(n, arguments) : n.queue.push(arguments)
        };
        if (!f._fbq) f._fbq = n;
        n.push = n;
        n.loaded = !0;
        n.version = '2.0';
        n.queue = [];
        t = b.createElement(e);
        t.async = !0;
        t.src = v;
        s = b.getElementsByTagName(e)[0];
        s.parentNode.insertBefore(t, s)
      }(window, document, 'script',
          '../../connect.facebook.net/en_US/fbevents.js');
      fbq('init', '1596038603991444');
      fbq('track', 'PageView');
    </script>
    <noscript><img height="1" width="1" style="display:none"
                   src="https://www.facebook.com/tr?id=1596038603991444&amp;ev=PageView&amp;noscript=1"
    /></noscript>
    <!-- End Facebook Pixel Code -->

    
    <script type="text/javascript" charset="UTF-8" src="../../t1.daumcdn.net/adfit/static/kp.js"></script>
    <script type="text/javascript">
      if (typeof kakaoPixel === 'function') {
        kakaoPixel('3359785880917884039').pageView();
      }
    </script>
    


<!-- Hotjar Tracking Code for https://www.ohmycompany.com/ -->










    <script src="../../developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script src="../../cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
</head>
<body>
<div id="omcIndex">
    <a href="#omcGnb" class="shortcut">주메뉴 바로가기</a>
    <a href="#omcSearch" class="shortcut">검색 바로가기</a>
    <a href="#omcBody" class="shortcut">본문 바로가기</a>
</div>

<div id="omcWrap">
<script type="text/javascript">
  $(document).ready(function () {

    var body = $("body");

    
    

    $("#inpSearch").keydown(function (e) {
      if (e.keyCode === 13) {//키가 13이면 실행 (엔터는 13)
        fnSearchWord();
      }
    });

    $("#inpMenubarSearch").keydown(function (e) {
      if (e.keyCode === 13) {//키가 13이면 실행 (엔터는 13)
        fnMenubarSearchWord();
      }
    });

    $("#menubarSearchButton").click(fnMenubarSearchWord);

    $("#btn_logout").on("click", function () {
      location.href = "https://www.ohmycompany.com/login/logout";
    });

    // $("#inpSearch").on("click", function(){
    //     $("#omcSearch").addClass("on");
    // });

    $("#topSearchBtn").click(focusSearchInput);
  });

  function focusSearchInput() {
    $("#omcSearch").addClass("on");
    var $input = $('#inpSearch');
    $input.focus();
  }

  function fnSearchWord() {
    var searchSelector = $("#omcSearch");
    if (searchSelector.is(".search_g", ".on")) {
      var inpSearch = $("#inpSearch");
      inpSearch.val(function () {
        return $(this).val().trim();
      });

      if (inpSearch.val().length === 0) {
        alert("검색어를 입력하세요.");
        inpSearch.focus();
        return false;
      }
      var form = document.omcSearch;
      form.action = "/main/search;jsessionid=40EF219E555115950018A131E1EFDCF0.server01";
      form.submit();

    } else if (searchSelector.hasClass("search_g")) {
      $("#inpSearch").focus();
    }
  }

  function fnMenubarSearchWord() {

    var inpSearch = $("#inpMenubarSearch");
    inpSearch.val(function () {
      return $(this).val().trim();
    });

    if (inpSearch.val().length === 0) {
      alert("검색어를 입력하세요.");
      inpSearch.focus();
      return false;
    }
    var form = document.omcSearch;
    form.inpSearch.value = inpSearch.val();
    form.action = "/main/search;jsessionid=40EF219E555115950018A131E1EFDCF0.server01";
    form.submit();
  }

</script>	
    <!-- header -->

    
    
    <main id="omcContainer" class="cont_support">
        
        
            <!-- aside -->
            
            <!--  aside -->

            
            
                
            

            <input type="hidden" id="projectSeq" value="8725"/>
            <input type="hidden" id="simulationFlag" value="N"/>

            <h2 id="omcBody" class="screen_out">후원형 프로젝트</h2>
            <div class="cMain">
                <article id="mContent" class="project_intro">
                    <div class="top_box">
                        <header class="head_cont">
                        <span class="txt_category">
                            <span class="screen_out">카테고리</span>
                            
                            
                                <a href="https://www.ohmycompany.com/reward/list#category=CATE_0005">
                                    문화예술
                                </a>
                            
                        </span>
                            <h1>기부가 기적이 되는 원포원 프로젝트, &lt;#덕분에 콘서트&gt;</h1>
                            <div class="project_sorting">
                                <div class="tag_rel">
                                    
                                        <span class="screen_out">관련 태그</span>
                                        
                                        
                                        
                                            
                                                
                                                    
                                                        <a href="#none" class="link_tag">#코로나
</a>
                                                    
                                                
                                            
                                                
                                                    
                                                        <a href="#none" class="link_tag">#의료진
</a>
                                                    
                                                
                                            
                                                
                                                    
                                                        <a href="#none" class="link_tag">#예술가
</a>
                                                    
                                                
                                            
                                                
                                                    
                                                        <a href="#none" class="link_tag">#덕분에
</a>
                                                    
                                                
                                            
                                                
                                                    
                                                        <a href="#none" class="link_tag">#콘서트
</a>
                                                    
                                                
                                            
                                        
                                    
                                </div>
                            </div>
                        </header>
                        <div class="summary_cont">
                            <div class="project_info">
                                
                                
                                    <div id="main_image_slide" uk-slideshow="ratio: 5:3; animation: fade">
                                        <ul class="uk-slideshow-items">
                                            
                                                <li>
                                                    <img src="https://www.ohmycompany.com/uploads/reward/REWARD_20200729060045917.jpg"
                                                         class="img_g"/>
                                                </li>
                                            
                                        </ul>
                                        
                                    </div>
                                
                                <div class="author_profile">
                                    <div class="user_profile">
                                        <span class="img_profile">
                                        
                                            <img src="https://www.ohmycompany.com/uploads/member/profile/MEMBER_20200628081127301.png">
                                        
                                        </span>
                                        <div class="author_cont">
                                            <div class="builder_profile_wrapper">
                                                <p><span class="txt_name">주식회사 케이아트팩토리</span></p>
                                                <span class="txt_mail">k-**********@k-artfactory.com</span>
                                                
                                                    <span class="sns_area">
                                                        <span class="box_links">
                                                            <span class="screen_out">프로젝트SNS</span>
                                                            
                                                                <a href="http://www.k-artfactory.com/"
                                                                   target="_blank" class="link_home">
                                                                    <span class="ico_comm"></span>
                                                                    <span class="sns_name"></span>
                                                                </a>
                                                            
                                                            
                                                                <a href="http://www.facebook.com/K.Factory.2020"
                                                                   target="_blank" class="link_facebook">
                                                                    <span class="ico_comm"></span>
                                                                    <span class="sns_name"></span>
                                                                </a>
                                                            
                                                            
                                                            
                                                                <a href="http://www.instagram.com/kart__factory/" target="_blank"
                                                                   class="link_insta">
                                                                    <span class="ico_comm"></span>
                                                                    <span class="sns_name"></span>
                                                                </a>
                                                            
                                                        </span>
                                                    </span>
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mms_profile">
                                        
                                        <a href="#none" class="link_mms" id="link_profile">프로필보기</a>
                                        <a href="#none" class="link_profile" id="link_message">개설자문의</a>
                                    </div>
                                </div>
                            </div>
                            <div class="project_details">
                                <div class="item_state">
                                    <p><span class="txt_statetitle">모인금액</span></p>
                                    <span class="screen_out">현재 참여금액</span><span class="num_value">2,112,700</span> <span class="txt_value">원&nbsp;모금</span>
                                </div>
                                <div class="state_project">
                                    <div class="graph_support">
                                        <span class="screen_out">참여율</span>
                                        
                                            <span class="bar_graph"
                                                  style="width:21%"></span>
                                        
                                        
                                        <span class="num_per">21%</span>
                                    </div>

                                    <div class="item_state">
                                        <p><span class="txt_statetitle">참여인원</span></p>
                                        <span class="screen_out">참여자 수</span><span class="num_value">82</span> <span
                                            class="txt_value">명 참여</span>
                                    </div>

                                    <div class="item_state">
                                        <p><span class="txt_statetitle">남은기간</span></p>
                                        
                                            
                                        <span class="num_value">
                                            
                                            
                                            D-<span class="screen_out">Day</span>20
                                        </span><span class="txt_value"> 일 남음</span>
                                            
                                            
                                        

                                        
                                            
                                                
                                                    
                                                        
                                                            <a href="https://www.ohmycompany.com/reward/8725/join/select;jsessionid=40EF219E555115950018A131E1EFDCF0.server01"
                                                               class="link_join">참여하기</a>
                                                        
                                                        
                                                    
                                                    
                                                
                                            
                                            
                                        
                                    </div>

                                    
                                        <div class="txt_notice ">
                                            
                                                
                                                    
                                                    
                                                        
                                                        
                                                        
                                                    
                                                    
                                                    
                                                        <span class="sign_notice">성공해야<br/>리워드</span>
                                                        <span class="txt">
                                                        목표액 10,000,000원에 미달하면 결제가 진행되지 않는 프로젝트입니다.<br/>
                                                        결제는 목표액달성시 2020년09월01일에 진행됩니다.
                                                    </span>
                                                    
                                                
                                                
                                            
                                        </div>
                                    
                                </div>

                                <div class="item_btns">
                                    <a href="#none" class="link_share" id="link_share">공유
                                        <img src="https://www.ohmycompany.com/omc/asset/images/share.jpg"/>
                                        <span class="num_count" id="share_num_count">
                                        
                                            
                                            399
                                        
                                        </span>
                                    </a>
                                    <input type="hidden" id="like_count"
                                           value="86">
                                    <input type="hidden" id="interest_seq" value="">
                                    <button type="button" class="btn_like" id="btn_like">관심
                                        <img src="https://www.ohmycompany.com/omc/asset/images/good.jpg"/>
                                        <span id="icon_like"
                                                
                                        ></span>
                                        <span class="num_count" id="like_num_count">
                                        
                                            
                                            86
                                        
                                        </span>
                                    </button>
                                </div>
                            </div>
                        </div>
                        
                    </div>

                    <div class="primary_cont">
                        <div class="box_details_cont">
                            <section class="section_cont">
                                <nav class="sticky_bar"> <!-- 헤더랑 만나는 순간 fixed 추가 -->
                                    <h2 class="screen_out">프로젝트 상세 탭메뉴</h2>
                                    <div class="tab_box">
                                        <ul class="list_tab">
                                            <li class="on"><a
                                                    href="https://www.ohmycompany.com/reward/8725/introAjax;jsessionid=40EF219E555115950018A131E1EFDCF0.server01?isPreview=Y&amp;mockFlag=N"
                                                    id="Intro" class="link_tab">소개</a></li>

                                            <li>
                                                <a href="https://www.ohmycompany.com/reward/8725/newsAjax;jsessionid=40EF219E555115950018A131E1EFDCF0.server01?mockFlag=N"
                                                   id="News" class="link_tab">최근소식<span
                                                        class="num_count"></span></a>
                                            </li>
                                            <li>
                                                <a href="https://www.ohmycompany.com/reward/8725/qnaAjax;jsessionid=40EF219E555115950018A131E1EFDCF0.server01?isPreview=Y&amp;mockFlag=N"
                                                   id="Qna" class="link_tab">Q&amp;A<span
                                                        class="num_count"></span></a>
                                            </li>
                                            <li>
                                                <a href="https://www.ohmycompany.com/reward/8725/cheerAjax;jsessionid=40EF219E555115950018A131E1EFDCF0.server01?mockFlag=N"
                                                   id="Cheer" class="link_tab">참여자<span class="skip">응원</span><span
                                                        class="num_count">82</span></a>
                                            </li>
                                            
                                                
                                                    <li>
                                                        <a href="https://www.ohmycompany.com/reward/8725/coopAjax;jsessionid=40EF219E555115950018A131E1EFDCF0.server01"
                                                           id="Coop" class="link_tab">협업지원<span
                                                                class="num_count">1</span></a>
                                                    </li>
                                                
                                            
                                        </ul>
                                        
                                            
                                            
                                                
                                            
                                        
                                        <div class="btn_area stickable">
                                            
                                                
                                                
                                                    
                                                        <a href="https://www.ohmycompany.com/reward/8725/join/select;jsessionid=40EF219E555115950018A131E1EFDCF0.server01"
                                                           class="link_join">참여하기</a>
                                                    
                                                    
                                                
                                            
                                        </div>
                                    </div>
                                </nav>
                                <!-- 탭이 눌려질 때 동적으로 페이지를 로드한다. -->
                               <div class="article_intro">
    <h2><img style="color: #000000; font-size: 18px;" src="/uploads/editorImages/2020/editorImg_20200804093504666.jpg" alt="" width="680" height="383"></h2>
<h2>&nbsp;</h2>
<blockquote>
<h2><strong>연해주에 &lt;고려인 한글 유치원&gt;이 <br>처음으로 만들어 집니다.</strong></h2>
</blockquote>
<p>&nbsp;</p>
<p><u>&lt;우수리스크 고려인민족학교&gt;가 우리말과 문화를 가르치는 &lt;고려인 한글 유치원&gt;을 9월에 개원합니다.</u> 연해주 고려인들은 1937년 강제이주로 인해 우리말과 문화를 잃어버렸습니다.</p>
<p>당시는 우리나라가 일제 치하에 있어서 적성 국가의 민족이라며 소련 당국이 고려인들에게 우리말과 문화를 금지시켰기 때문입니다. 하지만 고려인동포들은 우리말과 문화를 익히기 위해 꾸준히 노력하고 있습니다.</p>
<p>김발레리야 고려인 민족학교 교장선생님은 “언어와 문화를 가장 빨리 습득할 수 있는 유아기 때부터 우리말과 문화를 배워야 한다.”며 러시아 연해주 우수리스크에 &lt;고려인 한글 유치원&gt;을 올해 9월에 개원할 예정이라고 알려왔습니다.</p>
<p>&nbsp;</p>
<blockquote>
<h2><strong>1년 간의 개원 준비, </strong></h2>
<h2><strong>예상치 못한 <span style="color: #80c72d;">코로나 바이러스</span></strong></h2>
</blockquote>
<p>&nbsp;</p>
<p><img src="/uploads/editorImages/2020/editorImg_20200805030507032.jpg" alt="" width="680" height="418"></p>
<p>작년부터 유치원 개원을 위해 착실히 준비해 왔으나 COVID-19로 인해 연해주 고려인들의 경제활동이 매우 어려워졌습니다. 그로인해 개원을 준비하던 올해 재정 위기를 맞이 했습니다.</p>
<p>&lt;고려인 민족학교&gt;는 아무리 어렵더라도 아이들의 한글 교육을 위해 올해 9월에 반드시 유치원 개원하겠다고 조국의 동포들에게 그리고 저희 희망래일에 도움을 요청해습니다. <u>그래서 여러분의 후원이 필요합니다.</u></p>
<p><img src="/uploads/editorImages/2020/editorImg_20200805031126732.jpg" alt="" width="680" height="418"></p>
<p>고려인 아이들이 우리말과 문화를 배울 수 있게 <u>식판 하나, 의자 하나, 책상 하나씩 도와주세요.</u></p>
<p><strong>2020년 9월 개원을 위해 당장에 필요한것은</strong> 아이들이 공부를 할 수 있게 하기 위한 책상과 의자, 그리고 밥을 먹을 수 있도록 어린이 식판이 필요합니다. 고려인민족유치원에서 수업을 듣는 아이들은 60여명입니다.</p>
<p>우리가 전해준 책상위에서 고려인 아이들이 한글을 공부하고, 식판을 가지고 김치를 먹으면서 우리 민족의 정체성을 지키게끔 해주세요.</p>
<p><img src="/uploads/editorImages/2020/editorImg_20200805031329576.jpg" alt="" width="680" height="411"></p>
<h3><strong><br>&lt;후원 물품 내역&gt;</strong></h3>
<h4><strong><span style="color: #80c72d;"><br></span><span style="color: #80c72d;">"60명의 아이들이 공부할 수 있는"</span></strong><br><br></h4>
<h4><strong>하나, 어린이 식판 4,000원</strong> / 목표:&nbsp;60개&nbsp;총 240,000원</h4>
<h4><br><strong>둘, 4인용 책상 1/4 25,000원</strong> / 목표: 4인용 책상 15개&nbsp;총 1,500,000원<br><br><strong>셋, 어린이 의자 30,000원</strong> / 목표: 60개&nbsp;총 1,800,000원<br><br><strong>넷, 유치원 개원 후원하기 10,000원</strong><br><br></h4>
<p><span style="color: #80c72d;">*어린이 의자 또는 4인용 책상을 후원해주신 분들에게는 고려인 아이들이 직접 쓴 손편지를 써서 보내드립니다.</span></p>
<p>&nbsp;</p>
<blockquote>
<h2><strong>고려인 아이들이 우리말과 문화를 </strong></h2>
<h2><strong>배울 수 있길 바랍니다!</strong></h2>
</blockquote>
<p><br>▪고려인 한글 유치원 개원일: 2020년 9월<br>▪후원문의: 희망래일 02-323-5778</p>
<p>* 여러분들의 후원금은 고려인 한글 유치원의 책상 및 의자, 식판 후원에 전액 쓰입니다.<br>* 2020년 10월 10일 손편지 및 기부금영수증 일괄발송 됩니다.</p>
<p>&nbsp;</p>
<hr>
<h3>&nbsp;</h3>
<blockquote>
<h2><strong>우수리스크 고려인민족학교는?</strong></h2>
</blockquote>
<figure class="image"><img src="/uploads/editorImages/2020/editorImg_20200804093632427.jpg" alt="" width="680" height="383">
<figcaption><sup>우수리스크 지역에 있는 고려인 민족학교 모습</sup></figcaption>
</figure>
<p>주소: 우수리스크 테르메츠코보 7<br>총 학생 수: 140명</p>
<p>"1863년 고려인 13가구가 지신허에 정착하며 고려인 역사가 시작이 된지, 어느덧 <strong>157년의 세월</strong>이 흘렀습니다. 살아남기 위해 러시아로, 그리고 <strong>조국독립운동의 중심지</strong>로, 하지만 소수민족이라는 이유로 강제이주의 기나긴 역경을 이기며 살아왔지만, 다시 소련 해체로 인해 또 다시 연해주로 돌아오는 고난의 역사를 안은 채 살아오면서 <u>우리 민족의 정체성을 이어가고 있는 민족학교에 힘을 보태 주시면 저희에게 크나큰 힘이 되겠습니다.</u>"</p>
<p>- 김발레리야 교장 선생님-</p>
<p>1863년 고려인 13가구가 연해주에 정착하면서 고려인의 역사가 시작되었습니다. 1990년 초기 항일 독립운동의 중심지가 되었지만 나라를 빼았겼단 이유로 고난의 역사를 겪었습니다. 그러나 <u>우리민족의 정체성을 잊지 않기 위해 고려인들은 학교를 세워 한글을 교육을 했습니다.</u> 어느새 <strong>고려인 동포들은 2세 3세를 거쳐 5세까지</strong> <strong>왔습니다.</strong></p>
<p><strong>우수리스크 고려인 민족학교는 아이들이 자기 민족의 전통 문화에 관심을 갖고 소중히 여길 수 있도록, 나아가 어린시절부터 한글을 공부하여 건전한 자기 민족정체성을 갖게 합니다.</strong></p>
<p><img src="/uploads/editorImages/2020/editorImg_20200804093838836.jpg" alt="" width="1280" height="720"></p>
<h3>&nbsp;</h3>
<blockquote>
<h2><strong>사단법인 희망래일은 어떤단체인가?</strong></h2>
</blockquote>
<p><strong><iframe src="//www.youtube.com/embed/3hcaTrHjmZs" width="680" height="381" allowfullscreen="allowfullscreen"></iframe><sup>희망래일이 진행한 2019년 한.러 청소년 오케스트라 사업 영상</sup></strong></p>
<p>사단법인 희망래일은 남북철도 연결·운행 활동을 하고 있는 NGO단체 입니다. 희망래일의 목표는 "남북철도 연결을 통해 우리들이 잊고 있던 대륙의 꿈을 다시 찾고자 함" 에 있습니다.</p>
<p>희망래일은 2010년 어려웠던 시기 창단하여 지난 10년간 다양한 활동을 전개하고 있습니다. 최근 이슈가 되었던 동해북부선은 2012년부터 희망래일이 추진한 주요 과제로 2016년부터 침목기증운동, 포럼, 문화행사 등 여러사업을 전개하여 "2020년 4월 동해북부선 착공결정"이라는 결과를 이끌어냈습니다.</p>
<p><strong>2019년 한.러 청소년 오케스트라 사업을 진행하면서 우수리스크 고려인 민족학교와는 더욱 각별한 사이가 되어서 업무협약을 맺고 고려인민족문화 교육을 위해 함께 힘쓰고 있습니다.</strong></p>
<p>&nbsp;</p>
<blockquote>
<h2><strong>같이 보기, <span style="color: #80c72d;">고려인의 역사</span></strong></h2>
</blockquote>
<p>&nbsp;</p>
<p><sup><img src="/uploads/editorImages/2020/resize_editorImg_20200804094226320.jpg" alt="" width="1360" height="906"></sup></p>
<p><sup>&lt;고려인동포 이주 역사&gt;</sup></p>
<p><sup> 1863년: 한반도 북녘의 기근을 피해 함경북도 농민 13가구가 러시아 연해주 이주.정착 </sup></p>
<p><sup>1905~1920: 연해주는 일제 침략에 맞서 항일독립운동의 중심기지 역할 (주요 활동가 최재형, 이상설, 안중근, 홍범도 등) <br></sup><sup>*지금 고려인들은 연해주 독립운동가의 후손이라 볼 수 있습니다. </sup></p>
<p><sup>1920년: 4월참변. 일제의 무자비한 학살의 시작, 항일독립운동 거점 이동 </sup></p>
<p><sup>1937년: 일제의 스파이란 이유로 소련의 소수민족 이주정책에 의해 18만명의 고려인이 중앙아시아로 강제 이동 당함 <br></sup><sup>- 이동거리 6,000km / 강제이주 과정과 이듬해 정착 동안 약 20% 고려인들이 목숨을 잃음 - 도착한 중앙아시아 지역은 춥고 척박한 황무지 지역, 사람이 살기 매우 어려운 지역임 </sup></p>
<p><sup>1937~ 1980: 집단농장을 중심으로 처절한 생존투쟁 전개 후 성공적으로 정착. 집단농장의 고려인 노동영웅 다수 탄생 (김병화 농장 등)<br></sup><span style="vertical-align: super; word-spacing: 0.05em;">- 수십km 떨어진 강에서 물을 끌어옴 / 민족교육을 위해 학교 건립</span></p>
<p><sup>1953 ~ 1990: 스탈린 사망 후 거주제한 조치가 풀리자 고등교육 기관으로 진출 <br></sup><sup>- 소련 내 소수민족 가운데 가장 높은 대학 진학률을 기록하기도 함 </sup></p>
<p><sup>1993년 러시아 정부는 러시아고려인의 명예회복에 관한 법령 공포하여 고려인민족문화자치를 허용함 </sup></p>
<p><sup>1991 ~ 현재: 소련 해체 이후 4만여 명의 고려인 연해주로 재이주 정착</sup></p>
<p>&nbsp;</p>
</div>
<div id="accordionCont" class="accordion_g">
    <h2 class="screen_out">프로젝트 주요안내</h2>
    
        <div class="panel">
            <button type="button" class="btn_accordion">리워드 배송 안내<span class="fa fa-angle-down"></span></button>
            <div class="cont"><p>- 프로젝트 종료 후 후원금을 우수리스크 민족학교에 보낼 예정입니다. 
<br>- 이를 러시아 우수리스크 현지에서 영수증과 후원물품 사진을 보낼 예정입니다.  
<br>- 2020년 10월 10일 손편지 및 기부금영수증이 일괄발송 됩니다.
<br>- 아이들의 손편지는 책상과 의자를 후원해주셨을 때 전해드립니다.&nbsp;</p></div>
        </div>
    
        <div class="panel">
            <button type="button" class="btn_accordion">리워드 배송 지연 시<span class="fa fa-angle-down"></span></button>
            <div class="cont"><p>- 펀딩해 주신 참여자분들께 약속드린 후원 일정을 지키기 위해 최선을 다할 것을 약속합니다. 단, 펀딩을 받아야만 진행을 시작할 수 있는 크라우드펀딩 특성 상 예상치 못한 상황으로 인해 프로젝트 일정이 다소 지연될 수 있는 점을 알려드립니다.
<br>- 약속된 날로부터 프로젝트 일정 지연이 예상되는 즉시, 최근소식에 상세한 사유와 변경되는 일정을 공지하겠습니다.</p></div>
        </div>
    
        <div class="panel">
            <button type="button" class="btn_accordion">환불 및 교환정책<span class="fa fa-angle-down"></span></button>
            <div class="cont"><p>- 환불은 펀딩종료일 1일 전까지 가능하며 이후는 환불이 불가능합니다. 또한 펀딩기간 중 리워드가 배송된 경우에도 환불이 불가능하오니 이 점 양해해주세요.
<br>- 펀딩 종료일 이후 단순 변심으로 인한 환불 및 교환은 불가능합니다.
<br>- 리워드가 손편지인 관계로 참여자의 배송지 기재 오류, 참여자가 개설자에게 사전 고지 없이 배송지를 수정해 배송사고가 발생할 경우에 재 발송은 어렵습니다.
<br>- 관련 문의가 있을 시 프로젝트 상단 'Q&amp;A'에 질문을 등록해주세요.
<br>- 지속적인 리워드 배송 지연 및 개설자의 개인적인 사유로 리워드 제공이 이루어지지 않는 경우 개설자가 직접 참여자의 환불계좌를 받아 참여금액의 100%를 환불해드리겠습니다.</p></div>
        </div>
    
</div>
                            </section>
                        </div>

                        
                            <div class="box_reward_select">
                                <form name="rewardForm" id="rewardForm" action="#">
                                    <fieldset>
                                        







<ul class="list_reward">
    
    

        
            
                
            
            
        

         <!-- 리워드 수량이 무한한 경우 -->
            <li>
                <a href="https://www.ohmycompany.com/reward/8725/join/select?selectrewardseq=15001" class="box_reward">
                    <strong class="tit_reward">10,000원 펀딩</strong>
                    <p class="txt_desc">뱃지 1개 + 후원자 표기(리플렛발송)</p>
                    <span class="info_dely"><span class="tit_info">배송 예정일</span> : <span class="txt_info">펀딩 종료 후 리플렛, 뱃지 제작으로 인해 10월 5일 이후 순차배송됩니다.</span></span>
                    <span class="txt_satea"><em class="num_state">56명</em> 참여하였습니다.</span>
                </a>
            </li>
        
        
    

        
            
                
            
            
        

         <!-- 리워드 수량이 무한한 경우 -->
            <li>
                <a href="https://www.ohmycompany.com/reward/8725/join/select?selectrewardseq=15002" class="box_reward">
                    <strong class="tit_reward">29,800원 펀딩</strong>
                    <p class="txt_desc">[1+1 콘서트 티켓] + 뱃지 1개 + 후원자 표기</p>
                    <span class="info_dely"><span class="tit_info">배송 예정일</span> : <span class="txt_info">[현장수령] 리워드 상품입니다. (자율좌석제 운영)</span></span>
                    <span class="txt_satea"><em class="num_state">13명</em> 참여하였습니다.</span>
                </a>
            </li>
        
        
    

        
            
                
            
            
        

        
        <!-- 리워드 수량 제한이 있는 경우 -->
            
            
                <li>
                    <a href="https://www.ohmycompany.com/reward/8725/join/select?selectrewardseq=15003" class="box_reward">
                        <strong class="tit_reward">54,900원 펀딩</strong>
                        <p class="txt_desc">[2+2 콘서트 티켓] + 뱃지 2개 + 후원자 표기</p>
                        <span class="info_dely"><span class="tit_info">배송 예정일</span> : <span class="txt_info">[현장수령] 리워드 상품입니다. (자율좌석제 운영)</span></span>
                        <span class="txt_satea"><em class="num_state">6명</em> 참여하였습니다.<small class="txt_count">(수량 118개 남음)</small></span>
                    </a>
                </li>
            
        
    

        
            
                
            
            
        

         <!-- 리워드 수량이 무한한 경우 -->
            <li>
                <a href="https://www.ohmycompany.com/reward/8725/join/select?selectrewardseq=15004" class="box_reward">
                    <strong class="tit_reward">100,000원 펀딩</strong>
                    <p class="txt_desc">♥후원하기♥_액자포장뱃지(장식용) + 후원자 표기(리플렛 발송)</p>
                    <span class="info_dely"><span class="tit_info">배송 예정일</span> : <span class="txt_info">펀딩 종료 후 리플렛, 뱃지 제작으로 인해 10월 5일 이후 순차배송됩니다.</span></span>
                    <span class="txt_satea"><em class="num_state">7명</em> 참여하였습니다.</span>
                </a>
            </li>
        
        
    
</ul>
                                    </fieldset>
                                </form>
                            </div>
                        
                    </div>

                    

























	<jsp:include page="/WEB-INF/views/include/footer.jsp" />





</div>
</body>

</html>