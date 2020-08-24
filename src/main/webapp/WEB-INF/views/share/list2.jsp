<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>























<!DOCTYPE html>
<!--[if IE 8 ]> <html lang="ko" class="ie8"> <![endif]-->
<!--[if IE 9 ]> <html lang="ko" class="ie9"> <![endif]-->
<html lang="ko">

<!-- Mirrored from www.ohmycompany.com/reward/list by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Aug 2020 11:10:55 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8">
    
    





<meta name="description" content="후원형, 투자형 크라우드펀딩, 임팩트펀딩, 가치펀딩, 아이디어, 스타트업, 소셜벤처"/>
<meta name="keywords" content="크라우드펀딩,후원형,투자형, 소셜펀딩, 스타트업, 소셜벤처, 사회적기업,크라우드펀딩대회,사회적기업크라우드펀딩대회"/>
<title>크라우드펀딩 오마이컴퍼니 : 후원형</title>
    
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta name="naver-site-verification" content="9cf6afa832a16b3ba913b7d07418de0d0c349d38"/>
<meta name="facebook-domain-verification" content="150en2tc35wmdzse3qrrebsw5uuchw"/>
<link href="https://www.ohmycompany.com/omc/dist/styles.e56b5d67.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://www.ohmycompany.com/omc/asset/js/uikit/uikit.css">

    <meta property="og:type" content="website"/>
    <meta property="og:title" content="크라우드펀딩 오마이컴퍼니"/>
    <meta property="og:description" content="후원형, 투자형 크라우드펀딩, 임팩트펀딩, 가치펀딩, 아이디어, 스타트업, 소셜벤처"/>
    <meta property="og:image" content="https://www.ohmycompany.com/omc/asset/images/og_image_logo.jpg"/>
    <meta property="og:image:width" content="800"/>
    <meta property="og:image:height" content="800"/>

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











    <script type="text/javascript">
      $(document).ready(function () {
        // 실제 카테고리 변경 처리는 ui.js 에서
        // 여기선 프로젝트를 다시 로드하기만 한다
        $('#category_list li').click(function () {
          if ($(this).data('category-code')) {
            $('#sorting').val('latest');
          } else {
            $('#sorting').val('highest');
          }

          changeHashParameters();
          loadInitialPage(1);
        });

        $('#sorting').change(function () {
          $(this).blur();
          changeHashParameters();
          loadInitialPage(1);
        });

        // 해시 프래그먼트로부터 페이지 상태 복원
        var hashParams = CommonUtil.getHashParam();
        var categoryCode = (hashParams.hasOwnProperty('category')) ? hashParams.category : null;
        var sorting = (hashParams.hasOwnProperty('sorting')) ? hashParams.sorting : null;
        UI.ProjectList.changeSelectedCategory(categoryCode);
        if (sorting) {
          $('#sorting').val(sorting);
        }

        // 스크롤링을 통한 자동 프로젝트 목록 로딩을 위한 설정
        UI.DynamicPageHelper.setPrevPageLoader(loadPrevPage);
        UI.DynamicPageHelper.setNextPageLoader(loadNextPage);
        var initPage = (hashParams.hasOwnProperty('page')) ? parseInt(hashParams.page) : 1;
        initPage = (initPage) ? initPage : 1;
        UI.DynamicPageHelper.on(initPage);
        loadInitialPage(initPage);
      });

      /**
       * 최초 페이지를 로드한다.
       * @param initPage {number} 최초 로드할 페이지
       */
      function loadInitialPage(initPage) {
        if (!initPage || typeof initPage !== 'number') {
          console.error('페이지가 지정되지 않았습니다.');
        }
        UI.DynamicPageHelper.resetInitPage(initPage);

        $('#listPrj').empty();

        UI.DynamicPageHelper.lockLoad();
        loadProjectList(initPage, null, true);
      }

      /**
       * 프로젝트 목록을 페이지 단위로 조회한다.
       * @param page {number} (required) 로드할 페이지
       * @param order {null|string} [optional] 로드 내용을 붙일 위치 목록의 위('prev') 또는 아래(null|'next')
       * @param init {boolean} [optional] 첫 로드일 경우 true
       */
      function loadProjectList(page, order, init) {
        var sorting = UI.ProjectList.getSortingValue();
        var projectCategory = UI.ProjectList.getSelectedCategoryCode();

        if (init) {
          UI.DynamicPageHelper.showInitLoading($('#listPrj'));
        } else {
          UI.DynamicPageHelper.showLoading($('#listPrj'), order);
        }

        $.ajax({
          url: '/project/list',
          type: 'POST',
          dataType: 'html',
          data: {
            projectType: 'reward',
            pageIndex: page,
            sorting: sorting,
            projectCategory: projectCategory
          },
          success: function (data) {
            var lastScrollTop = $(document).scrollTop();

            if (order && order === 'prev') {
              $('#listPrj').prepend(data);
            } else {
              $('#listPrj').append(data);
            }

            $('.project_card[data-page-number="' + page + '"]').find('.project_detail_link').click(function () {
              var projectSeq = $(this).data('project-seq');
              var page = $(this).data('page-number');
              changeHashParameters(projectSeq, page);
            });

            if (init) {
              var hashParams = CommonUtil.getHashParam();
              var projectSeq = (hashParams.hasOwnProperty('projectSeq')) ? parseInt(hashParams.projectSeq) : '';
              var $projectCard = $('.project_card[data-project-seq="' + projectSeq + '"]');

              if ($projectCard.length) {
                $(document).scrollTop($projectCard.offset().top - 300);
              }
            } else if (order === 'prev') {
              $(document).scrollTop(lastScrollTop + $('.page-wrapper').eq(0).height());
            }
          },
          complete: function () {
            UI.DynamicPageHelper.hideLoading();
            UI.DynamicPageHelper.unlockLoad();
          }
        });
      }

      /**
       * 이전 페이지 로더
       */
      function loadPrevPage() {
        if ($('.first_page_flag').length !== 0) {
          return;
        }

        UI.DynamicPageHelper.lockLoad();
        var page = UI.DynamicPageHelper.getPrevPageNumber();
        loadProjectList(page, 'prev');
      }

      /**
       * 다음 페이지 로더
       */
      function loadNextPage() {
        if ($('.last_page_flag').length !== 0) {
          return;
        }

        UI.DynamicPageHelper.lockLoad();
        var page = UI.DynamicPageHelper.getNextPageNumber();
        loadProjectList(page, 'next');
      }

      /**
       * URL Hash fragment 를 변경한다.
       * Hash fragment는 다이나믹 페이지 렌더링을 할 때만 필요하고 해당 기능을 사용하지 않으면 관리할 필요없다.
       * @param projectSeq {string} [optional] 프로젝트 식별번호
       * @param page {string} [optional] 페이지 번호
       */
      function changeHashParameters(projectSeq, page) {
        var categoryCode = UI.ProjectList.getSelectedCategoryCode();
        var sorting = UI.ProjectList.getSortingValue();
        var hashParam = '';

        hashParam += '&page=' + ((page) ? page : 1);

        hashParam = (categoryCode) ? (hashParam + '&category=' + categoryCode) : hashParam;
        hashParam = (sorting) ? (hashParam + '&sorting=' + sorting) : hashParam;
        hashParam = (projectSeq) ? (hashParam + '&projectSeq=' + projectSeq) : hashParam;

        location.hash = hashParam;
      }
    </script>
