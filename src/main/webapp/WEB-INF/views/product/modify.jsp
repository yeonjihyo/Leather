<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
<title>제품 수정</title>
<style>
	h3{
	padding-top: 50px; 
	padding-bottom:20px;
	text-align: center;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$('#mainCategory').change(function(){
			$('input[name=product_maincategory]').val($(this).val());
		});
		$('#subCategory').change(function(){
			$('#register-form input[name=product_subcategory]').val($(this).val());
		});
		
		var val = $('input[name=product_maincategory]').val();
		$('#mainCategory').val(val);
		
		var val = $('input[name=product_subcategory]').val();
		$('#subCategory').val(val);
		
		$('.close').click(function(){
			$(this).siblings('a').html('');
			$(this).siblings('input[name=file]').val('');
		});
	});
</script>
</head>
<script type="text/javascript">
</script>
<body><!-- 괄호안은 속성명임 -->
	
	<h3 class="col-8 div-center border-bottom">|제품 수정</h3>
	<form  action="<%=request.getContextPath()%>/product/modify" method="post" enctype="multipart/form-data" style="padding-top: 20px;" id="register-form">
		<div class="container-fluid">
		
			
			<div class="form-group col-8 div-center">
			  <label>작성자</label>
			  <!-- 로그인인터셉터에 유저를 세션에 저장했기 때문에 다 가져다 쓸 수 있다   -->
			  <input type="text" class="form-control" name="product_writer" value="${user.member_id}" readonly>
			</div>
			<div class="form-group col-8 div-center">
			  <label>제품코드</label>
			  <input type="text" class="form-control" name="product_code" value="${product.product_code}" >
			</div>
			<div class="form-group col-8 div-center">
			  <label>제품명</label>
			 <input type="text" class="form-control" name="product_title" value="${product.product_title}" placeholder="제품명">
			</div>
			<div class="form-group col-8 div-center">
			  <label>메인카테고리</label>
			  <input type="hidden" value="${product.product_maincategory}" name="product_maincategory">
			  <select class="form-control mainCategory" id="mainCategory">
			     <option value="000">선택</option>
			 	 <option value="001">001</option>
			   	 <option value="002">002</option>
			     <option value="003">003</option>
			     <option value="004">004</option>
			     <option value="005">005</option>
			   	 <option value="006">006</option>
			     <option value="007">007</option>
			     <option value="008">008</option>
			  </select>
			</div>
			<div class="form-group col-8 div-center subCategory">
			  <label>서브카테고리</label>
			  <input type="hidden" value="${product.product_subcategory}" name="product_subcategory">
			  <select class="form-control" id="subCategory">
			  	 <option value="000">선택</option>
			 	 <option value="001">001</option>
			   	 <option value="002">002</option>
			     <option value="003">003</option>
			     <option value="004">004</option>
			     <option value="005">005</option>
			   	 <option value="006">006</option>
			     <option value="007">007</option>
			     <option value="008">008</option>
			     <option value="009">009</option>
			     <option value="010">010</option>
			  </select>
			</div>
			<div class="form-group col-8 div-center">
			  <label>원산지</label>
			 <input type="text" class="form-control" name="product_origin" value="${product.product_origin}" placeholder="원산지">
			</div>
			<div class="form-group col-8 div-center">
			  <label>제조사</label>
			 <input type="text" class="form-control" name="product_made" value="${product.product_made}" placeholder="제조사">
			</div>
			<div class="form-group col-8 div-center">
			  <label>가격</label>
			 <input type="text" class="form-control" name="product_price" value="${product.product_price}" placeholder="가격">
			</div>
			<div class="form-group col-8 div-center">
			  <label>재고수량</label>
			 <input type="text" class="form-control" name="product_stock" value="${product.product_stock}" placeholder="재고수량">
			</div>
			<div class="form-group col-8 div-center">
			  <label>제품내용</label>
			  <textarea rows="10" class="form-control" name="product_contents" value="${product.product_contents}  placeholder="제품내용"></textarea>
			</div>
			
			<div class="form-group col-8 div-center">
			  <label>대표첨부파일</label>
			  <c:if test="${product.file ne '' }">
			  	<a id="fileLink">${product.file}</a>
			  	<input type="hidden" class="col-8" name="file" value="${product.file}"> <!--기존 첨부파일을 삭제하기위한,수정하기 버튼을 눌렀을때 기존 첨부파일을 덮어쓸지 지워줄지 유지할지 판별하기 위해-->
			  	<i class="fas fa-times close"></i>
			  </c:if>
			  <c:if test="${product.file eq '' }">
		  		없음
		      </c:if>
			</div>
			<input type="file" class="form-control col-8" name="file2" value="">
			
			<div class="form-group col-8 div-center">
			  <label>상품첨부파일</label>
			  <c:if test="${product.contentsfile ne '' }">
			  	<a id="fileLink">${product.contentsfile}</a>
			  	<input type="hidden" class="col-8" name="contentsfile" value="${product.contentsfile}"> 
			  	<i class="fas fa-times close"></i>
			  </c:if>
			  <c:if test="${product.contentsfile eq '' }">
		  		없음
		      </c:if>
		      <input type="file" class="form-control col-8" name="file3" value="">
			</div>
			<div class="div-center col-8 border-bottom" style=" height:30px; padding: 20px 0 20px 0; margin-bottom: 50px;"></div>
		</div>
		<input type="text" value="${product.product_registered}" name="product_registered">
		<input type="hidden" name="product_state" value="${product.product_state}">
		<input type="hidden" name="product_views" value="${product.product_views}">
		<div class="div-center col-8" style="padding : 20px 0;" >
			<a href="<%=request.getContextPath()%>/product/list">
				<button type="button" class="btn btn-navy">목록</button>
			</a>
			<button type="submit"class="btn btn-navy">수정하기</button>
			<a href="<%=request.getContextPath()%>/product/display">
				<button type="button" class="btn btn-navy">취소</button>
			</a>
		</div>
	</form>
</body>
</html> 