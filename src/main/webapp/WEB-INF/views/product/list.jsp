<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<html lang="en">

<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
	<title>제품리스트</title>
	<style>
	.productList{
		
	}
	.productInfo{
	width: 300px;
		height: 300px;
	}
	.productImg{
		width: 250px;
		height: 250px;
		border : 1px solid red;
	}
	</style>
	
</head>
<body>
	<table class="">
		<div class="productList div-center">
	    	<c:if test="${list.size() ne 0}">
	    		<!--items: 컨트롤러에서 가져올애, var : 여기서사용할끄집어낼이름  --> 
	    		<c:forEach items="${list}" var="product"> 
		      		<tr>
		      			<td class="productInfo div-center">
					        	<div class="productImg">
					        		<a href="#">
					        			<img src="#">
					        		</a>
				        		</div>
				        		<div class="productName">
					        		<b><a href="<%=request.getContextPath()%>/product/display?product_code=${board.product_code}">${product.product_title}</a></b><br>
					        		<b>${product.product_price}</b>
				        		</div>
									<!--
									<img alt="" src="ss/resources/uploadFiles${item.file}">
									-->
						</td>
						
						<!-- 
						<td>${product.product_code}</td>
						 <td><a href="ss/board/display?product_code=${board.product_code}">${product.product_title}</a></td> 
				        <td>${product.product_price}</td>
				        <td>${product.product_state}</td>
				        <td>${product.product_writer}</td>
						 -->
				       
				        
			      	</tr>
		      	</c:forEach>
	     	 </c:if>
	     	 <c:if test="${list.size() eq 0}">
	      		<tr>
			        <td colspan="5" class="">게시글이 존재하지 않습니다.</td>
		      	</tr>
	     	 </c:if>
     	 </div>
   	</table>
</body>
</html>