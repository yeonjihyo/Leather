<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
	<title>장바구니</title>
</head>
<body>
	<h3 class=" div-center border-bottom" style="margin-top: 50px; margin-bottom:50px; padding-bottom: 10px;">|장바구니</h3>
	<table class="table table-hover">
	  <thead>
	    <tr>
	      <th>선택</th>
	      <th>상품코드</th>
	      <th>상품명</th>
	      <th>금액</th>
	      <th>수량</th>
	      <th>배송비</th>
	      <th>합계</th>
	      
	    </tr>
	  </thead>
	  <tbody>
	  	<c:if test="${list.size() ne 0}">
    		<!--items: 컨트롤러에서 가져올애, var : 여기서사용할끄집어낼이름  --> 
    		<c:forEach items="${list}" var="basket"> 
			    <tr>
			      <td><input type="checkbox"></td>
			      <td><input  value="${basket.basket_product_code}"></td>
			      <td><input  value="${basket.basket_product_title}"></td>
			      <td><input  value="${basket.product_price}"></td>
			      <td><input  value="${basket.cnt}"></td>
			      <td><input  value="${basket.deliverycost}"></td>
			      <td><input  value="${basket.product_total}"></td>
			    </tr>
	   		</c:forEach>
     	 </c:if>
     	 <c:if test="${list.size() eq 0}">
      		<tr>
		        <td colspan="5" class="">장바구니가 존재하지 않습니다.</td>
	      	</tr>
    	 </c:if>
	  </tbody>
    </table>
</body>
</html>