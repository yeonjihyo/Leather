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
	</style>
	
</head>
<body>
	<div class="signup-top div-center">
		<h3>로그인</h3>
	</div>
	<c:if test="${user eq null}">
		<div class="signupOutline div-center">
			<div class="signupBox div-center">
				<form method="post" action="<%=request.getContextPath()%>/signin" id="signin"><!-- 개인정보니까 post로  액션따로지정안하면 현재페이지로?????-->
					<div class="row">
						<label class="col-4" >아이디</label>
						<input type="text"class="form-control col-8" name="member_id" placeholder="아이디">
					</div>
					<div class="row">
						<label class="col-4" >비밀번호</label>
						<input type="password"class="form-control col-8" name="member_pw" placeholder="비밀번호">
					</div>
					<button type="submit" class="btn btn-navy col-12">로그인</button>
				</form>
			</div>
		</div>
	</c:if>
</body>
</html>