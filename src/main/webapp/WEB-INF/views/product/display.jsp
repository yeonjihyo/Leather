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
	height: 650px;
	margin: 130px 10px 50px 10px;
	padding-top: 30px;
	border-top : 3px solid #192d55 !important; 
	}
	.product-image{
	/*border : 1px solid black;*/
	width: 550px;
	height: 550px;
	/*padding: 20px;*/
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
	color: black;
	border: none;
	}
	.product-infimation li input{
	border: none;
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
	
	<script type="text/javascript">
		$(document).ready(function(){
			
			$('input[name=cnt]').change(function(){
				var cnt = parseInt($(this).val());
				var price = parseInt($('input[name=product_price]').val());
				var total = cnt*price;
				
				$('input[name=product_total]').val(total);
				
			});
			$('#buybtn').click(function(){
				$('.form-productInfo').attr('action','<%=request.getContextPath()%>/product/display2');
			})
			$('.form-productInfo').submit(function () {
				
			
				var member_id=$('input[name=member_id]').val();
				if(member_id ==null || member_id == ''){
					alert('로그인을 하세요');
					location.href = "<%=request.getContextPath()%>/signin";
					return false;
				}else{
					if($('.form-productInfo').attr('action') == "/leather/product/display"){
						alert('장바구니에 추가되었습니다');
					}
				}
			
			})
			
		});
		

	</script>
	
</head>
<body>
	<!-- 수정버튼 -->
	<div class="" style="width: 1080px; height:25px; padding-left: 20px; ">
		<c:if test="${user.member_authority eq 'ADMIN'}">
		    <a href="<%=request.getContextPath()%>/product/list">
				<button type="button" class="btn btn-navy">목록</button>
			</a>
			<a href="<%=request.getContextPath()%>/product/modify?product_code=${product.product_code}">
				<button type="button" class="btn btn-navy">수정</button>
			</a>
		</c:if>
	</div>
	<div class="detail clearfix border-bottom">
		<!-- 제품이미지 -->
		<div class="product-image float-left clearfix">
			<div class="img-box">
				<img src="<%=request.getContextPath()%>/resources/upload${product.file}" alt="" style="width: 550px; height: 550px;">
				
			</div>
		</div>
		<!-- 제품정보 -->
		<form class="form-productInfo" action="<%=request.getContextPath()%>/product/display" method="post">
			<input type="hidden" name="member_id" value="${user.member_id}">
			<div class="product-info float-right clearfix">
				<div class="product-name  div-center" style="margin-top: 20px; margin-left: 20px;">
					<input type="text" name="product_title" value="${product.product_title}" style="font-size:30px; border:none;" readonly>
				</div>
			 	<div class="product-infimation">
			 		<ul class="col-4">
				 		<li>상품코드 : <input name="product_code" value="${product.product_code}" readonly></li>
				 		<li>제조사 : <input name="product_made" value="${product.product_made}" readonly></li>
				 		<li>원산지 : <input name="product_origin" value="${product.product_origin}" readonly></li>
				 		<li>수량 :<input class="border" type="number" min="1" style="margin-left:20px; width: 100px;" name="cnt" value="1"></li>
				 		<li>재고수량 : <input type="number" name="product_stock"  value="${product.product_stock}" readonly></li>
				 		<li>금액 : <input type="number" name="product_price" value="${product.product_price}" readonly></li>
				 		
			 		</ul>
			 	</div>
			 	<div class="div-center" style="margin-top:10px; margin-bottom:20px; padding-right:20px; border-top:3px solid #dee2e6 !important; width: 500px; height: 50px;">
			 		<span class="float-right" style="font-size:30px;">총금액 : <input class="border-none" type="number" name="product_total" value="${product.product_price}" style="padding-right:10px; width: 150px; text-align: right;" readonly>원</span> 
			 	</div>
			 	<div class="product-order float-left">
					<button type="submit" class="basMove btn btn-navy2" style="width: 200px; height: 50px;">장바구니</button>
					<button type="submit" class="orMove btn btn-navy2" style="width: 200px; height: 50px;" id="buybtn">구매하기</button>
				</div>
			</div>
		</form>
	</div>
	<!-- 제품설명 -->
	<div>
		<ul class="nav nav-tabs nav-justified product-tab" style="width: 1080px; margin-bottom : 20px;">
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
		<!-- 제품상세 -->
		<div>
			${product.product_contents}
			<img class="div-center" src="<%=request.getContextPath() %>/resources/upload${product.contentsfile}" alt="" style="width: 1080px">
		</div>
		<!-- 리뷰 -->
		<div class="review"></div>
		<!-- Q&A -->
		<div></div>
		<!-- 반품/교환 -->
		<div></div>
  	</div>

</body>
</html>