<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<html lang="en">

<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
	<title>제품리스트</title>
	<style>
	</style>
	
</head>
<body>
	<table class="table table-hover">
	    <thead>
	      <tr>
	        <th>제품코드</th>
	        <th>제품명</th>
	        <th>가격</th>
	        <th>리스트상태</th>
	        <th>관리자</th>
	      </tr>
	    </thead>
	    <tbody>
	    	<c:if test="${list.size() ne 0}">
	    		<!--items: 컨트롤러에서 가져올애, var : 여기서사용할끄집어낼이름  --> 
	    		<c:forEach items="${list}" var="product"> 
		      		<tr>
				        <td>${product.product_code}</td>
				        <td><a href="<%=request.getContextPath()%>/board/display?product_code=${board.product_code}">${product.product_title}</a></td> 
				        <td>${product.produc_price}</td>
				        <td>${product.product_state}</td>
				        <td>${product.product_writer}</td>
				        
			      	</tr>
		      	</c:forEach>
	     	 </c:if>
	     	 <c:if test="${list.size() eq 0}">
	      		<tr>
			        <td colspan="5" class="">게시글이 존재하지 않습니다.</td>
		      	</tr>
	     	 </c:if>
	    </tbody>
   	</table>
</body>
</html>