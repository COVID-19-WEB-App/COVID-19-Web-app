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
      <jsp:include page="/WEB-INF/views/include/header.jsp" />
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta name="naver-site-verification" content="9cf6afa832a16b3ba913b7d07418de0d0c349d38"/>
<meta name="facebook-domain-verification" content="150en2tc35wmdzse3qrrebsw5uuchw"/>

<link rel="stylesheet" type="text/css" href="/resources/static/css/sharelist.css"/>

<link rel="stylesheet" type="text/css" href="https://www.ohmycompany.com/omc/asset/js/uikit/uikit.css">

    <meta property="og:type" content="website"/>
    <meta property="og:title" content="크라우드펀딩 오마이컴퍼니"/>
    <meta property="og:description" content="후원형, 투자형 크라우드펀딩, 임팩트펀딩, 가치펀딩, 아이디어, 스타트업, 소셜벤처"/>
    <meta property="og:image" content="https://www.ohmycompany.com/omc/asset/images/og_image_logo.jpg"/>
    <meta property="og:image:width" content="800"/>
    <meta property="og:image:height" content="800"/>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="https://www.ohmycompany.com/omc/asset/js/jquery-1.12.4.js"></script>
<script src="https://www.ohmycompany.com/omc/asset/js/isMobile.min.js"></script>
<script src="https://www.ohmycompany.com/omc/asset/js/common/jquery.form.js"></script>
<script src="https://www.ohmycompany.com/omc/asset/js/common/jquery-scrollLock.min.js"></script>
<script src="https://www.ohmycompany.com/omc/asset/js/uikit/uikit.min.js"></script>
<script src="https://www.ohmycompany.com/omc/asset/js/ui.js"></script>
<!-- Swiper -->
<link rel="stylesheet" href="../../cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.2/css/swiper.min.css">
<script src="../../cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.2/js/swiper.min.js"></script>

<!-- 공통 유틸 js -->
<script src="https://www.ohmycompany.com/omc/asset/js/common/commonUtil.js?ver=20191030"></script>





</head>

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
                        
                            <li>
                                    
                                  
                                <a class="link_cate">
                                    공간/리빙<span class="num_count">(175)</span>
                                </a>
                            </li>
                        
                            <li>
                                    
                                   
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
                            <option value="highest">펀딩금액순</option>
                            <option value="impendence">마감임박순</option>
                            <option value="latest">최신순</option>
                            <option value="largest">참여자순</option>
                        </select>
                    </div>

                    <!-- // 2017-08-07 수정 클래스 추가 -->
                    <span class="screen_out">프로젝트 목록</span>
                    <ul class="list_prj" id="listPrj">


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
      </script>

    <span class="first_page_flag" style="display: none;"></span>


<div class="page-wrapper" style="display: block; overflow: auto;">




<li class="project_card reward_project_card">
    <div class="project_card_inner">
        <a href="/share/detail.do" class="project_detail_link">
            <span class="project_thumbnail" style="background-image:url('/resources/upload/ncov/20200319165951.png')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
<!--                 <a href="/share/detail.do" class="project_detail_link"> -->
                    고려인 아이들이 한글을 배울 수 있게 도와주세요
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                고려인 한글 유치원 후원
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200804093209983.png" alt="profile">
            
            
        
    </span>
    <span class="txt_name">사단법인 희망래일</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                사회이슈
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        3,253,000원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                                <span class="bar_graph" style="width:92%;"></span>
                            
                            
                        
                        <span class="invest_rate">
                            92%
                        </span>
                    </div>
                    
                        
                        
                            <span class="funding_type">무조건 리워드</span>
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="8817" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8817" class="project_detail_link" data-project-seq="8817" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200805020305541.png')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8817" class="project_detail_link" data-project-seq="8817" data-page-number="1">
                    포기해야 살 수 있는 사람들, 단편영화 &lt;미소&gt;
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                동아방송예술대학교 졸업작품 &lt;미소&gt;
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200805015453550.jpg" alt="profile">
            
            
        
    </span>
    <span class="txt_name">이혁주</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                문화예술
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        2,180,000원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                                <span class="bar_graph" style="width:54%;"></span>
                            
                            
                        
                        <span class="invest_rate">
                            54%
                        </span>
                    </div>
                    
                        
                        
                            <span class="funding_type">무조건 리워드</span>
                
                
            
        </div>
    </div>
