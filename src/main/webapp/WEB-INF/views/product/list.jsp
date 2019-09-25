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
		/*border : 1px solid black;*/
		position: relative;
		height: 500px;
		padding: 50px 10px;
	}
	.categoryName{
		margin-bottom: 30px;
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
	.lists{
		position: absolute;
		width: 1080px;
		height: 300px;
	}
	.productInfo{
		display: inline-block;
		float: left;
		
	}
	.info{
	height: 300px;
		width: 262px;
	}
	.productImg{
		width: 200px;
		height: 200px;
		/*border : 1px solid red;*/
		
	}
	</style>
	
</head>
<body>
	<!-- 등록버튼 -->
	<div class="" style="width: 1080px; height:25px; padding-left: 20px;">
		<c:if test="${user.member_authority eq 'ADMIN'}">
		    <a href="<%=request.getContextPath()%>/product/register">
				<button type="button" class="btn btn-navy">등록</button>
			</a>
		</c:if>
	</div>
	<!-- 상품정렬 -->
	<div class="productList div-center" >
		<!-- 카테고리 이름 -->
		<div class="categoryName"><h2> | ${product_maincategory} </h2></div>
		<!-- 제품정렬-->
		<div class="productSort">
			<a href="#">최신순</a> |
			<a href="#">낮은 가격순</a> |
			<a href="#">높은 가격순</a> |
			<a href="#">인기순</a> |
		</div>
		<!-- 제품리스트 -->
		<table class="lists">
	    	<c:if test="${list.size() ne 0}">
	    		<!--items: 컨트롤러에서 가져올애, var : 여기서사용할끄집어낼이름  --> 
	    		<c:forEach items="${list}" var="product"> 
		      		<tr class="productInfo">
		      			<td class="info">
				        	<div class="productImg div-center" >
				        		<a href="<%=request.getContextPath()%>/product/display?product_code=${product.product_code}">
				        			<img src="<%=request.getContextPath() %>/resources/upload${product.file}" style="width: 200px; height: 200px;">
				        		</a>
			        		</div>
			        		<div class="productName div-center"  style="border-top: 2px solid #192d55; padding-top:5px; margin-top: 15px; width: 220px; text-align: center;">
				        		<b><a style=" margin-top: 20px;" href="<%=request.getContextPath()%>/product/display?product_code=${product.product_code}">${product.product_title}</a></b><br>
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
	            <a class="page-link" href="<%=request.getContextPath()%>/product/list?product_maincategory=${product_maincategory}&product_subcategory=${product_subcategory}&page=${pageMaker.startPage-1}&search=${pageMaker.criteria.search}"><i class="fas fa-chevron-left"></i></a>
	        </li>
	    </c:if>
	    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage}" var="index">
	        <c:choose>
	        <c:when test="${pageMaker.criteria.page != index }">
		        <li class="page-item">
		            <a class="page-link" href="<%=request.getContextPath()%>/product/list?product_maincategory=${product_maincategory}&product_subcategory=${product_subcategory}&page=${index}&search=${pageMaker.criteria.search}">${index}</a>
		        </li>
	        </c:when>
	        <c:otherwise>
	        	<li class="page-item active">
		            <a class="page-link" href="<%=request.getContextPath()%>/product/list?product_maincategory=${product_maincategory}&product_subcategory=${product_subcategory}&page=${index}&search=${pageMaker.criteria.search}">${index}</a>
		        </li>
	        </c:otherwise>
	        </c:choose>
	    </c:forEach>
	    <c:if test="${pageMaker.next}">
	        <li class="page-item">
	            <a class="page-link" href="<%=request.getContextPath()%>/product/list?product_maincategory=${product_maincategory}&product_subcategory=${product_subcategory}&page=${pageMaker.endPage+1}&search=${pageMaker.criteria.search}"><i class="fas fa-chevron-right"></i></a>
	        </li>
	    </c:if>
	</ul>
</body>
</html>