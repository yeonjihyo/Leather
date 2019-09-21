<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<form action="<%=request.getContextPath()%>/product/orderList" method="get">
		<table class="table table-hover" style="min-width: 1080px;">
		    <tr>
		      <th style="text-align: center;">주문일자</th>
		      <th style="text-align: center;">주문번호</th>
		      <th style="text-align: center;">주문금액</th>
		      <th style="text-align: center;">주문상태</th>
		    </tr>
		  	<c:if test="${list.size() ne 0}">
	    		<!--items: 컨트롤러에서 가져올애, var : 여기서사용할끄집어낼이름  --> 
	    		<c:forEach items="${list}" var="orderList"> 
				    <tr class="">
				      <td><input name="order_date"  value="${orderList.order_date}" style="text-align: center;" readonly></td>
				      <td><input name="order_num"  value="${orderList.order_num}" style="text-align: center;" readonly></td>
				      <td><input name="order_total"  value="${orderList.order_total}" style="text-align: center;" readonly></td>
				      <td><input name="order_state"  value="${orderList.order_state}" style="text-align: center;" readonly></td>
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