<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
	<title>장바구니</title>
	<style type="text/css">
	tr td{
	border: none;
	}
	</style>
</head>
<body>
	<h3 class=" div-center border-bottom" style="margin-top: 50px; margin-bottom:50px; padding-bottom: 10px;">|장바구니</h3>
	<form action="<%=request.getContextPath()%>/product/basket" method="get">
	<input type="hidden" name="basket_state" value="${basket.basket_state}">
	<input type="hidden" name="basket_no" value="${basket.basket_no}">
	아이디<input  name="basket_member_id" value="${user.member_id}">
	<div>
	<table class="table table-hover">
	    <tr>
	      <th>선택</th>
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
			      <td><input type="checkbox"></td>
			      <td><input name="basket_product_code"  value="${basket.basket_product_code}"></td>
			      <td><input name="product_title" value="${basket.product_title}"></td>
			      <td><input name="product_price"  value="${basket.basket_total}"></td>
			      <td><input name="cnt"  value="${basket.cnt}"></td>
			      <td><input name="product_total"  value="${basket.basket_total}"></td> 
			    </tr>
	   		</c:forEach>
     	 </c:if>
     	 <c:if test="${list.size() eq 0}">
      		<tr>
		        <td colspan="5" class="">장바구니가 존재하지 않습니다.</td>
	      	</tr>
    	 </c:if>
    </table>
    </form>
    <div style="width: 1080px; height: 100px; border:1px solid black; ">
    <span class="float-right" style="font-size:30px; padding: 20px;">합계 :<input class="border-none" type="number" name="basket_total" value="${basket.basket_total}"  style="padding-right:10px; width: 150px; text-align: right;" readonly> 원</span>
    </div>
    <div class="div-center" style="width: 1080px; margin: 50px 0; ">
    	<button type="button" class="btn btn-navy2 div-center" style="width: 200px; height: 50px;">전체상품구매</button>
    	<button type="button" class="btn btn-navy2 div-center" style="width: 200px; height: 50px;">선택상품구매</button>
    </div>
</body>
</html>