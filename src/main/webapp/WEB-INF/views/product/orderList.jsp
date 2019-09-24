<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	table input {
	border:none;
	}
</style>
</head>
<body>
	<h3 class=" div-center border-bottom" style="margin-top: 50px; margin-bottom:50px; padding-bottom: 10px;">|주문조회</h3>
	<form action="<%=request.getContextPath()%>/product/orderList" method="get">
		<input type="hidden" name="member_id" value="${user.member_id}">
		<table class="table table-hover" style="min-width: 1080px;">
		    <tr>
		      <th style="text-align: center;">주문일자</th>
		      <th style="text-align: center;">주문번호</th>
		      <th style="text-align: center;">주문금액</th>
		      <th style="text-align: center;">주문상태</th>
		    </tr>
		  	<c:if test="${list.size() ne 0}">
	    		<c:forEach items="${list}" var="orderList"> 
				    <tr class="">
				      <td><input name="order_date"  value="${orderList.order_date}" style="text-align: center;" readonly></td>
				      <td><input name="order_num"  value="${orderList.order_num}" style="text-align: center;" readonly></td>
				      <td><input name="order_total"  value="${orderList.order_total}" style="text-align: center;" readonly></td>
				      <td><input name="order_progress"  value="${orderList.order_progress}" style="text-align: center;" readonly></td>
				    </tr>
		   		</c:forEach>
	     	 </c:if>
	     	 <c:if test="${list.size() eq 0}">
	      		<tr>
			        <td colspan="5" class="">주문리스트가 존재하지 않습니다.</td>
		      	</tr>
	    	 </c:if>
    	</table>
	</form>
</body>
</html>