<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<html lang="en">

<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
	<title>로그인</title>
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
		});
			
			$('#dup').click(function(){
				var id=$('input[name=id]').val(); //서버로 아이디값을 보내기 위해 입력받은 아이디의 정보를 가져오고 
				
				$.ajax({
			        async:true, //비동기방식
			        type:'POST',
			        data:id, //{'id':id}
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
			$('input[name=id]').change(function(){
				isCheck= false;
			});
		});	
	</script>
</head>
<body>
	<div class="signup-top div-center">
		<h3>로그인</h3>
	</div>
	<div class="signupOutline div-center">
		<div class="signupBox div-center">
			<form method="post" action="" id="signup"><!-- 개인정보니까 post로  액션따로지정안하면 현재페이지로?????-->
				<div class="row">
					<label class="col-4" >아이디</label>
					<input type="text"class="form-control col-8" name="id" placeholder="아이디">
				</div>
				<div class="row">
					<label class="col-4" >비밀번호</label>
					<input type="text"class="form-control col-8" name="pw" placeholder="비밀번호">
				</div>
				<button type="submit" class="btn btn-navy col-12">로그인</button>
			</form>
		</div>
	</div>
</body>
</html>