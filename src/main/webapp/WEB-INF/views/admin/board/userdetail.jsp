<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!-- bootstrap -->
<script src="/resources/admin/vendor/jquery/jquery.min.js"></script>
<script src="/resources/admin/vendor/bootstrap/js/bootstrap.min.js"></script>
<script
	src="/resources/admin/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script
	src="/resources/admin/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
<script src="/resources/admin/vendor/chartist/js/chartist.min.js"></script>
<script src="/resources/admin/scripts/klorofil-common.js"></script>

<style>

	#btnDelete{
		
		margin-left: 10px;
		margin-right: 10px;
		
	}

</style>

<!-- 헤더 -->
<jsp:include page="/WEB-INF/views/admin/adinclude/header.jsp" />

<div class="main">

	<div class="main-content">

		<div class="container-fluid">

			<div class="panel panel-headline">

				<!-- 헤드라인 -->
				<div class="panel-heading">
					<h3 class="panel-title">사용자 관리</h3>
					<p class="panel-subtitle">회원 상세정보</p>
				</div>
				<!-- 헤드라인 END -->

				<div class="panel-body">

					<table class="table table-hover">

						<thead>
							<tr>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Username</th>
							</tr>
						</thead>
						
							<c:forEach items="${list }" var="a">
						<tbody>
							<tr>
								<td>${a.name }</td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
							</c:forEach>

					</table>
					
					<button id="btnInsert" class="btn btn-primary pull-right">추가</button>
	
					<!-- 삭제버튼 -->
					<button id="btnDelete" class="btn btn-danger pull-right">삭제</button>

					<!-- 검색 -->
					<div class="form-inline pull-right">
						<input class="form-control" type="text" id="search"
							style="width: 200px;" placeholder="검색어를 입력해주세요" />
						<button id="btnSearch" class="btn btn-primary">검색</button>
					</div>
					
					
				</div>

			</div>

		</div>

	</div>

</div>