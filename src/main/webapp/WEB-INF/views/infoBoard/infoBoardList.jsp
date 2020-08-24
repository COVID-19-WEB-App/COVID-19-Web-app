<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<html lang="ko">
<!-- Mirrored from ncov.mohw.go.kr/infoBoardList.do?brdId=3&brdGubun=32 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Aug 2020 04:48:24 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
<title>코로나바이러스감염증-19 &gt; 정보공유 & FAQ &gt; 정보공유

	 &gt; 전체
</title>

	
<meta name="description" content="코로나바이러스감염증-19,홍보자료 & FAQ,홍보자료,전체">
<meta property="og:description" content="코로나바이러스감염증-19,홍보자료 & FAQ,홍보자료,전체">	
	

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes">
<meta name="author" content="보건복지부, 코로나바이러스감염증-19(COVID-19), 질병관리본부">     
<meta name="keywords" content="코로나바이러스감염증-19(COVID-19), 코로나바이러스감염증-19, 코로나바이러스, 보건복지부">	
<meta name="copyright" content="보건복지부">

<meta property="og:url" content="index.html">
<meta property="og:type" content="website">
<meta property="og:site_name" content="코로나바이러스감염증-19(COVID-19)">
<meta property="og:locale" content="ko">
<meta property="og:title" content="코로나바이러스감염증-19(COVID-19)">
<meta property="og:image" content="static/image/header/homeimg.png"> 
    
<link rel="icon" type="image/png" sizes="64x64" href="static/image/header/ROK.png">
<link rel="stylesheet" href="static/css/co_common890c.css?ver=20200629">
<link rel="stylesheet" href="static/css/co_componenteeec.css?ver=20200702">
<link rel="stylesheet" href="static/css/lightslider.min.css">
<body>



<script src="static/js/jquery-1.11.2.min.js"></script>
<script src="static/js/lightslider.min.js"></script>
<script src="static/js/co_common890c.js?ver=20200629"></script>

<script type="text/javaScript" language="javascript">

function fn_goMenu(url, brd_id, brd_gubun, data_Gubun){
	
	$("#brdId").val(brd_id);
	$("#brdGubun").val(brd_gubun);
	$("#dataGubun").val(data_Gubun);

	var frm = $("#menuFrm");
	frm.attr("action", url);
	frm.submit();
}

function fn_boardView(url, brdId, brdGubun, ncvContSeq, board_id, dataGubun){
	$("#brdId").val(brdId);
	$("#brdGubun").val(brdGubun);
	$("#ncvContSeq").val(ncvContSeq);
	$("#contSeq").val(ncvContSeq);
	$("#board_id").val(board_id);
	$("#dataGubun").val(dataGubun);

	var frm = $("#menuFrm");
	frm.attr("action", url);
	frm.submit();
}

function fn_tcm_boardView(url, brdId, brdGubun, ncvContSeq, board_id, gubun){
	
	$("#brdId").val(brdId);
	$("#brdGubun").val(brdGubun);
	$("#ncvContSeq").val(ncvContSeq);
	$("#contSeq").val(ncvContSeq);
	$("#board_id").val(board_id);
	$("#gubun").val(gubun);
	
	var frm = $("#menuFrm");
	frm.attr("action", url);
	frm.submit();
	
}


function search( where ){
	
	var thisForm = $("#"+ where);
	var thisSearch = $(thisForm).find("#searchTerm");
	var cont = $(thisSearch).val();
	
	//특수문자 체크
	if (containsChars(cont,"~!@#$%^&*()+|`=\\[]{};:'\".<>/?")) {
		alert("특수문자는 제외하고 검색해주시기 바랍니다.");
		$(thisSearch).val("");
		event.preventDefault();
		return false;
	}else if ( cont == "" || cont == null || cont == undefined){
		alert("검색어를 입력하세요");
		$(thisSearch).focus();
		event.preventDefault();
		return false;
	}
	
	return true;		
	
}



</script>

	<link rel="stylesheet" href="static/css/chart_kr0a6d.css?ver=20200710">
	<script src="static/js/Chart.min.js"></script>
	<script src="static/js/chartjs-plugin-datalabels.min.js"></script>
	<script src="static/js/chart_krff8e.js?ver=20200724"></script>