</li>

        
        
        



<li class="project_card reward_project_card" data-project-seq="8725" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8725" class="project_detail_link" data-project-seq="8725" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200729060045917.jpg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8725" class="project_detail_link" data-project-seq="8725" data-page-number="1">
                    기부가 기적이 되는 원포원 프로젝트, &lt;#덕분에 콘서트&gt;
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                의료진과 예술가를 위한 문화콘서트
            </p>
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200628081127301.png" alt="profile">
            
            
        
    </span>
    <span class="txt_name">주식회사 케이아트팩토리</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                문화예술
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        2,112,700원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                                <span class="bar_graph" style="width:21%;"></span>
                            
                            
                        
                        <span class="invest_rate">
                            21%
                        </span>
                    </div>
                    
                        
                            <span class="funding_type">성공해야 리워드</span>
                        
            
        </div>
    </div>
</li>

        



<li class="project_card reward_project_card" data-project-seq="8614" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8614" class="project_detail_link" data-project-seq="8614" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200709033053512.jpg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8614" class="project_detail_link" data-project-seq="8614" data-page-number="1">
                    [앵콜] 마음의 문이 열리는 시간, 메리노크 보드게임
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                서로를 알아가는 대화유발 보드게임
            </p>
            

    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200705113331149.jpg" alt="profile">
            
            
        
    </span>
    <span class="txt_name">마인도어사회적협동조합</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                사회이슈
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        1,756,000원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                                                    
                            
                                <span class="bar_graph" style="width:100%;"></span>
                            
                        
                        <span class="invest_rate">
                            175%
                        </span>
                    </div>
                    
                        
                            <span class="funding_type">성공해야 리워드</span>
                        
            
        </div>
    </div>
</li>


