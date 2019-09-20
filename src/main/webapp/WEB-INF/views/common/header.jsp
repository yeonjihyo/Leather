<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/header.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/header.js"></script>
<style type="text/css">
.header-category ul li{
	text-align: center;
}
</style>
</head>
<!--header-->
		<div class="header">
			<div class="main-min div-center">
				<div class="header-top">
					<div class= "header-menu float-right">
						<a href="<%=request.getContextPath()%>/" >Home</a> | 
						<a href="<%=request.getContextPath()%>/product/basket">장바구니</a> |
						<c:if test="${user eq null}">
							<a href="<%=request.getContextPath()%>/signin">로그인</a> |
							<a href="<%=request.getContextPath()%>/signup">회원가입</a>
						</c:if>
						<c:if test="${user.member_authority eq 'ADMIN'}">
							<a href="<%=request.getContextPath()%>/admin/user/list">회원관리</a> |
						</c:if>
						<c:if test="${user ne null}">
							<a href="#">회원정보수정</a> |
							<a href="#">주문배송조회</a> |
							<a href="<%=request.getContextPath()%>/signout">로그아웃</a>
						</c:if>	
						
					</div>	
				</div>
				<div class="header-middle div-center">
					<a href="<%=request.getContextPath()%>/">
						<div class="header-logo div-center">
							<img src="<%=request.getContextPath()%>/resources/img/main/logo.png">
						</div>
					</a>
					<div class="search-box float-right">
						<form action="#" >
							<div class="search"><input type="text"></div>
							<div class="search-btn"><i class="fas fa-search search-icon"></i></div>
						</form>
					</div>
				</div>
				<div class="header-bottom">
					<ul class="header-category">
						<li><a href="">실 &or;</a>
							<ul>
								<li><a href="">비니모MBT</a></li>
								<li><a href="">린카블레</a></li>
								<li><a href="">세라필</a></li>
								<li><a href="">귀터만</a></li>
							</ul>
						</li>
						<li><a href="">공구 &or;</a>
							<ul>
								<li><a href="">재단도구</a></li>
								<li><a href="">망치</a></li>
								<li><a href="">가죽공예바늘</a></li>
								<li><a href="">포니&툴렉(공구함)</a></li>
							</ul>
						</li>
						<li><a href="">엣지코트&염료 &or;</a>
							<ul>
								<li><a href="">페니체</a></li>
								<li><a href="">국산기리메</a></li>
								<li><a href="">지아디니</a></li>
								<li><a href="">수성염료&약품</a></li>
								<li><a href="">약칠도구(롤러)</a></li>
							</ul>
						</li>
						<li><a href="">본드 &or;</a>
							<ul>
								<li><a href="">수성본드</a></li>
								<li><a href="">본드지우개</a></li>
								<li><a href="">본드헤라&공병&매트</a></li>
							</ul>
						</li>
						<li><a href="">금속장식&도구 &or;</a>
							<ul>
								<li><a href="">장식웃지</a></li>
								<li><a href="">종발</a></li>
							</ul>
						</li>
						<li><a href="">타공펀치 &or;</a>
							<ul>
								<li><a href="">원형펀치</a></li>
							</ul>
						</li>
						<li><a href="">핸들보강재 &or;</a></li>
						<li><a href="">가죽끈 &or;</a></li>
						<li><a href="">ALL</a></li>
					</ul>	
				</div>
			</div>
		</div>