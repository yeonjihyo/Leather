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
	
	</style>
	<script type="text/javascript">
		$(document).ready(function () {
			
			//새로운 배송지 선택시 
			$('#newInfo').click(function () {
				$('.deliverInfo input[type="text"]').val('').prop('readonly',false);
			});
			//주문자 정보와 동일 선택시
			$('#sameInfo').click(function () {
				$('#deliver_recipient').val($('#deliver_recipient2').val()).prop('readonly',true);
				$('#deliver_post').val($('#deliver_post2').val()).prop('readonly',true);
				$('#deliver_address1').val($('#deliver_address3').val()).prop('readonly',true);
				$('#deliver_address2').val($('#deliver_address4').val()).prop('readonly',true);
				$('#deliver_phone').val($('#deliver_phone2').val()).prop('readonly',true);
			});
		});
	</script>
</head>
<body>
	<h3 class=" div-center border-bottom" style="margin-top: 50px; margin-bottom:50px; padding-bottom: 10px;">|주문</h3>
	<form action="<%=request.getContextPath()%>/product/finish" method="post">
		<input type="hidden" name="basket_member_id" value="${user.member_id}">
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
	    		<c:forEach items="${list}" var="order"> 
				    <tr>
				      <td><input name="order_product_code"  value="${order.product_code}" style="text-align: center;" readonly></td>
				      <td><input name="product_title" value="${order.product_title}" style="text-align: center;" readonly></td>
				      <td><input name="product_price"  value="${order.product_price}" style="text-align: center;" readonly></td>
				      <td><input type="number" name="cnt" style="width: 50px; text-align: center;"  value="${order.cnt}" readonly></td>
				      <td><input name="product_total" style="text-align: center;" value="${order.product_total}" readonly></td>
				      <input type="hidden" id="basket_state" name="basket_state" value="${order.product_state}">
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
		    	제품구매금액 <input type="number" name="total" value="${total }" readonly>
		    	+
		    	배송비<input type="number" name="deliverycost" value="${deliverycost }" style="padding-right:10px; width: 150px; text-align: right;" readonly>
		    	=
		    	합계 :
		    	<input class="border-none" type="number" name="orderTotal" value="${orderTotal }"  style="padding-right:10px; width: 150px; text-align: right;" readonly> 
		    	원
		   	</span>
	    </div>
	    <!-- 주문자 정보 -->
	    <div style=" margin-top: 100px; min-width: 1080px;">
	    	<h5 style="height: 40px; line-height: 35px; background: #f7f7f7; text-align: center;">주문자 정보</h5>
	    	<table class="orderInfo table table-hover" style="min-width: 1080px;">
		    	<tr>
					<th>성명</th>
					<td><input name="member_name" value="${user.member_name}"></td>
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
	    <div style="margin-top: 50px;">
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
	    	<table class="deliverInfo table table-hover" style="min-width: 1080px;">
	    		
	    		
		    	<tr>
					<th>수령인</th>
					<td><input type="text" id="deliver_recipient" name="deliver_recipient" value="${user.member_name}" readonly></td>
					<input type="hidden" id="deliver_recipient2" name="deliver_recipient2" value="${user.member_name}" readonly>
				</tr>
				<tr>
			    	<th>수령지</th>
					<td>
						<input type="text" id="deliver_post" name="deliver_post" value="${user.member_post}" placeholder="우편번호" readonly>
						<input type="hidden" id="deliver_post2" name="deliver_post2" value="${user.member_post}" placeholder="우편번호" readonly>
						<a href="#"><button type="button" class="btn btn-navy">우편번호</button></a><br>
						<input type="text" id="deliver_address1" name="deliver_address1" value="${user.member_address1}" placeholder="기본주소" readonly>
						<input type="hidden" id="deliver_address3" name="deliver_address3" value="${user.member_address1}" placeholder="기본주소" readonly>
						<input type="text" id="deliver_address2" name="deliver_address2" value="${user.member_address2}" placeholder="상세주소" readonly>
						<input type="hidden" id="deliver_address4" name="deliver_address4" value="${user.member_address2}" placeholder="상세주소" readonly>
					</td>
				</tr>
				<tr>
					<th>수령인 전화번호</th>
					<td><input type="text" id="deliver_phone" name="deliver_phone" value="${user.member_phone}" readonly></td>
					<input type="hidden" id="deliver_phone2" name="deliver_phone2" value="${user.member_phone}" readonly>
				</tr>
	    	</table>
	    </div>
	    <!-- 결제 -->
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