</head>
<body class="">
<div id="omcIndex">
    <a href="#omcGnb" class="shortcut">주메뉴 바로가기</a>
    <a href="#omcSearch" class="shortcut">검색 바로가기</a>
    <a href="#omcBody" class="shortcut">본문 바로가기</a>
</div>

<div id="omcWrap">
    <!-- header -->
    

<header id="omcHead"><!-- 헤더랑 만나는 순간 class="fixed" 추가 -->
    <div class="inner">
        <h1 class="logo"><a href="https://www.ohmycompany.com/main" class="link_site"><span class="ir_wa">오마이컴퍼니</span></a></h1>
        <button type="button" class="btn_menu">
            <span class="screen_out">전체메뉴 열기</span>
            <span class="line1"></span>
            <span class="line2"></span>
            <span class="line3"></span>
        </button>
        <nav id="omcGnb" class="gnb_comm">
            <button type="button" class="btn_menu">
                <span class="screen_out">전체메뉴 열기</span>
                <span class="line1"></span>
                <span class="line2"></span>
                <span class="line3"></span>
            </button>
            
                <div class="member_nav">
                    <a href="https://www.ohmycompany.com/login/form" class="link_cont_login_m">로그인</a>
                </div>
            
            <h2 class="screen_out">전체 메뉴</h2>
            <div class="search_mobile">
                <fieldset class="fld_search">
                    <legend class="screen_out">검색</legend>
                    <input type="search" id="inpMenubarSearch" name="search" class="inp_search inp_menubar_search" title="검색어 입력" placeholder="프로젝트 검색하기" font-size="22px">
                    <button id="menubarSearchButton" type="button" class="btn_search" title="검색하기"><span class="ico_search"></span></button>
                </fieldset>
            </div>
            <ul class="list_gnb">
                
                
                
                
                
                <li><a href="list.html" class="link_menu">후원하기</a></li>
                <li><a href="https://www.ohmycompany.com/invest/list" class="link_menu">투자하기</a></li>
                <li><a href="https://www.ohmycompany.com/apply/intro" class="link_menu">프로젝트 시작하기</a></li>
                <li><a href="https://www.ohmycompany.com/guide/main" class="link_menu">이용가이드</a></li>
            </ul>
            <div class="mobile_show">
                <ul class="list_gnb_contest">
                    <li class="list_title">오마이컴퍼니와 파트너가 함께해요!</li>
                    
                </ul>
                <ul class="list_tag">
                    <li class="list_title">이런 태그 어때요?</li>
                </ul>
                <div id="gnb_tag_list" class="tag_rel">
                    <span class="screen_out">관련 태그</span>
                    
                    
                    
                    
                    
                    
                    
                    
                </div>
                <span class="screen_out">약관메뉴</span>
                <ul class="list_sitemenu">
                    <li><a href="https://www.ohmycompany.com/community/notice" class="link_cont">오마이컴퍼니에서 전해드립니다</a></li>
                    <li><a href="https://www.ohmycompany.com/company/vision" class="link_cont">오마이컴퍼니를 소개합니다</a></li>
                    <li><a href="https://www.ohmycompany.com/policy/rewardTerms" class="link_cont">이용약관</a></li>
                    <li><a href="https://www.ohmycompany.com/policy/rewardPrivacy" class="link_cont">개인정보보호정책</a></li>
                </ul>
            </div>
        </nav>
        
        <form id="omcSearch" class="search_g" name="omcSearch">
            <fieldset class="fld_search">
                <legend class="screen_out">검색</legend>
                <button type="button" id="topSearchBtn" class="btn_search" title="검색하기"><span class="ico_search"></span></button>
                <input type="search" id="inpSearch" name="searchKeyword" class="inp_search" title="검색어 입력" placeholder="프로젝트 검색하기">
                <button type="button" class="btn_close">
                    <span class="screen_out">검색 닫기</span>
                    <span class="line1"></span>
                    <span class="line2"></span>
                </button>
            </fieldset>
        </form>
        
            <h2 class="screen_out">회원 메뉴</h2>
            <div class="member_nav">
                <a href="https://www.ohmycompany.com/login/form" class="link_cont_login">로그인</a>
                <a href="https://www.ohmycompany.com/join/type" class="link_cont_join">회원가입</a>
            </div>
        
    </div>
