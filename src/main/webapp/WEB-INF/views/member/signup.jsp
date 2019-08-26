<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<html lang="en">

<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
	<title>회원가입</title>
	<style>
	.container{
	padding-bottom: 100px;
	}
	.signup-top{
	padding-top: 50px;
	padding-bottom:30px;
	
	width: 500px;
	text-align: center;
	}
	.row{
		margin: 5px 0px;
		
	}
	.fab.fa-amazon{
		font-size: 100px;
		color: red;
	}
	.signupOutline{
	    border-top: 3px solid  #192d55;
	    border-bottom :3px solid  #192d55;
    	width: 500px;
    }
	.signupBox{
		padding: 30px;
		width: 500px;
		
	}
	.btnBox{
		width: 440px;
		padding: 15px 157px 0 157px;
	}
	</style>
	<script type="text/javascript">
		var isCheck = false;
		
		$(document).ready(function(){
			
			$('#signup').submit(function(){
				if(!isCheck){
					alert('아이디 중복검사를 하세요 ')
					return false;
			}
				
			alert('회원가입에 성공했습니다.');
			return true;
		});
			
			$('#dup').click(function(){
				var member_id=$('input[name=member_id]').val(); //서버로 아이디값을 보내기 위해 입력받은 아이디의 정보를 가져오고 
				
				$.ajax({
			        async:true, //비동기방식
			        type:'POST',
			        data:member_id, //{'id':id}
			        url: "<%=request.getContextPath()%>"+"/dup",
			        dataType:"json",
			        contentType:"application/json; charset=UTF-8",
			        success : function(data){ 
			            if(!data){
			            	alert('회원가입이 가능한 아이디입니다.');
			            	isCheck=true;
			            }else{
			            	alert('이미 가입된 회원입니다.');
			            	isCheck=false;
			            }
			        }
			    });
			});
			$('input[name=member_id]').change(function(){
				isCheck= false;
			});
		});	
	</script>
</head>
<body>
	<div class="signup-top div-center">
		<h3>회원가입</h3>
	</div>
	<div class="signupOutline div-center">
		<div class="signupBox div-center">
			<form method="post" action="<%=request.getContextPath()%>/signup" id="signup"><!-- 개인정보니까 post로  액션따로지정안하면 현재페이지로?????-->
				<div class="row">
					<label class="col-4" >아이디</label>
					<input type="text"class="form-control col-8" name="member_id" placeholder="아이디">
				</div>
				<div>
					<label id="id-error" class="offset-4 col-8 error p-0" for="member_id"></label>
				</div>
				<div>
					<button type="button" class="btn btn-navy offset-4 col-8" id="dup">아이디 중복확인</button>
				</div>
				<div class="row">
					<label class="col-4">비밀번호</label>
					<input type="password"class="form-control col-8" name="member_pw" placeholder="비밀번호" id="pw">
				</div>
				<div class="row">
					<label class="col-4">비밀번호확인</label>
					<input type="password"class="form-control col-8" name="pw2"placeholder="비밀번호확인">
				</div>
				<div class="row">
					<label class="col-4" >이름</label>
					<input type="text"class="form-control col-8" name="member_name" placeholder="이름">
				</div>
				<div class="row">
					<label class="col-4" >핸드폰번호</label>
					<input type="text"class="form-control col-8" name="member_phone" placeholder="핸드폰번호">
				</div>
				<div class="row">
					<label class="col-4" >주소</label>
					<input type="text"class="form-control postNum col-4" placeholder="우편번호"><a href="#"><button type="submit" class="btn btn-navy">우편번호</button></a>
					<input type="text"class="form-control col-8 address" name="member_address" placeholder="기본주소">
					<input type="text"class="form-control col-8 " name="member_address" placeholder="상세주소">
				</div>
				<div class="row">
					<label class="col-4">이메일</label>
					<input type="email"class="form-control col-8" name="member_email" placeholder="이메일">
				</div>
				<div class="btnBox div-center">
					<button class="btn btn-navy">가입</button>
					<button class="btn btn-navy">취소</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>