<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<jsp:include page="/WEB-INF/views/admin/adinclude/header.jsp" />

<!-- Javascript -->
<script src="/resources/admin/vendor/jquery/jquery.min.js"></script>
<script src="/resources/admin/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/resources/admin/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="/resources/admin/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
<script src="/resources/admin/vendor/chartist/js/chartist.min.js"></script>
<script src="/resources/admin/scripts/klorofil-common.js"></script>

<div class="main">

	<div class="main-content">
	
		<div class="container-fluid">
	
			<div class="panel panel-headline">
	
						<div class="panel-heading">		
							<h3 class="panel-title">사용자 관리</h3>
								<p class="panel-subtitle">회원 상세정보</p>
								
						</div>
						
						<div class="panel-body">
							
							<table class="table table-hover">
							
								<thead>
									<tr>
										<th>선택</th>
										<th>이름</th>
										<th>닉네임</th>
										<th>전화번호</th>
										<th>주소</th>
										<th>가입일자</th>
										<th>등급</th>
									</tr>
								</thead>
								
								<tbody>
								
								<c:forEach var="list" items="${list }">
								
									<tr>
<!-- 										<td><input type="checkbox"></td> -->
										<td>${list.name }</td>
										<td>${list.nick }</td>
										<td>${list.tell }</td>
										<td>${list.add }</td>
										<td>${list.mdate }</td>
										<td>${list.rank }</td>
									</tr>

								</c:forEach>

								</tbody>
								
							</table>
							
							<!-- 삭제 버튼 -->
							<button id="btn" type="button" class="btn btn-danger pull-right">삭 제</button>
							
							<!-- 검색 -->
							<div class="input-group pull-right">
									<input class="form-control" type="text" id="search" style="width:220px;" placeholder="검색어를 입력해주세요"/>
									<button id="btnSearch" class="btn btn-primary glyphico-search" type="button">검색</button>
							</div>
							
						</div>
						
			</div>
						
		</div>
		
	</div>
		
</div>

<style>
#btn {
	margin-left: 10px;
}
</style>