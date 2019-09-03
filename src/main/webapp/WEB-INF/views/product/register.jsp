<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 등록</title>
</head>
<script type="text/javascript">
</script>
<body><!-- 괄호안은 속성명임 -->
	<h2 style="margin-top: 50px; margin-bottom: 50px; border_bottom: 2px solid #192d55;">|제품 등록</h2>
	<form  action="<%=request.getContextPath()%>/product/register" method="post">
		<div class="container-fluid">
			<div class="form-group">
			  <label>작성자</label>
			  <!-- 로그인인터셉터에 유저를 세션에 저장했기 때문에 다 가져다 쓸 수 있다   -->
			  <input type="text" class="form-control" name="writer" value="${user.member_id}" readonly>
			</div>
			<div class="form-group">
			  <label>제품코드</label>
			  <input type="text" class="form-control" name="product_code" value="" placeholder="제품코드">
			</div>
			<div class="form-group">
			  <label>제품명</label>
			 <input type="text" class="form-control" name="product_title" value="" placeholder="제품명">
			</div>
			<div class="form-group">
			  <label>메인카테고리</label>
			  <select class="form-control">
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
			<div class="form-group">
			  <label>서브카테고리</label>
			  <select class="form-control">
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
			<div class="form-group">
			  <label>원산지</label>
			 <input type="text" class="form-control" name="product_origin" value="" placeholder="원산지">
			</div>
			<div class="form-group">
			  <label>제조사</label>
			 <input type="text" class="form-control" name="product_made" value="" placeholder="제조사">
			</div>
			<div class="form-group">
			  <label>가격</label>
			 <input type="text" class="form-control" name="product_price" value="" placeholder="가격">
			</div>
			<div class="form-group">
			  <label>재고수량</label>
			 <input type="text" class="form-control" name="product_stock" value="" placeholder="재고수량">
			</div>
			<div class="form-group">
			  <label>제품내용</label>
			  <textarea rows="10" class="form-control" name="product_contents" placeholder="제품내용"></textarea>
			</div>
			
			<div class="form-group">
			  <label>첨부파일</label>
			  <input type="text" class="form-control" name="file" value="">
			</div>
			<a href="<%=request.getContextPath()%>/product/list">
				<button type="button" class="btn btn-navy">목록</button>
			</a>
			<button type="submit" class="btn btn-navy">등록하기</button>
			<a href="<%=request.getContextPath()%>/product/list">
				<button type="button" class="btn btn-navy">취소</button>
			</a>
		</div>
	</form>
</body>
</html> 