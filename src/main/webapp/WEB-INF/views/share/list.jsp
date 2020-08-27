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
<!-- <link rel="stylesheet" href="../../cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.2/css/swiper.min.css"> -->
<!-- <script src="../../cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.2/js/swiper.min.js"></script> -->

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

//         // 해시 프래그먼트로부터 페이지 상태 복원
//         var hashParams = CommonUtil.getHashParam();
//         var categoryCode = (hashParams.hasOwnProperty('category')) ? hashParams.category : null;
//         var sorting = (hashParams.hasOwnProperty('sorting')) ? hashParams.sorting : null;
//         UI.ProjectList.changeSelectedCategory(categoryCode);
//         if (sorting) {
//           $('#sorting').val(sorting);
//         }

//         // 스크롤링을 통한 자동 프로젝트 목록 로딩을 위한 설정
//         UI.DynamicPageHelper.setPrevPageLoader(loadPrevPage);
//         UI.DynamicPageHelper.setNextPageLoader(loadNextPage);
//         var initPage = (hashParams.hasOwnProperty('page')) ? parseInt(hashParams.page) : 1;
//         initPage = (initPage) ? initPage : 1;
//         UI.DynamicPageHelper.on(initPage);
//         loadInitialPage(initPage);
//       });
      </script>
<!-- 공통 유틸 js -->
<script src="https://www.ohmycompany.com/omc/asset/js/common/commonUtil.js?ver=20191030">
</script>


<!-- 무한스크롤 -->
<script type="text/javascript">
var page = 1;

$(window).scroll(function(){
   
   if($(window).scrollTop() >= $(document).height() - $(window).height()){
		page++
      console.log(page);
	   if('${paging.lastPage }' >= page  ) {
	      loadlist();
      }      
   }
//    var wintop = $(window).scrollTop(), docheight = $('article').height(), winheight = $(window).height()*3;
//    console.log(wintop);
//    var totalScroll = (wintop/(docheight-winheight))*100;
//    console.log("total scroll" + totalScroll);
//    $(".progress-bar").css("width",-totalScroll-50+"%");
   });

function loadlist() {
   $.ajax({
      type:"post"
      , url: "/share/list.do"
      , data: {
    	  cPage : page
      }
      , dataType: "html"
      , success: function(data) {
//     	console.log(data)
    	  $(".scroll-final").append(data)
      	
      }
      , error: function() {
         console.log("AJAX error")
      }
   })
}   
</script>



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



	    <span class="first_page_flag" style="display: none;"></span>
	
	
	<div class="page-wrapper" style="display: block; overflow: auto;">
	<c:forEach items="${list.nlist }" var="list" varStatus="i">
	
		<li class="project_card reward_project_card">
		    <div class="project_card_inner">
		     	<a href="/share/detail.do?share_idx=${list.SHARE_IDX }" class="project_detail_link">
		        	<span class="project_thumbnail" style="background-image:url('/resources/upload/share/${list.RENAME_FILE}')"></span>
		        </a>
		        <div class="project_card_info">
		            <span class="screen_out">${list.SHARE_NAME }</span>
		            <h3 class="project_name">
		<!--        <a href="/share/detail.do" class="project_detail_link"> -->
		                  ${list.SHARENAME }
		                </a>
		            </h3>
		            <p class="project_simple_text">
		                <span class="screen_out">프로젝트 설명</span>
		                ${list.SIMPLEINFO }
		            </p>
		<span class="user_profile">
		    <span class="img_profile clear_empty_picture">
		                <img src="/uploads/member/profile/MEMBER_20200804093209983.png" alt="profile">
		    </span>
		    <span class="txt_name">사단법인 희망래일</span>
		</span>
		            <span class="project_category">
		                <span class="screen_out">카테고리</span>
		               	${list.FEIELD }
		            </span>
		        </div>
		        <div class="project_state">
		                    <span class="total_amount">
		                        <span class="screen_out">현재 참여금액</span>
		                        ${list.SHAREMONEY }
		                    </span>
		                    <div class="project_card_graph">
		                        <span class="screen_out">참여율</span>
		                                <span class="bar_graph" style="width:20%;"></span>
		                        <span class="invest_rate">
		                            20%
		                        </span>
		                    </div>
		                            <span class="funding_type">무조건 리워드</span>
		        </div>
		    </div>
		</li>
	</c:forEach>
	</div>
	</ul>
	       <div class = "scroll-final">
	       </div>
	       
	</div>
<!-- 		<form class="payload" style="display: none;"> -->
<!-- 	  	  <input class="total_project_count" type="hidden" value="1978"> -->
<!-- 		</form> -->
<!-- 	</ul> -->
	              </div>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>




</html>