</header>
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
      form.action = "/main/search;jsessionid=81960BC37095B507868A6A3E9707F01C.server01";
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
    form.action = "/main/search;jsessionid=81960BC37095B507868A6A3E9707F01C.server01";
    form.submit();
  }

</script>	
    <!-- header -->

    <main id="omcContainer" class="cont_support">
        
        <h2 id="omcBody" class="screen_out">후원형 프로젝트</h2>
        <div class="cMain">
            <article id="mContent" class="project_list">
                <h3 class="tit_section">프로젝트에 응원하고 리워드를 받는 펀딩</h3>
                <div class="box_category">
                    <span class="screen_out">카테고리</span>
                    <button type="button" class="btn_select">
                        전체분야
                        
                        <span class="ico_comm"></span>
                    </button>
                    <ul id="category_list" class="list_cate" role="tablist">
                        <li
                                class="on" role="tab">
                            <a class="link_cate">전체<span class="num_count">(1974)</span></a>
                        </li>
                        
                            <li
                                    
                                    role="tab"
                                    data-category-code="CATE_0001">
                                <a class="link_cate">
                                    공간/리빙<span class="num_count">(175)</span>
                                </a>
                            </li>
                        
                            <li
                                    
                                    role="tab"
                                    data-category-code="CATE_0002">
                                <a class="link_cate">
                                    사회이슈<span class="num_count">(367)</span>
                                </a>
                            </li>
                        
                            <li
                                    
                                    role="tab"
                                    data-category-code="CATE_0003">
                                <a class="link_cate">
                                    교육/출판<span class="num_count">(226)</span>
                                </a>
                            </li>
                        
                            <li
                                    
                                    role="tab"
                                    data-category-code="CATE_0005">
                                <a class="link_cate">
                                    문화예술<span class="num_count">(345)</span>
                                </a>
                            </li>
                        
                            <li
                                    
                                    role="tab"
                                    data-category-code="CATE_0006">
                                <a class="link_cate">
                                    지역재생<span class="num_count">(288)</span>
                                </a>
                            </li>
                        
                            <li
                                    
                                    role="tab"
                                    data-category-code="CATE_0007">
                                <a class="link_cate">
                                    푸드<span class="num_count">(334)</span>
                                </a>
                            </li>
                        
                            <li
                                    
                                    role="tab"
                                    data-category-code="CATE_0010">
                                <a class="link_cate">
                                    테크<span class="num_count">(95)</span>
                                </a>
                            </li>
                        
                            <li
                                    
                                    role="tab"
                                    data-category-code="CATE_0012">
                                <a class="link_cate">
                                    뷰티/패션<span class="num_count">(82)</span>
                                </a>
                            </li>
                        
                            <li
                                    
                                    role="tab"
                                    data-category-code="CATE_0013">
                                <a class="link_cate">
                                    여행<span class="num_count">(62)</span>
                                </a>
                            </li>
                        
                    </ul>
                </div>
                <div class="wrap_project">
                    <!-- 2017-08-07 수정 클래스 추가 -->
                    <div class="box_select">
                        <select id="sorting" name="sorting" class="select_sort" title="후원형 프로젝트 목록 분류">
                            <option value="highest" >펀딩금액순</option>
                            <option value="impendence" >마감임박순</option>
                            <option value="latest" >최신순</option>
                            <option value="largest" >참여자순</option>
                            
                            
                            
                        </select>
                    </div>

                    <!-- // 2017-08-07 수정 클래스 추가 -->
                    <span class="screen_out">프로젝트 목록</span>
                    <ul class="list_prj" id="listPrj">
                        <!-- 프로젝트 목록 -->
                    </ul>
                </div>
            </article>
        </div>
    </main>
    <!-- footer -->
    






















