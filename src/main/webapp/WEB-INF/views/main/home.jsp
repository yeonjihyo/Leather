<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/main.js"></script>
</head>
<title>JH Leather</title>
<!--middle-->
	<div class=" div-center middle">
		<div class="imgSlide">
			<ul>
				<li><img alt="" src="<%=request.getContextPath()%>/resources/img/main/slide1.jpg"></li>
				<li><img alt="" src="<%=request.getContextPath()%>/resources/img/main/slide2.jpg"></li>
				<li><img alt="" src="<%=request.getContextPath()%>/resources/img/main/slide3.jpg"></li>
				<li><img alt="" src="<%=request.getContextPath()%>/resources/img/main/slide4.jpg"></li>
			</ul>
		</div>
		<div class="main-img">
			<div class="main-new">
				<div class="product-icon">
					<div class="new-icon float-left">new</div>
					<div class="more-icon float-right">more</div>
				</div>
				<div class="product-box">
					<div class="new"></div>
					<div class="new"></div>
					<div class="new"></div>
					<div class="new"></div>
					<div class="new"></div>
					<div class="new"></div>
				</div>
			</div>
			<div class="main-best">
				<div class="product-icon">
					<div class="best-icon float-left">best</div>
					<div class="more-icon float-right">more</div>
				</div>
				<div class="product-box">
					<div class="best"></div>
					<div class="best"></div>
					<div class="best"></div>
					<div class="best"></div>
					<div class="best"></div>
					<div class="best"></div>
				</div>
			</div>
		</div>
		<!-- 메인하단.정보 -->
		<div class="main-info border border-top-0">
			<div class="info-box map-info">지도</div>
			<div class="info-box instagram">인스타</div>
			<!-- <div class="info-box qna"></div> -->
			<div class="info-box notice">공지사항</div>
			<div class="info-box call-info"><b>CALL CENTER</b></div>
			<div class="info-box bank-info"><b>BANK INFO</b></div>
		</div>

	</div>