<li class="project_card reward_project_card" data-project-seq="8655" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8655" class="project_detail_link" data-project-seq="8655" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200728114313364.jpg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8655" class="project_detail_link" data-project-seq="8655" data-page-number="1">
                    습지가 없었다면 어떻게 살았을까?
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                사라져가는 습지 보호 프로젝트
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200709045733646.jpg" alt="profile">
            
            
        
    </span>
    <span class="txt_name">선흘리새마을회</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                지역재생
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        1,393,000원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                                <span class="bar_graph" style="width:69%;"></span>
                            
                            
                        
                        <span class="invest_rate">
                            69%
                        </span>
                    </div>
                    
                        
                        
                            <span class="funding_type">무조건 리워드</span>
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="8634" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8634" class="project_detail_link" data-project-seq="8634" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200731094934722.png')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8634" class="project_detail_link" data-project-seq="8634" data-page-number="1">
                    [2차] 콜롬비아 와유족이 만든 100% 수공예품 모칠라백
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                세상에 단 하나뿐인 수공예 모칠라백
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200608012825742.jpg" alt="profile">
            
            
        
    </span>
    <span class="txt_name">함께하는사랑밭</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                뷰티/패션
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        1,187,000원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                            
                                <span class="bar_graph" style="width:100%;"></span>
                            
                        
                        <span class="invest_rate">
                            118%
                        </span>
                    </div>
                    
                        
                        
                            <span class="funding_type">무조건 리워드</span>
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="8605" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8605" class="project_detail_link" data-project-seq="8605" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200730043000849.jpg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8605" class="project_detail_link" data-project-seq="8605" data-page-number="1">
                    색동의 좋은 기운을 담은 날날이가방
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                전통문화 속 깊은 의미를 담았습니다
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200727092948126.png" alt="profile">
            
            
        
    </span>
    <span class="txt_name">(주)한복문화연구소한땀 </span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                뷰티/패션
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        1,144,900원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                            
                                <span class="bar_graph" style="width:100%;"></span>
                            
                        
                        <span class="invest_rate">
                            228%
                        </span>
                    </div>
                    
                        
                            <span class="funding_type">성공해야 리워드</span>
                        
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="8598" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8598" class="project_detail_link" data-project-seq="8598" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200714040423593.jpg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8598" class="project_detail_link" data-project-seq="8598" data-page-number="1">
                    코로나로 어려운 이웃을 돕는 나만의 통가죽 수제품
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                통가죽의 매력과 나눔의 가치
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200711112310291.png" alt="profile">
            
            
        
    </span>
    <span class="txt_name">굿워커스</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                사회이슈
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        901,000원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                                <span class="bar_graph" style="width:90%;"></span>
                            
                            
                        
                        <span class="invest_rate">
                            90%
                        </span>
                    </div>
                    
                        
                        
                            <span class="funding_type">무조건 리워드</span>
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="8770" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8770" class="project_detail_link" data-project-seq="8770" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200806112459805.jpg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8770" class="project_detail_link" data-project-seq="8770" data-page-number="1">
                    인도의 공정무역 제품과 한국의 디자인이 만나다
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                파란 청량감의 나무와 재스민향
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200728045004007.PNG" alt="profile">
            
            
        
    </span>
    <span class="txt_name">아로마랑</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                공간/리빙
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        760,000원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                                <span class="bar_graph" style="width:8%;"></span>
                            
                            
                        
                        <span class="invest_rate">
                            8%
                        </span>
                    </div>
                    
                        
                            <span class="funding_type">성공해야 리워드</span>
                        
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="8749" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8749" class="project_detail_link" data-project-seq="8749" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200729105034416.jpeg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8749" class="project_detail_link" data-project-seq="8749" data-page-number="1">
                    우리는 순수할 수 없을까? 단편영화 &lt;순수의 숲: 직시의 습격&gt;
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                단편영화 &lt;순수의 숲: 직시의 습격&gt;
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/IF4_data/member/00000_517_photo1_KakaoTalk_20171009_232525275.jpg" alt="profile">
            
            
        
    </span>
    <span class="txt_name">강동원</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                문화예술
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        680,000원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                                <span class="bar_graph" style="width:68%;"></span>
                            
                            
                        
                        <span class="invest_rate">
                            68%
                        </span>
                    </div>
                    
                        
                            <span class="funding_type">성공해야 리워드</span>
                        
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="8644" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8644" class="project_detail_link" data-project-seq="8644" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200711054026361.jpg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8644" class="project_detail_link" data-project-seq="8644" data-page-number="1">
                    산삼 품은 떡에 맛까지 더하다.
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                쫄깃쫄깃 굳지 않는 떡
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200710065849938.jpg" alt="profile">
            
            
        
    </span>
    <span class="txt_name">아셀떡</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                푸드
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        663,000원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                                <span class="bar_graph" style="width:66%;"></span>
                            
                            
                        
                        <span class="invest_rate">
                            66%
                        </span>
                    </div>
                    
                        
                        
                            <span class="funding_type">무조건 리워드</span>
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="8629" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8629" class="project_detail_link" data-project-seq="8629" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200709051109273.jpg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8629" class="project_detail_link" data-project-seq="8629" data-page-number="1">
                    직접 재배한 블루베리 듬뿍,  블루베리식빵 정기배송
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                블루베리 듬뿍 건강식빵 정기배송 
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200708101002714.jpg" alt="profile">
            
            
        
    </span>
    <span class="txt_name">농업회사법인채향원주식회사</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                푸드
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        540,000원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                            
                                <span class="bar_graph" style="width:100%;"></span>
                            
                        
                        <span class="invest_rate">
                            108%
                        </span>
                    </div>
                    
                        
                        
                            <span class="funding_type">무조건 리워드</span>
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="8758" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8758" class="project_detail_link" data-project-seq="8758" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200728111626049.jpg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8758" class="project_detail_link" data-project-seq="8758" data-page-number="1">
                    합리적인 가격의 샤워시설 공유 서비스 샤워미!
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                운동센터의 샤워시설을 공유하는 샤워미
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200727021216478.png" alt="profile">
            
            
        
    </span>
    <span class="txt_name">주식회사 리벨로</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                테크
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        230,000원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                                <span class="bar_graph" style="width:46%;"></span>
                            
                            
                        
                        <span class="invest_rate">
                            46%
                        </span>
                    </div>
                    
                        
                            <span class="funding_type">성공해야 리워드</span>
                        
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="8734" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8734" class="project_detail_link" data-project-seq="8734" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200810060412130.png')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8734" class="project_detail_link" data-project-seq="8734" data-page-number="1">
                    멸종위기동물 노란목도리 담비 인형&amp;와펜
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                핸드메이드 네발/두발 포즈 담비 인형
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200724121643683.jpg" alt="profile">
            
            
        
    </span>
    <span class="txt_name">네모토피아</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                문화예술
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        157,500원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                                <span class="bar_graph" style="width:31%;"></span>
                            
                            
                        
                        <span class="invest_rate">
                            31%
                        </span>
                    </div>
                    
                        
                        
                            <span class="funding_type">무조건 리워드</span>
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="8549" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8549" class="project_detail_link" data-project-seq="8549" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200708115922882.jpg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8549" class="project_detail_link" data-project-seq="8549" data-page-number="1">
                    우리 아이들이 침구류로도 차별받는 사실을 아시나요?
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                뽀송뽀송 출산축하선물세트
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200616012043798.jpg" alt="profile">
            
            
        
    </span>
    <span class="txt_name">마마포미</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                사회이슈
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        126,000원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                                <span class="bar_graph" style="width:6%;"></span>
                            
                            
                        
                        <span class="invest_rate">
                            6%
                        </span>
                    </div>
                    
                        
                        
                            <span class="funding_type">무조건 리워드</span>
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="8636" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8636" class="project_detail_link" data-project-seq="8636" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200709032448844.jpg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8636" class="project_detail_link" data-project-seq="8636" data-page-number="1">
                    고추 외길인생 32년, 해남산 황토방 건조 햇 고춧가루
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                EM세척살균! 국내유일의 황토방건조!
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200709023329931.jpg" alt="profile">
            
            
        
    </span>
    <span class="txt_name">천사의땅 영농조합법인</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                푸드
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        113,800원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                                <span class="bar_graph" style="width:11%;"></span>
                            
                            
                        
                        <span class="invest_rate">
                            11%
                        </span>
                    </div>
                    
                        
                        
                            <span class="funding_type">무조건 리워드</span>
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="8853" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8853" class="project_detail_link" data-project-seq="8853" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200807011031763.jpg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8853" class="project_detail_link" data-project-seq="8853" data-page-number="1">
                    코로나19로 어려움 당하는 장애예술인 돕기, 이음바자회
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                착한소비로 사랑을 실천하는 이음바자회
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20190925124145413.JPG" alt="profile">
            
            
        
    </span>
    <span class="txt_name">(사)빛된소리글로벌예술협회</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                문화예술
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        100,000원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                                <span class="bar_graph" style="width:5%;"></span>
                            
                            
                        
                        <span class="invest_rate">
                            5%
                        </span>
                    </div>
                    
                        
                        
                            <span class="funding_type">무조건 리워드</span>
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="8686" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8686" class="project_detail_link" data-project-seq="8686" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200724103546519.jpg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8686" class="project_detail_link" data-project-seq="8686" data-page-number="1">
                    우리가 우리를 후원하는 director025 티셔츠
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                모든 것을 드립니다 -디렉터 025
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200716033646008.png" alt="profile">
            
            
        
    </span>
    <span class="txt_name">director025</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                뷰티/패션
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        70,000원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                                <span class="bar_graph" style="width:14%;"></span>
                            
                            
                        
                        <span class="invest_rate">
                            14%
                        </span>
                    </div>
                    
                        
                        
                            <span class="funding_type">무조건 리워드</span>
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="8619" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8619" class="project_detail_link" data-project-seq="8619" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200730114205643.jpg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8619" class="project_detail_link" data-project-seq="8619" data-page-number="1">
                    한글에 꾹꾹 눌러담은 어르신들의 꿈
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                한글교실 응원 프로젝트
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20191216070502581.png" alt="profile">
            
            
        
    </span>
    <span class="txt_name">창동종합사회복지관</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                사회이슈
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        62,000원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                                <span class="bar_graph" style="width:20%;"></span>
                            
                            
                        
                        <span class="invest_rate">
                            20%
                        </span>
                    </div>
                    
                        
                            <span class="funding_type">성공해야 리워드</span>
                        
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="8643" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8643" class="project_detail_link" data-project-seq="8643" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200710024630562.jpg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8643" class="project_detail_link" data-project-seq="8643" data-page-number="1">
                    마을의 이야기를 담은 짜먹는 잼 JAMPLE
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                짜먹는 국내산 딸기,오디,단호박 잼
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200710020628401.jpg" alt="profile">
            
            
        
    </span>
    <span class="txt_name">가로주름주식회사</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                지역재생
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        61,700원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                                <span class="bar_graph" style="width:12%;"></span>
                            
                            
                        
                        <span class="invest_rate">
                            12%
                        </span>
                    </div>
                    
                        
                            <span class="funding_type">성공해야 리워드</span>
                        
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="8671" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8671" class="project_detail_link" data-project-seq="8671" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200724052448239.jpg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8671" class="project_detail_link" data-project-seq="8671" data-page-number="1">
                    [1 for 1] 세상을 바꾸는 당신의 티셔츠 한 장
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                입으세요 그리고 세상을 바꾸세요
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200715124334622.jpg" alt="profile">
            
            
        
    </span>
    <span class="txt_name">(주)캐릭터콘텐츠센터</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                뷰티/패션
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        18,000원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                                <span class="bar_graph" style="width:3%;"></span>
                            
                            
                        
                        <span class="invest_rate">
                            3%
                        </span>
                    </div>
                    
                        
                            <span class="funding_type">성공해야 리워드</span>
                        
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="8793" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/8793" class="project_detail_link" data-project-seq="8793" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20200807085619146.png')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/8793" class="project_detail_link" data-project-seq="8793" data-page-number="1">
                    "마음 이야기" 심리상담 프로젝트
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                건강한 가족공동체를 위한 상담프로젝트
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20200730053427229.png" alt="profile">
            
            
        
    </span>
    <span class="txt_name">에듀먼트 주식회사</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                교육/출판
            </span>
        </div>
        <div class="project_state">
            
                
                    <span class="total_amount">
                        <span class="screen_out">현재 참여금액</span>
                        0원
                    </span>
                    <div class="project_card_graph">
                        <span class="screen_out">참여율</span>
                        
                            
                                <span class="bar_graph" style="width:0%;"></span>
                            
                            
                        
                        <span class="invest_rate">
                            0%
                        </span>
                    </div>
                    
                        
                        
                            <span class="funding_type">무조건 리워드</span>
                        
                    
                
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="153" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/153" class="project_detail_link" data-project-seq="153" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/upload/VonList/00153_827_bon_blm_p02.jpg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/153" class="project_detail_link" data-project-seq="153" data-page-number="1">
                    위안부 역사관 맨투맨티 제작
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                희움더클래식의 일본군 위안부 역사관 건립기금을 위한 표현,공감,참여 프로젝트입니다.
            </p>
            








    
    
        
    