<footer id="omcFoot">
    <div class="inner">
        <div class="wrap_notice">
            <h2 class="tit_notice"><a class="link_to_notice" href="https://www.ohmycompany.com/community/notice"><span class="fa fa-bullhorn"></span>공지사항</a></h2>
            <ul class="list_notice">
                
                    <li><a href="https://www.ohmycompany.com/community/notice/21148" class="link_cont">북서울신협 청년언덕펀딩 참가자(청년 크리에이터19) 1차 모집 (~8/31)</a></li>
                
                    <li><a href="https://www.ohmycompany.com/community/notice/21147" class="link_cont">[모집] 2020 부산 사회적경제 기금(BEF) 증권/대출형 크라우드펀딩 컨설팅 참여기업 모집 (~10/30)</a></li>
                
                    <li><a href="https://www.ohmycompany.com/community/notice/21146" class="link_cont">[모집] 2020 부산 사회적경제 기금(BEF) 후원형 크라우드펀딩 참여기업 모집 (~8/23)</a></li>
                
                    <li><a href="https://www.ohmycompany.com/community/notice/21142" class="link_cont">다같이 시작하는 국민 재도전 펀딩 프로젝트 &lt;다시펀딩&gt;</a></li>
                
                    <li><a href="https://www.ohmycompany.com/community/notice/21139" class="link_cont">[모집] 2020 과학기술인협동조합 크라우드펀딩 지원사업 참여팀 모집(~8/31)</a></li>
                
                    <li><a href="https://www.ohmycompany.com/community/notice/21137" class="link_cont">[모집] 2020 사회적경제기업 크라우드펀딩 프로젝트 참가팀 모집 (~10/30)</a></li>
                
                    <li><a href="https://www.ohmycompany.com/community/notice/21131" class="link_cont">[지원사업] 2020년 농식품 크라우드펀딩 지원사업 신청 접수 안내(예산 소진시까지, 선착순)</a></li>
                
            </ul>
        </div>
        <h2 class="screen_out">약관메뉴</h2>
        <ul class="fnb_comm">
            <li><a href="https://www.ohmycompany.com/company/vision" class="link_fnb">회사소개</a></li>
            <li><a href="https://www.ohmycompany.com/policy/rewardTerms" class="link_fnb">이용약관</a></li>
            <li><a href="https://www.ohmycompany.com/policy/rewardPrivacy" class="link_fnb">개인정보보호정책</a></li>
            <li><a href="https://www.ohmycompany.com/sitemap" class="link_fnb">사이트맵</a></li>
        </ul>
        <div class="social_comm">
            <span class="screen_out">소셜네트워크 공유</span>
            <a href="https://www.facebook.com/omc2012" target="_blank" class="link_facebook"><span class="ico_comm">페이스북</span></a>
            <a href="http://pf.kakao.com/_xgUjxml" target="_blank" class="link_pf"><span class="ico_comm">카카오 플러스 친구</span></a>
            <a href="https://post.naver.com/omcofficial" target="_blank" class="link_blog"><span class="ico_comm">네이버 블로그</span></a>
            <a href="https://www.instagram.com/oh_mycompany" target="_blank" class="link_instagram"><span class="ico_comm">인스타그램</span></a>
        </div>
        <div class="site_info">
            <h2 class="site_logo">오마이컴퍼니 사업자 정보</h2>
            <address>
                <span class="txt_addr">서울시 은평구 통일로 684 ( 녹번동 5번지) 1동 미래청 6층 602호 - C</span>
                <span class="txt_info">대표번호:02-388-2556</span>
                <span class="txt_info">대표자명:성진경</span>
                <span class="txt_info">사업자등록번호:209-81-56911</span>
                <span class="txt_info">통신판매업신고:제2018-서울은평-0376호</span>
                <span class="txt_info">대표이메일주소:omc@ohmycompany.com</span>
            </address>
            <div class="warning">㈜오마이컴퍼니는 크라우드펀딩 플랫폼을 운영하는 중개자(온라인소액투자중개업, 통신판매중개자)로서 크라우드펀딩 프로젝트를 진행하는 당사자가 아니기에, 투자로 인한 손실 보전, 리워드 제공을 담보해 드리지 못합니다.</div>
            <small>Copyright(c) 2018 All Rights Reserved.</small>
        </div>
        <a href="#omcWrap" class="link_top"><span class="ico_comm">맨위로</span></a>
    </div>

    <script src="https://www.ohmycompany.com/omc/asset/js/jquery.bxslider.min.js"></script>
    <script src="https://www.ohmycompany.com/omc/asset/js/ui.js"></script>
    <script src="https://www.ohmycompany.com/omc/asset/js/omc.ui.js"></script>
