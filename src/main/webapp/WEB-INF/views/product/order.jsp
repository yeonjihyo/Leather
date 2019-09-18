<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
	<title>주문</title>
	<style type="text/css">
	tr td{
	border: none;
	}
	</style>
</head>
<body>
	<h3 class=" div-center border-bottom" style="margin-top: 50px; margin-bottom:50px; padding-bottom: 10px;">|주문</h3>
	<form action="<%=request.getContextPath()%>/product/finish" method="get">
		아이디<input  name="basket_member_id" value="${user.member_id}">
		<table class="table table-hover" style="min-width: 1080px;">
		    <tr>
		      <th>상품코드</th>
		      <th>상품명</th>
		      <th>금액</th>
		      <th>수량</th>
		      <th>합계</th>
		    </tr>
		  	<c:if test="${list.size() ne 0}">
	    		<!--items: 컨트롤러에서 가져올애, var : 여기서사용할끄집어낼이름  --> 
	    		<c:forEach items="${list}" var="basket"> 
				    <tr>
				      <td><input name="basket_product_code"  value="${basket.basket_product_code}"></td>
				      <td><input name="product_title" value="${basket.product_title}"></td>
				      <td><input name="product_price"  value="${basket.product_price}"></td>
				      <td><input name="cnt"  value="${basket.cnt}"></td>
				      <td><input name="product_total"  value="${basket.basket_total}"></td>
				    </tr>
		   		</c:forEach>
	     	 </c:if>
	     	 <c:if test="${list.size() eq 0}">
	      		<tr>
			        <td colspan="5" class="">주문상품이 존재하지 않습니다.</td>
		      	</tr>
	    	 </c:if>
	    </table>
	    <div style="width: 1080px; height: 100px; border:1px solid black; ">
		    <span class="float-right" style="font-size:15px; padding: 20px;" style="padding-right:10px; width: 150px; text-align: right;" readonly>
		    	제품구매금액 <input type="number" name="basket_total" value="${basket_total}" readonly>
		    	+
		    	배송비<input type="number" name="basket_deliverycost" value="${deliverycost}" style="padding-right:10px; width: 150px; text-align: right;" readonly>
		    	=
		    	합계 :
		    	<input class="border-none" type="number" name="basket_total" value="${basket.basket_total}"  style="padding-right:10px; width: 150px; text-align: right;" readonly> 
		    	원
		   	</span>
	    </div>
	    <!-- 주문자 정보 -->
	    <div class="orderInfo" style=" margin-top: 100px; min-width: 1080px;">
	    	<h5 style="height: 40px; line-height: 35px; background: #f7f7f7; text-align: center;">주문자 정보</h5>
	    	<table class="table table-hover" style="min-width: 1080px;">
	    	<tr>
			<th>성명</th>
			<td><input name="member_name" value="${user.member_name }"></td>
			</tr>
			<tr>
	    	<th>주소</th>
	    	<td>
	    		<input name="member_post" value="${user.member_post}">
	    		<a href="#"><button type="button" class="btn btn-navy">우편번호</button></a><br>
	 
	    		<input name="member_address1" value="${user.member_address1}">
	    		<input name="member_address2" value="${user.member_address2}">
	    	</td>
			</tr>
			<tr>
			<th>전화번호</th>
			<td><input name="member_phone" value="${user.member_phone }"></td>
			</tr>
			<tr>
			<th>이메일</th>
			<td><input name="member_email" value="${user.member_email }"></td>
			</tr>
	    	</table>
	    </div>
	     <!-- 배송지 정보 -->
	    <div class="deliveryInfo" style="margin-top: 50px;">
	    	
	    	<h5 style="height: 40px; margin-top: 50px; background: #f7f7f7; text-align: center;">배송지 정보</h5>
	    	<div class="float-right div-center" style="min-width: 1080px;">
		    	<div class="form-check-inline float-left">
			      <label class="form-check-label" for="radio2">
			        <input type="radio" class="form-check-input" id="sameInfo" name="delivery" value="" checked="checked">주문자 정보와 동일
			      </label>
			    </div>
			    <div class="form-check-inline float-left">
			      <label class="form-check-label" for="radio2">
			        <input type="radio" class="form-check-input" id="newInfo" name="delivery" value="">새로운 배송지
			      </label>
			    </div>
		    </div>
	    	<table class="table table-hover" style="min-width: 1080px;">
	    	<tr>
			<th>수령인</th>
			<td><input name="deliver_recipient" value=""></td>
			</tr>
			<tr>
	    	<th>수령지</th>
			<td>
				<input name="deliver_post" value="" placeholder="우편번호">
				<a href="#"><button type="button" class="btn btn-navy">우편번호</button></a><br>
				<input name="deliver_address1" value="" placeholder="기본주소">
				<input name="deliver_address2" value="" placeholder="상세주소">
			</td>
			</tr>
			<tr>
			<th>수령인 전화번호</th>
			<td><input name="deliver_phone" value=""></td>
			</tr>
	    	</table>
	    </div>
	    <div classl="payInfo" style="margin-top: 50px;">
	    	<h5 style="height: 40px; line-height: 35px; background: #f7f7f7; text-align: center;">결제 정보</h5>
	    	<div class="form-check-inline ">
		      <label class="form-check-label" for="radio2">
		        <input type="radio" class="form-check-input" id="" name="pay" value="">카드결제
		      </label>
		    </div>
		    <div class="form-check-inline ">
		      <label class="form-check-label" for="radio2">
		        <input type="radio" class="form-check-input" id="" name="pay" value="">핸드폰결제
		      </label>
		    </div>
		    <div class="form-check-inline ">
		      <label class="form-check-label" for="radio2">
		        <input type="radio" class="form-check-input" id="" name="pay" value="">실시간계좌이체
		      </label>
		    </div>
		    <div class="form-check-inline ">
		      <label class="form-check-label" for="radio2">
		        <input type="radio" class="form-check-input" id="" name="pay" value="">무통장입금
		      </label>
		    </div>
		    <div class="form-check-inline ">
		      <label class="form-check-label" for="radio2">
		        <input type="radio" class="form-check-input" id="" name="pay" value="">카카오페이
		      </label>
		    </div>
	    </div>
	    <div class="div-center" style="min-width: 1080px; margin: 50px 0; padding-left: 450px; ">
	    	<button type="submit" class="btn btn-navy2 div-center" style="width: 200px; height: 50px;">결제하기</button>
	    </div>
    </form>
    
    
</body>
</html>