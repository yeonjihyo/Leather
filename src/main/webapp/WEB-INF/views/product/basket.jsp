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
	.basketList td input{
	border: none;
	}
	</style>
	<script type="text/javascript">
		$(document).ready(function(){
			//전체선택/해제
			$('#checkall').click(function(){
				if($(this).prop("checked")){
					$('.basket_check ').prop("checked",true);
				}else{
					$('.basket_check ').prop("checked",false);
				}
			});
			
			$('input[type=checkbox]').change(function(){
				getTotal();
			})
			getTotal();
		});
		function getTotal(){
			//총금액
			var total = 0;
			$('.basket_check').each(function(){
				
				if($(this).prop('checked')){
					total += parseInt($(this).parents('tr').find('input[name=product_total]').val());	
				}
			})
			$('input[name=total').val(total);
			//총 금액에 따른 배송비
			var deliverycost = 0;
			if( total< 50000 && total > 0){
				total += parseInt(3000);
				$('input[name=deliverycost]').val(3000);
			}
			else{
				$('input[name=deliverycost]').val(0);
			}
		$('input[name=order_total]').val(total);
		}
	</script>
</head>
<body>
	<h3 class=" div-center border-bottom" style="margin-top: 50px; margin-bottom:50px; padding-bottom: 10px;">|장바구니</h3>
	<form action="<%=request.getContextPath()%>/product/basket" method="get">
	
	
	아이디<input  name="basket_member_id" value="${user.member_id}">
	
	<table class="table table-hover" style="min-width: 1080px;">
	    <tr>
	      <th><input type="checkbox" id="checkall" checked="checked"></th>
	      <th>상품코드</th>
	      <th>상품명</th>
	      <th>금액</th>
	      <th>수량</th>
	      <th>합계</th>
	    </tr>
	  	<c:if test="${list.size() ne 0}">
    		<!--items: 컨트롤러에서 가져올애, var : 여기서사용할끄집어낼이름  --> 
    		<c:forEach items="${list}" var="basket"> 
			    <tr class="basketList">
			      <td><input type="checkbox" checked="checked" class="basket_check"></td>
			      <td><input name="basket_product_code"  value="${basket.basket_product_code}"></td>
			      <td><input name="product_title" value="${basket.product_title}"></td>
			      <td><input name="product_price"  value="${basket.product_price}"></td>
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
    <div style="min-width: 1080px; height: 100px; border:1px solid black; ">
	    <span class="float-right" style="font-size:15px; padding: 20px;" readonly>
	    	제품구매금액 <input  class="border-none" type="number" name="total" value=""  style="padding-right:10px; width: 150px; text-align: right; font-size: 20px;" readonly>
	    	+
	    	배송비<input  class="border-none" type="number" name="deliverycost" value="" style="padding-right:10px; width: 150px; text-align: right;font-size: 20px;" readonly>
	    	=
	    	합계 :
	    	<input class="border-none" type="number" name="order_total" value=""  style="padding-right:10px; width: 150px; text-align: right; font-size: 20px;" readonly> 
	    	원
	   	</span>
    </div>
    </form>
    
    <div class="div-center" style="min-width: 1080px; margin: 50px 0; padding-left: 330px; ">
    	<button type="button" class="btn btn-navy2 div-center" style="width: 200px; height: 50px;">구매하기</button>
    </div>
</body>
</html>