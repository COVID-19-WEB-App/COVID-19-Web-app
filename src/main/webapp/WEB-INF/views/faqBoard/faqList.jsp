<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<meta charset="UTF-8">

<script type="text/javaScript" language="javascript">

function fn_search(pageNo){
	$("#pageIndex").val(pageNo);
	fn_submit();
}

function fn_submit(){
	var frm = $("#form1");
	frm.attr("action", "/duBoardList.do");
	frm.submit();
}

//펼침메뉴를 눌렀을 경우 해당 seq번호로 게시글을 보여준다.
function showView(seq){

	if ($('#'+seq+'p').html() != "" ){
		return;
	}
	
	$.ajax({
		type : 'post',
		dataType : 'html',
		url : '/ncvCmBoardView.do',
		data : {'seq':seq},
		success : function(html){
			
			var html1 = decodeURIComponent(html);
	
			html1 = html1.replace(/\+/g, " ");
		
			$('#'+seq+'p').html(html1);
			//$('#'+seq).append("<p id='"+seq+"p'>"+html1+"</p>");
		}
	});

}

// 첨부파일 
function fn_fileDown(name, path, seq){
	var frm = $("#form1");
	$("#file_path").val(path);
	$("#file_name").val(name);
	$("#ncv_file_seq").val(seq); 
	
	frm.attr("action", '/board/doFileDownload.do');
	frm.submit();
}

</script>


