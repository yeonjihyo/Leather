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
		      <th style="text-align: center;">�ֹ�����</th>
		      <th style="text-align: center;">�ֹ���ȣ</th>
		      <th style="text-align: center;">�ֹ��ݾ�</th>
		      <th style="text-align: center;">�ֹ�����</th>
		    </tr>
		  	<c:if test="${list.size() ne 0}">
	    		<!--items: ��Ʈ�ѷ����� �����þ�, var : ���⼭����Ҳ�����̸�  --> 
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
			        <td colspan="5" class="">�ֹ�����Ʈ�� �������� �ʽ��ϴ�.</td>
		      	</tr>
	    	 </c:if>
    	</table>
	</form>
</body>
</html>