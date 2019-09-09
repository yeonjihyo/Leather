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
	      <th></th>
	      <th>상품코드</th>
	      <th>상품명</th>
	      <th>금액</th>
	      <th>수량</th>
	      <th>배송비</th>
	      <th>합계</th>
	      
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <td><input type="checkbox"></td>
	      <td></td>
	      <td></td>
	      <td></td>
	      <td></td>
	      <td></td>
	      <td></td>
	    </tr>
	  </tbody>
    </table>
</body>
</html>