</footer>

<!-- 공통레이어얼랏 -->





<div id="wrapLoading" class="wrap_loading" style="display: none;">
    <div class="loading_page">
        <div class="loading_txt">로딩중입니다.</div>
    </div>
</div>
<!-- 공통레이어얼랏 -->

<!--Start of Tawk.to Script-->
<script type="text/javascript">
  var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
  (function () {
    var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
    s1.async = true;
    s1.src = 'https://embed.tawk.to/58f81e30f7bbaa72709c735c/default';
    s1.charset = 'UTF-8';
    s1.setAttribute('crossorigin', '*');
    s0.parentNode.insertBefore(s1, s0);
  })();
</script>
<!--End of Tawk.to Script-->
<!-- 2017-11-27 form 태그는 중첩하여 사용할 수 없습니다. 수정해주세요.
아래 폼은 파일 다운로드에 필요합니다. 중첩되는 페이지를 수정해야 합니다. -->
<form class="fileDownForm" name="fileDownForm" method="post">
    <input type="hidden" id="filePath" name="filePath"/>
    <input type="hidden" id="fileSname" name="fileSname"/>
    <input type="hidden" id="fileOname" name="fileOname"/>
    <iframe id="fileDownloadFrame" name="fileDownloadFrame" width="0px" height="0px" style="border:0px"></iframe>