<form name="form1" id="form1" method="post">
<input name="pageIndex" id="pageIndex" type="hidden" value="" />
<input type="hidden" id="ncv_file_seq" name="ncv_file_seq" value="" />
<input type="hidden" id="file_path" name="file_path" value="" />
<input type="hidden" id="file_name" name="file_name" value="" />
<input type="hidden" id="brdId" name="brdId" value="3" />
<input type="hidden" id="brdGubun" name="brdGubun" value="37" />
	<div class="container"><!-- main_container -->
		<div>
			<div id="content" class="content">
				<div>
		            <div class="sub_top">
		                <div class="st_navigation">
		                    <ul>
		                        <li><a href="index.html"><span class="hdn">홈</span></a></li>
		                        <li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoardList.do', '3', '32', '');">홍보자료 & FAQ</a></li>
		                       <li><a href="faqBoardList0b7a-2.html?brdId=3&amp;brdGubun=37">FAQ</a></li>
		                    </ul>
		                </div>
		                <div class="st_title">
                             <div class="fl_l">
                                 <h3>FAQ</h3>
                             </div>
                         </div>
		            </div>
	      
					<h4 class="s_title_1">병원체 정보</h4>
					<div class="faq_list">
						<ul>
						
							
									
								<li>
									
									<a class="fl_q_n lt_l" onClick="showView('2252');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >코로나바이러스감염증-19는 어떤 질병인가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewadea.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2252"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0"  id="2252" >
			                              	<p id="2252p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
									
								<li>
									
									<a class="fl_q_n lt_l" onClick="showView('2253');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >코로나바이러스는 어떤 바이러스인가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView4b27.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2253"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0"  id="2253" >
			                              	<p id="2253p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
									
								<li>
									
									<a class="fl_q_n lt_l" onClick="showView('2254');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >코로나바이러스감염증-19, 코로나19(COVID-19)의 이름은 어떻게 지어졌나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewd7cf.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2254"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0"  id="2254" >
			                              	<p id="2254p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
									
								<li>
									
									<a class="fl_q_n lt_l" onClick="showView('2255');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >코로나19의 바이러스는 어디에서 유래했나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewfae8.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2255"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0"  id="2255" >
			                              	<p id="2255p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
						</ul>
					</div>

					<h4 class="s_title_1">전파</h4>
					<div class="faq_list">
						<ul>
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2256');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >코로나19는 어떻게 전염되나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView9e10.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2256"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2256" >
			                              	<p id="2256p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2257');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >지역사회 감염이 무엇인가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView8771.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2257"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2257" >
			                              	<p id="2257p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2258');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >코로나19 환자의 대변이나 체액으로도 전염이 가능한가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView3565.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2258"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2258" >
			                              	<p id="2258p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2259');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >음식을 통해 코로나19가 전염될 수 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView6ea3.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2259"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2259" >
			                              	<p id="2259p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2260');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >날씨가 따뜻해지면 코로나19 전파를 막을 수 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView14eb.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2260"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2260" >
			                              	<p id="2260p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2261');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >모기나 진드기 같은 곤충이 코로나19를 퍼트릴 수 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewa130.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2261"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2261" >
			                              	<p id="2261p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
						</ul>
					</div>
					
					
					<h4 class="s_title_1">증상</h4>
					<div class="faq_list">
						<ul>
						
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2262');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >코로나19의 증상은 어떤 것이 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewed75.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2262"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2262" >
										
			                              	<p id="2262p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2263');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >무증상환자도 다른 사람을 전염시킬 수 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewe890.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2263"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2263" >
										
			                              	<p id="2263p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2264');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >코로나19에 어떤 사람들이 더 위험한가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewe1f8.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2264"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2264" >
										
			                              	<p id="2264p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2265');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >흡연자가 코로나19에 더 위험한가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView5989.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2265"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2265" >
										
			                              	<p id="2265p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
						</ul>
					</div>
					
					
					<h4 class="s_title_1">검사</h4>
					<div class="faq_list">
						<ul>
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2266');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >누가 검사를 받을 수 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView594e.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2266"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2266" >
										
			                              	<p id="2266p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2267');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >검사는 어디에서 받을 수 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView2b06.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2267"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2267" >
										
			                              	<p id="2267p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2268');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >검사는 어떻게 이루어지나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView9986.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2268"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2268" >
										
			                              	<p id="2268p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2269');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >검사(유전자검사) 시간은 얼마나 걸리나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView5542.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2269"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2269" >
										
			                              	<p id="2269p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2270');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >코로나19 PCR 검사에서 음성이 나온 뒤 다시 양성으로 나올 수 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView0056.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2270"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2270" >
										
			                              	<p id="2270p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2271');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >검사비용은 어떻게 되나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewb894.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2271"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2271" >
										
			                              	<p id="2271p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2272');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >가래가 없으면 채취를 유도하지 않고 상기도 검체만 채취 하는게 맞나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView0048.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2272"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2272" >
										
			                              	<p id="2272p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2273');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >본인이 스스로 가래를 채취하는 경우도 음압실이 필요한가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView86e8.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2273"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2273" >
										
			                              	<p id="2273p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2274');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >검체채취 시 표준주의란 무엇입니까?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView86e2.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2274"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2274" >
										
			                              	<p id="2274p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2275');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >코로나 항체검사는 무엇인가요??</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView5ddc.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2275"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2275" >
										
			                              	<p id="2275p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2276');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >열 스캐너로 코로나19 환자를 찾아낼 수 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView5cc7.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2276"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2276" >
										
			                              	<p id="2276p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
						
						</ul>
					</div>
					
					
					<h4 class="s_title_1">치료 및 예방</h4>
					<div class="faq_list">
						<ul>
						
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2277');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >코로나19의 치료법이 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView2b57.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2277"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2277" >
										
			                              	<p id="2277p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2278');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >코로나19를 예방하는 백신이 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView0b1a.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2278"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2278" >
										
			                              	<p id="2278p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2279');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >항생제가 코로나19의 예방이나 치료에 도움이 되나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView6e40.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2279"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2279" >
										
			                              	<p id="2279p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2280');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >코로나19에서 회복되면 면역이 생기나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView2c9f.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2280"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2280" >
										
			                              	<p id="2280p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2281');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >코로나19로 확진되면 국가에서 치료비를 지원해주나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView967b.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2281"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2281" >
										
			                              	<p id="2281p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2282');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >다중이용시설에서의 감염예방 조치는 어떻게 되나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewb448.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2282"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2282" >
										
			                              	<p id="2282p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2283');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >폐렴 백신이나 BCG 백신이 코로나19 예방에 도움이 되나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewf489.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2283"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2283" >
										
			                              	<p id="2283p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2284');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >코로나19를 예방하기 위해 콘택트렌즈 사용자는 어떻게 해야 하나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView871c.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2284"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2284" >
										
			                              	<p id="2284p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
						
						</ul>
					</div>
					
					<h4 class="s_title_1">접촉자</h4>
					<div class="faq_list">
						<ul>
						
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2285');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >접촉자 범위는 어떻게 설정하나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView146f.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2285"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2285" >
										
			                              	<p id="2285p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2286');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >마스크를 착용하지 않은 코로나19 환자를 진료 시 의료진은 개인보호구를 착용했는데  접촉자로 분류되나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewe08b.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2286"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2286" >
										
			                              	<p id="2286p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2287');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >접촉자가 되면 어떻게 되나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView9306.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2287"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2287" >
										
			                              	<p id="2287p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2288');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >자가격리 시 주의할 사항은 무엇인가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView58ea.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2288"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2288" >
										
			                              	<p id="2288p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2289');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >자택 내 독립된 공간 확보가 안 될 경우 어떻게 격리하나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewe529.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2289"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2289" >
										
			                              	<p id="2289p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2290');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >자가격리를 하면 생활지원을 해 주나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewb234.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2290"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2290" >
										
			                              	<p id="2290p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2291');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >자가격리 중 외출한 사람들에 대한 법적 처벌기준이 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewa206.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2291"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2291" >
										
			                              	<p id="2291p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2292');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >외국인인데, 자가격리 중이지만 증상도 없고, 본국으로 돌아가고 싶습니다.</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewd46d.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2292"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2292" >
										
			                              	<p id="2292p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2293');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >확진환자의 이동경로를 확인하고 싶습니다.</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewed9d.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2293"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2293" >
										
			                              	<p id="2293p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
						
						</ul>
					</div>
					
					
					<h4 class="s_title_1">격리 및 격리해제</h4>
					<div class="faq_list">
						<ul>
						
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2294');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >공동격리(코호트 격리)이란 무엇입니까?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewa95f.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2294"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2294" >
										
			                              	<p id="2294p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2295');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >어떤 상황에서 환자를 공동격리(코호트)영역에 배치해야합니까?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView5d4c.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2295"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2295" >
										
			                              	<p id="2295p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2296');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >무증상 양성자의 격리해제기준은 어떤가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewa5c6.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2296"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2296" >
										
			                              	<p id="2296p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2297');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >공동격리(코호트 격리) 해제 기준은?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView4f00.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2297"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2297" >
										
			                              	<p id="2297p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2298');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >유증상 확진환자의 격리해제기준은 어떤가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView967c.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2298"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2298" >
										
			                              	<p id="2298p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2449');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >확진자가 격리해제된 이후 바로 등교/출근 할 수 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView37a9.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2449"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2449" >
										
			                              	<p id="2449p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2450');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >확진자가 격리해제된 이후에 다른 확진자와 접촉하면 접촉자로 관리해야 하나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewf724.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2450"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2450" >
										
			                              	<p id="2450p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
						
						</ul>
					</div>
					
					
					<h4 class="s_title_1">의사환자 및 조사대상 유증상자 관리</h4>
					<div class="faq_list">
						<ul>
						
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2299');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >조사대상 유증상자 중 의사의 소견에 따라 코로나19 임상증상으로 코로나19가 의심되는 자는 어떤 경우인가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView4742.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2299"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2299" >
										
			                              	<p id="2299p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2300');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >의사환자는 선별진료소 이외 일반 의료기관을 방문하면 안 되나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView78e2.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2300"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2300" >
										
			                              	<p id="2300p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2301');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >의사환자와 조사대상 유증상자는 어떻게 다른가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView607b.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2301"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2301" >
										
			                              	<p id="2301p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2302');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >의사환자와 조사대상 유증상자 신고 시 주의사항이 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewcd93.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2302"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2302" >
										
			                              	<p id="2302p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2303');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl" >조사대상 유증상자가 일반 의료기관에 가는 경우는 신고, 환자관리(외출자제 권고, 이동방법안내, 보건교육 등)는 일반 의료기관에서 진행하나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView0c94.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2303"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2303" >
										
			                              	<p id="2303p" ></p>
										</div>
									<!--글내용-->
									
									<!--첨부파일-->
									
									</div>

									
									
								</li>
							
							
						</ul>
					</div>
					
					
					<h4 class="s_title_1">소독</h4>
					<div class="faq_list">
						<ul>
						
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2304');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">청소만으로 코로나19를 예방할 수 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView4639.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2304"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2304" >
										
			                              	<p id="2304p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2305');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">코로나바이러스는 체외로 배출되면 얼마나 생존하나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView50e1.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2305"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2305" >
										
			                              	<p id="2305p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2306');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">코로나19 확진환자가 다녀갔던 집단·다중시설 등의 경우 어떻게 소독이 이루어지나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView7c7d.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2306"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2306" >
										
			                              	<p id="2306p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2307');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">일상 청소나 소독은 어떻게 해야 하나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView8953.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2307"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2307" >
										
			                              	<p id="2307p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2308');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">코로나19 확진환자가 발생한 회사나 다중이용시설은 소독을 위해 얼마나 오래 폐쇄해야 하나요? 다른 직원들이 복귀해 근무하려면 얼마나 기다려야 하나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewd1ae.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2308"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2308" >
										
			                              	<p id="2308p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2309');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">소독 후 반드시 하루 동안 사용하지 말아야 하나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView042e.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2309"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2309" >
										
			                              	<p id="2309p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2310');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">초음파, 고강도 자외선(UV), LED 청색광과 같은 대체 소독 방법은 얼마나 효과적인가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewa68d.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2310"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2310" >
										
			                              	<p id="2310p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2311');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">코로나19 확산 방지를 위해 건물 출입구에 살균 터널을 사용할 수 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView7d00.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2311"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2311" >
										
			                              	<p id="2311p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2312');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">코로나19 예방을 위해 공원, 실외 놀이터, 보행로나 도로 등을 청소하고 소독해야 하나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewdf3a.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2312"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2312" >
										
			                              	<p id="2312p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2313');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">실내 공간 소독을 위해 소독제를 분무/분사하면 효과가 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView1fe4.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2313"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2313" >
										
			                              	<p id="2313p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2451');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">청소와 소독의 차이점은 무엇인가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView03eb.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2451"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2451" >
										
			                              	<p id="2451p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
						
						</ul>
					</div>
					
					<h4 class="s_title_1">임신과 출산 </h4>
					<div class="faq_list">
						<ul>
						
							
							
							
							
							
							
							
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2314');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">임산부는 코로나19에 더 위험한가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewaac2.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2314"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2314" >
										
			                              	<p id="2314p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2315');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">임산부는 어떻게 코로나19 예방을 할 수 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewb48a.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2315"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2315" >
										
			                              	<p id="2315p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2316');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">임산부도 코로나 검사를 받아야 하나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView4c2b.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2316"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2316" >
										
			                              	<p id="2316p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2317');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">코로나19가 태아에게 전염될 수 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView1210.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2317"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2317" >
										
			                              	<p id="2317p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2318');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">코로나19가 수유를 통해 전염될 수 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewc914.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2318"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2318" >
										
			                              	<p id="2318p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2319');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">코로나19에 감염되어도 수유 할 수 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView17c6.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2319"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2319" >
										
			                              	<p id="2319p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2320');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">어린이들은 코로나19에 얼마나 위험한가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewb6cd.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2320"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2320" >
										
			                              	<p id="2320p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2321');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">코로나19에 걸린 어린이의 증상은 성인과 다른가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView0f08.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2321"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2321" >
										
			                              	<p id="2321p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
						
						</ul>
					</div>
					
					<h4 class="s_title_1">기타</h4>
					<div class="faq_list">
						<ul>
						
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2322');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">신종 코로나바이러스와 인플루엔자 바이러스는 무엇이 비슷한가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewd4e2.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2322"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2322" >
										
			                              	<p id="2322p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2323');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">코로나19와 인플루엔자는 어떻게 다른가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewf2cc.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2323"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2323" >
										
			                              	<p id="2323p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2324');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">코로나19와 인플루엔자의 치료는 어떻게 다른가요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView62a9.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2324"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2324" >
										
			                              	<p id="2324p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2325');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">코로나19와 인플루엔자가 동시에 걸릴 수 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewccdd.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2325"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2325" >
										
			                              	<p id="2325p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2326');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">개나 고양이 등의 애완동물에게서 코로나19가 감염될 수 있나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewc80e.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2326"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2326" >
										
			                              	<p id="2326p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2327');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">코로나19에 걸리면 애완동물이나 다른 동물과의 접촉을 피해야 하나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewa70e.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2327"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2327" >
										
			                              	<p id="2327p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2328');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">개를 산책시켜도 되나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView82f7.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2328"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2328" >
										
			                              	<p id="2328p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2332');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">해외여행을 예약했는데, 여행을 가도 되나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewf116.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2332"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2332" >
										
			                              	<p id="2332p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2333');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">해외에서 오는 택배를 받아도 되나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView1773.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2333"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2333" >
										
			                              	<p id="2333p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2334');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">해외에서 코로나19 환자는 얼마나 발생했나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView05f4.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2334"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2334" >
										
			                              	<p id="2334p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2335');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">우리나라에서 환자는 얼마나 발생했나요?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardViewf3f8.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2335"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2335" >
										
			                              	<p id="2335p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
							
							
								<li>
								
									<a class="fl_q_n lt_l" onClick="showView('2336');">
										<span class="ico_q_n">Q</span>
										<span class="fl_ttl">이 지침에 포함되지 않는 소아, 투석환자 등 특수 분야에 해당하는 경우는?</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
										<a target="_blank" href="shBoardView5211.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2336"  class="a_sha" title="공유하기">공유하기</a>
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0" id="2336" >
										
			                              	<p id="2336p" ></p>
										</div>
										
										<!--첨부파일-->
									
									<!--글내용-->
									</div>
								</li>
							
						</ul>
					</div>
					

				</div>
			</div>
		</div>
		
		</div>

</form>





<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>