<form name="menuFrm" id="menuFrm" method="get">
	<input name="brdId" id="brdId" type="hidden" />
	<input name="brdGubun" id="brdGubun" type="hidden" />
	<input name="dataGubun" id="dataGubun" type="hidden" />
	<input name="ncvContSeq" id="ncvContSeq" type="hidden" />
	<input name="contSeq" id="contSeq" type="hidden" />
	<input name="board_id" id="board_id" type="hidden" />
	<input name="gubun" id="gubun" type="hidden" />
</form>
</head>

<body>
<div class="wrap nj">

<script type="text/javaScript" language="javascript">

function fn_search(pageNo){
	$("#pageIndex").val(pageNo);
	fn_submit();
}

function fn_submit(){
	var frm = $("#form1");
	frm.attr("action", "/infoBoardList.do");
	frm.submit();
}




</script>

<form name="form1" id="form1" method="post">
<input name="pageIndex" id="pageIndex" type="hidden" value="" />

<input type="hidden" id="ncv_file_seq" name="ncv_file_seq" value="" />
<input type="hidden" id="file_path" name="file_path" value="" />
<input type="hidden" id="file_name" name="file_name" value="" />
<input type="hidden" id="brdId" name="brdId" value="3" />
<input type="hidden" id="brdGubun" name="brdGubun" value="32" />
<input type="hidden" id="dataGubun" name="dataGubun" value="" />
<input type="hidden" id="ncvContSeq" name="ncvContSeq" />

	<div class="container"><!-- main_container -->
		<div>
			<div id="content" class="content">
				<div>
		            <div class="sub_top">
		                <div class="st_navigation">
		                    <ul>
		                        <li><a href="index.html"><span class="hdn">홈</span></a></li>
		                        <li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoardList.do', '3', '32', '');">정보공유 & FAQ</a></li>
		                        <li><a href="infoBoardList306c.html?brdId=3&amp;brdGubun=32">정보공유</a></li>
		                    </ul>
		                </div>
		                <div class="st_title">
		                    <div class="fl_l">
		                        <h3>정보공유</h3>
		                    </div>
		                </div>
		            </div>
		            <!--텝메뉴-->
		            
                        <div class="tab_flt cnt6-3-2">
                            <ul>
                                <li class="on"><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoardList.do', '3', '32', '', '');"><span>전체</span></a></li>
                                <li ><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoardList.do', '3', '32', '321', '');"><span>일반인</span></a></li>
                                <li ><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoardList.do', '3', '32', '327', '');"><span>(학)부모</span></a></li>
                                <li ><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoardList.do', '3', '32', '323', '');"><span>입국자 및 해외여행객</span></a></li>
                                <li ><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoardList.do', '3', '32', '322', '');"><span>자가격리자</span></a></li>
                                <li ><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoardList.do', '3', '32', '324', '');"><span>의료기관</span></a></li>
                                <li ><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoardList.do', '3', '32', '325', '');"><span>집단 및 다중이용시설</span></a></li>
                                <li ><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoardList.do', '3', '32', '326', '');"><span>기업 및 시장</span></a></li>
                            </ul>
                        </div>
                    
                        <!--텝메뉴-->
                       
                       <!-- 사회적거리두기 안내 -->
						<div class="menuinfo">
							<p class="m_descript mgt0">*<strong>생활 속 거리 두기</strong> 관련 자료는 <strong>생활 속 거리 두기</strong>메뉴 에서 확인 가능합니다. <a href="guidelineList2bef.html?brdId=6&amp;brdGubun=61"><span class="t_mini">자료 바로가기</span></a></p>
						</div>
                       <!-- 사회적거리두기 안내 //-->
	                <!--게시판 목록-->
	                
	                
	                 
	                <!--게시판 목록-->
	                <div class="board_top">
	                    <div class="fl_l">
	                        <p class="bt_count">총<strong>1043</strong>건</p>
	                    </div>
	                    <div class="fl_r">
	                            <fieldset>
	                                <legend class="hdn">게시물 검색</legend>
	                                <div class="bt_srch">
	                                    <div class="bts_slct">
	                                        <select id="u_shcate" name="search_item" class="select" title="검색항목 선택">
	                                            <option value="1" >제목 </option>
	                                            <option value="2" >내용 </option>
	                                       
	                                        </select>
	                                    </div>
	                                    <div>
	                                        <input type="text" id="search_content" name="search_content" value="" title="검색어를 입력하세요.">
	                                    </div>
	                                    <div class="bts_btn">
	                                        <input type="submit" class="btn btn_sm btn_gray" value="검색">
	                                    </div>
	                                </div>
	                            </fieldset>
	                    </div>
	                </div>
					<div class="board_list">
                        <table>
                            <caption><span class="hdn">전체 목록 : 번호, 제목, 담당, 작성일, 첨부 구성 제목 클릭시 게시물 상세 내용으로
                                    이동</span></caption>
                            <colgroup>
                                <col class="m_dp_n" style="width:64px;">
                                <col>
                                <col class="m_dp_n" style="width:192px;">
                                <col style="width:96px;">
                                <col class="m_dp_n" style="width:64px;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="m_dp_n" scope="col">번호</th>
                                    <th scope="col">제목</th>
                                    <th class="m_dp_n" scope="col">담당</th>
                                    <th scope="col">작성일</th>
                                    <th class="m_dp_n" scope="col">첨부</th>
                                </tr>
                            </thead>
                            <tbody>
                            
							
                                <tr>
                                    <td class="m_dp_n">1043</td>
                                    <td class="ta_l">
                                        <a class="bl_link" href="javascript:void(0);" onclick="javascript:fn_boardView('/infoBoardView.do','3','32','3293', '' , '');">[이미지] 국민내일배움카드 코로나19 한시적 확대 연장 지원</a>
                               			<span class="ico_new"><span class="hdn">새글</span></span>
                                    </td>
                                    <td class="m_dp_n">대한민국 정부</td>
                                    <td>2020-08-05 09:40</td>
                                    <td class="m_dp_n"></td>
                                </tr>
                            
                                <tr>
                                    <td class="m_dp_n">1042</td>
                                    <td class="ta_l">
                                        <a class="bl_link" href="javascript:void(0);" onclick="javascript:fn_boardView('/infoBoardView.do','3','32','3292', '' , '');">[이미지] 7월 소비자물가 2달 만에 상승 전환</a>
                               			<span class="ico_new"><span class="hdn">새글</span></span>
                                    </td>
                                    <td class="m_dp_n">대한민국 정부</td>
                                    <td>2020-08-05 09:40</td>
                                    <td class="m_dp_n"></td>
                                </tr>
                            
                                <tr>
                                    <td class="m_dp_n">1041</td>
                                    <td class="ta_l">
                                        <a class="bl_link" href="javascript:void(0);" onclick="javascript:fn_boardView('/infoBoardView.do','3','32','3289', '' , '');">[이미지] 한국판 뉴딜 2025년 미리보기 ‘고용·사회 안전망편’</a>
                               			
                                    </td>
                                    <td class="m_dp_n">대한민국 정부</td>
                                    <td>2020-08-04 11:00</td>
                                    <td class="m_dp_n"></td>
                                </tr>
                            
                                <tr>
                                    <td class="m_dp_n">1040</td>
                                    <td class="ta_l">
                                        <a class="bl_link" href="javascript:void(0);" onclick="javascript:fn_boardView('/infoBoardView.do','3','32','3288', '' , '');">[카드뉴스] [딱풀이] 한국판 뉴딜 10대 시그니처 사업 친환경 미래 모빌리티란?</a>
                               			
                                    </td>
                                    <td class="m_dp_n">대한민국 정부</td>
                                    <td>2020-08-04 10:59</td>
                                    <td class="m_dp_n"></td>
                                </tr>
                            
                                <tr>
                                    <td class="m_dp_n">1039</td>
                                    <td class="ta_l">
                                        <a class="bl_link" href="javascript:void(0);" onclick="javascript:fn_boardView('/infoBoardView.do','3','32','3287', '' , '');">[이미지] 코로나19 계기 식문화개선 국민백일장 당선작 모음</a>
                               			
                                    </td>
                                    <td class="m_dp_n">대한민국 정부</td>
                                    <td>2020-08-04 10:56</td>
                                    <td class="m_dp_n"></td>
                                </tr>
                            
                                <tr>
                                    <td class="m_dp_n">1038</td>
                                    <td class="ta_l">
                                        <a class="bl_link" href="javascript:void(0);" onclick="javascript:fn_boardView('/infoBoardView.do','3','32','3285', '' , '');">[이미지] 한국판 뉴딜 미리보기 ‘2025 그린 뉴딜’</a>
                               			
                                    </td>
                                    <td class="m_dp_n">대한민국 정부</td>
                                    <td>2020-08-04 10:52</td>
                                    <td class="m_dp_n"></td>
                                </tr>
                            
                                <tr>
                                    <td class="m_dp_n">1037</td>
                                    <td class="ta_l">
                                        <a class="bl_link" href="javascript:void(0);" onclick="javascript:fn_boardView('/infoBoardView.do','3','32','3284', '' , '');">[이미지] 한국판 뉴딜 미리보기 ‘2025 디지털 뉴딜’</a>
                               			
                                    </td>
                                    <td class="m_dp_n">대한민국 정부</td>
                                    <td>2020-08-04 10:40</td>
                                    <td class="m_dp_n"></td>
                                </tr>
                            
                                <tr>
                                    <td class="m_dp_n">1036</td>
                                    <td class="ta_l">
                                        <a class="bl_link" href="javascript:void(0);" onclick="javascript:fn_boardView('/infoBoardView.do','3','32','3283', '' , '');">[이미지] 8대 소비쿠폰 총정리</a>
                               			
                                    </td>
                                    <td class="m_dp_n">대한민국 정부</td>
                                    <td>2020-08-04 10:39</td>
                                    <td class="m_dp_n"></td>
                                </tr>
                            
                                <tr>
                                    <td class="m_dp_n">1035</td>
                                    <td class="ta_l">
                                        <a class="bl_link" href="javascript:void(0);" onclick="javascript:fn_boardView('/infoBoardView.do','3','32','3282', '' , '');">[동영상] [친절한 경제 돋보기] 휴가 계획이 있다면? 8대 분야 할인소비쿠폰 주목!</a>
                               			
                                    </td>
                                    <td class="m_dp_n">기획재정부</td>
                                    <td>2020-08-04 10:05</td>
                                    <td class="m_dp_n"></td>
                                </tr>
                            
                                <tr>
                                    <td class="m_dp_n">1034</td>
                                    <td class="ta_l">
                                        <a class="bl_link" href="javascript:void(0);" onclick="javascript:fn_boardView('/infoBoardView.do','3','32','3281', '' , '');">[동영상] 하반기 소비 및 지역경제 활성화를 위한 정책은?!</a>
                               			
                                    </td>
                                    <td class="m_dp_n">기획재정부</td>
                                    <td>2020-08-04 10:04</td>
                                    <td class="m_dp_n"></td>
                                </tr>
                            
                            
                            </tbody>
                        </table>
                    </div>
	                <!--페이징-->
					<div class="paging">
						<a href="#" class="p_first" title="처음" onclick="fn_search(1); return false;"><span class="hdn">처음페이지</span></a><a href="#" class="p_prev" title="이전" onclick="fn_search(1); return false;"><span class="hdn">이전페이지</span></a>&nbsp;&nbsp;<strong>1</strong>&nbsp;&nbsp;<a href="#" onclick="fn_search(2); return false;">2</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(3); return false;">3</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(4); return false;">4</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(5); return false;">5</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(6); return false;">6</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(7); return false;">7</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(8); return false;">8</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(9); return false;">9</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(10); return false;">10</a>&nbsp;&nbsp;<a href="#" class="p_next" title="다음" onclick="fn_search(11); return false;"><span class="hdn">다음페이지</span></a><a href="#" class="p_last" title="끝" onclick="fn_search(105); return false;"><span class="hdn">끝페이지</span></a>

					</div>
	                <!--페이징-->
	                
	                
				</div>
			</div>
		</div>
	</div>
</form>



		<div class="body_bg"></div>

		<!-- Global site tag (gtag.js) - Google Analytics -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-159814989-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-159814989-1');
</script>
	</div>
	
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>

<!-- Mirrored from ncov.mohw.go.kr/infoBoardList.do?brdId=3&brdGubun=32 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Aug 2020 04:48:24 GMT -->
</html>