</form>
<!-- 2017-11-27 form 태그는 중첩하여 사용할 수 없습니다. 수정해주세요.
위 폼은 파일 다운로드에 필요합니다. 중첩되는 페이지를 수정해야 합니다. -->

<!-- 통합플랫폼 구글 애널리틱스 연동 by rookie 2017.12.06 -->
<script>
  (function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r;
    i[r] = i[r] || function () {
      (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date();
    a = s.createElement(o),
        m = s.getElementsByTagName(o)[0];
    a.async = 1;
    a.src = g;
    m.parentNode.insertBefore(a, m)
  })(window, document, 'script', '../../www.google-analytics.com/analytics.js', 'ga');

  if (location.host === "www.ohmycompany.com") {
    ga('create', 'UA-72486438-4', 'auto');
    ga('send', 'pageview');
  }
</script>
<!-- 통합플랫폼 구글 애드센스 연동 by rookie 2017.12.06 -->
<script type="text/javascript">
  if (location.host === "www.ohmycompany.com") {
    /* <![CDATA[ */
    var google_conversion_id = 848005977;
    var google_custom_params = window.google_tag_params;
    var google_remarketing_only = true;
    /* ]]> */
  }
</script>
<div style="display:none">
    <script type="text/javascript" src="../../www.googleadservices.com/pagead/f.txt"></script>
</div>
<noscript>
    <div style="display:inline;">
        <img height="1" width="1" style="border-style:none;" alt="" src="http://googleads.g.doubleclick.net/pagead/viewthroughconversion/848005977/?guid=ON&amp;script=0"/>
    </div>
</noscript>
<!-- 통합플랫폼 네이버웹분석기 연동 by rookie 2017.12.06 -->
<script type="text/javascript" src="../../wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
  if (location.host === "www.ohmycompany.com") {
    if (!wcs_add) var wcs_add = {};
    wcs_add["wa"] = "f92dd5016bcad0";
    wcs_do();
  }
</script>




    <!-- footer -->
</div>
</body>

<!-- Mirrored from www.ohmycompany.com/reward/list by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Aug 2020 11:10:59 GMT -->
</html>