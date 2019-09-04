<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<html lang="en">

<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
	<title>제품상세페이지</title>
	<style>
	.detail{
	width:1080px;
	height: 800px;
	padding: 130px 10px 80px 10px;
	}
	.product-image{
	border : 1px solid black;
	width: 520px;
	height: 520px;
	padding: 20px;
	}
	.product-info{
	display: inline-block;
	/*border : 1px solid black;*/
	width: 520px;
	height: 520px;
	}
	.product-infimation li{
	list-style: none;
	font-size: 20px;
	padding:15px;
	width: 500px;
	}
	.product-order{
	width: 600px;
	height: 100px;
	margin-left: 50px;
	}
	.product-tab{
	margin-top: 20px;
	}
	</style>
	
</head>
<body>
	<div class="detail clearfix border-bottom">
		<!-- 제품이미지 -->
		<div class="product-image float-left clearfix">
			<div class="img-box">
				<img alt="" src="<%=request.getContextPath()%>/resources/img/product${product.file}">
			</div>
		</div>
		<!-- 제품정보 -->
		<div class="product-info float-right clearfix">
			<div class="product-name  div-center" style="margin-top: 20px; margin-left: 20px;">
				<input type="text" name="product_title" value="${product.product_title}" style="font-size:30px; border:none;" readonly>
			</div>
		 	<div class="product-infimation">
		 		<ul class="col-4">
			 		<li>상품코드 :</li>
			 		<li>제조사 :</li>
			 		<li>원산지 :</li>
			 		<li>수량 :<input type="number" min="1" style="margin-left:20px; width: 100px;"></li>
			 		<li>재고수량 :</li>
			 		<li>금액 :</li>
		 		</ul>
		 	</div>
		 	<div class="product-order float-left">
				<a href="#" class="div-center"><button class="btn btn-navy2" style="width: 200px; height: 50px;">장바구니</button></a>
				<a href="#" class="div-center"><button class="btn btn-navy2" style="width: 200px; height: 50px;">구매하기</button></a>
			</div>
		</div>
	</div>
	<!-- 제품설명 -->
	<div>
		<ul class="nav nav-tabs nav-justified product-tab" style="width: 1080px;">
		    <li class="nav-item">
		      <a class="nav-link active" href="#">제품설명</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="#">리뷰</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="#">Q&A</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="#">반품/교환</a>
		    </li>
		</ul>
		<div>
			${product.product_contents}
			<img src="<%=request.getContextPath() %>/resources/upload${product.file}">
		</div>
		<div>
		
		</div>
		<!-- 리뷰 -->
		
  	</div>

</body>
</html>