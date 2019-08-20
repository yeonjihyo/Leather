<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/header.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
</head>
<!--header-->
		<div class="header">
			<div class="main-min div-center">
				<div class="header-top border">
					<div class= "header-menu float-right">
						<a href="#" >Home</a> | 
						<a href="#">로그인</a> |
						<a href="#">회원가입</a> |
						<a href="#">장바구니</a> |
						<a href="#">회원정보수정</a>
					</div>
				</div>
				<div class="header-middle border border-top-0 ">
					<div class="header-logo div-center">로고</div>
					<div class="search-box float-right">
						<form action="#" >
							<div class="search"><input type="text"></div>
							<div class="search-btn"><i class="fas fa-search search-icon"></i></div>
						</form>
					</div>
				</div>
				<div class="header-bottom border border-top-0">
					<ul class="header-category">
						<li>실</li>
						<li>공구</li>
						<li>엣지코트&염료</li>
						<li>본드</li>
						<li>금속장식&도구</li>
						<li>타공펀치</li>
						<li>핸들 보강재</li>
						<li>가죽끈</li>
						<li>전체상품</li>
					</ul>	
				</div>
			</div>
		</div>