<span class="user_profile">
    <span class="img_profile">
        
            
            
        
    </span>
    <span class="txt_name">블루밍 패션</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                공간/리빙
            </span>
        </div>
        <div class="project_state">
            
                
                
                    <p class="state_text">
                        <span class="state_number">4,429</span>명이 프로젝트에 참여했습니다.<br>
                        총 <span class="state_number">175,759,111원</span> 모집<span class="txt_success">성공</span>
                    </p>
                
            
        </div>
    </div>
</li>

        
        
        
    

    
        
            






<li class="project_card reward_project_card" data-project-seq="5792" data-page-number="1">
    <div class="project_card_inner">
        <a href="/reward/5792" class="project_detail_link" data-project-seq="5792" data-page-number="1">
            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_20180822114835026.jpg')"></span>
        </a>
        <div class="project_card_info">
            <span class="screen_out">프로젝트 제목</span>
            <h3 class="project_name">
                <a href="/reward/5792" class="project_detail_link" data-project-seq="5792" data-page-number="1">
                    월경은 ‘그날’이 아닙니다.
                </a>
            </h3>
            <p class="project_simple_text">
                <span class="screen_out">프로젝트 설명</span>
                입문자를 위한 월경컵, 루나컵
            </p>
            








    
        
    
    

<span class="user_profile">
    <span class="img_profile clear_empty_picture">
        
            
                <img src="/uploads/member/profile/MEMBER_20180818055637407.jpg" alt="profile">
            
            
        
    </span>
    <span class="txt_name">루나컵 주식회사</span>
</span>

            <span class="project_category">
                <span class="screen_out">카테고리</span>
                사회이슈
            </span>
        </div>
        <div class="project_state">
            
                
                
                    <p class="state_text">
                        <span class="state_number">4,154</span>명이 프로젝트에 참여했습니다.<br>
                        총 <span class="state_number">142,740,000원</span> 모집<span class="txt_success">성공</span>
                    </p>
                
            
        </div>
    </div>
</li>

        
        
        
    

</div>
	<form class="payload" style="display: none;">
  	  <input class="total_project_count" type="hidden" value="1978">
	</form>

</ul>
              </div>
    





















	<jsp:include page="/WEB-INF/views/include/footer.jsp" />



</body>
</html>