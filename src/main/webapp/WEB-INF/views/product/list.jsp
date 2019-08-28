<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<html lang="en">

<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
	<title>제품리스트</title>
	<style>
	
	.productList{
		width: 1080px;
		border : 1px solid black;
		position: relative;
		height: 2000px;
		padding: 50px 10px;
	}
	.categoryName{
		padding-bottom: 30px; 
		border : 1px solid red;
	}
	.productSort{
		padding-right: 20px;
		text-decoration: none;
		padding-top: 20px;
		border-bottom: 3px solid #192d55;
	}
	.productSort a{
		color: black;
		font-size: 13px;
		line-height: 16px;
		font-weight: bold;
		text-decoration: none;
}
	.list{
		position: absolute;
		width: 1080px;
		height: 300px;
	}
	.productInfo{
		display: inline-block;
		float: left;
		border : 1px solid blue;
		
	}
	.info{
	height: 300px;
		width: 262px;
	}
	.productImg{
		width: 200px;
		height: 200px;
		border : 1px solid red;
		
	}
	</style>
	
</head>
<body>
	
		<div class="productList div-center">
			<!-- 카테고리 이름 -->
			<div class="categoryName"><h2>|실</h2></div>
			<!-- 제품정렬-->
			<div class="productSort">
				<a href="#">최신순</a> |
				<a href="#">낮은 가격순</a> |
				<a href="#">높은 가격순</a> |
				<a href="#">인기순</a> |
			</div>
			<!-- 제품리스트 -->
			<table class="list">
		    	<c:if test="${list.size() ne 0}">
		    		<!--items: 컨트롤러에서 가져올애, var : 여기서사용할끄집어낼이름  --> 
		    		<c:forEach items="${list}" var="product"> 
			      		<tr class="productInfo">
			      			<td class="info">
					        	<div class="productImg div-center" >
					        		<a href="#">
					        			<img src="#">
					        		</a>
				        		</div>
				        		<div class="productName div-center"  style=" margin-top: 15px; width: 260px; height: 45px; text-align: center;">
					        		<b><a style=" margin-top: 10px; border-top: 2px solid #192d55;" href="<%=request.getContextPath()%>/product/display?product_code=${board.product_code}">${product.product_title}</a></b><br>
					        		<b>${product.product_price}원</b>
				        		</div>
							</td>
				      	</tr>
				      	
			      	</c:forEach>
		     	 </c:if>
		     	 <c:if test="${list.size() eq 0}">
		      		<tr>
				        <td colspan="5" class="">게시글이 존재하지 않습니다.</td>
			      	</tr>
		     	 </c:if>
	     	 </table>
     	</div>
     	
   	<!-- 페이지네이션 -->
   	<ul class="pagination" style="justify-content: center;">
	    <c:if test="${pageMaker.prev}">
	        <li class="page-item">
	            <a class="page-link" href="<%=request.getContextPath()%>/product/list?page=${pageMaker.startPage-1}"><i class="fas fa-chevron-left"></i></a>
	        </li>
	    </c:if>
	    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage}" var="index">
	        <c:choose>
	        <c:when test="${pageMaker.criteria.page != index }">
		        <li class="page-item">
		            <a class="page-link" href="<%=request.getContextPath()%>/product/list?page=${index}">${index}</a>
		        </li>
	        </c:when>
	        <c:otherwise>
	        	<li class="page-item active">
		            <a class="page-link" href="<%=request.getContextPath()%>/product/list?page=${index}">${index}</a>
		        </li>
	        </c:otherwise>
	        </c:choose>
	    </c:forEach>
	    <c:if test="${pageMaker.next}">
	        <li class="page-item">
	            <a class="page-link" href="<%=request.getContextPath()%>/product/list?page=${pageMaker.endPage+1}"><i class="fas fa-chevron-right"></i></a>
	        </li>
	    </c:if>
	</ul>
</body>
</html>