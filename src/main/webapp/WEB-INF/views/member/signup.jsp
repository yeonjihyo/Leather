<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<html lang="en">

<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
	<!-- 아래 순서 바뀌면 안됨  -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.validate.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/additional-methods.js"></script>
	
	
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
	function checkSame(sel1,sel2){
		var val1=$(sel1).val();
		var val2=$(sel2).val();
		if(val1 == val2){
			return true;
		}
		return false;
	}
	function checkLength(sel,min,max){
		var val=$(sel).val();
		if(val.length >= min && val.length <= max){
			
			return true;
		}
		return false;
	}
	
	var isCheck = false;
	
	$(document).ready(function(){
		$('#signup').submit(function(){
			if(!checkLength('#signup input[name=member_id]',8,16)){
				alert('아이디는 8~16자리입니다.');
				return false;
			}
			var regex = /^\w*(\d[A-z]|[A-z]\d)\w*$/;
			var member_id=$('input[name=member_id]').val();
			var member_pw=$('input[name=member_pw]').val();
			if(!regex.test(member_id)){
				alert('아이디는 영문자와 숫자를 반드시 1개이상 포함해야 합니다.');
				return false;
			}
			if(!isCheck){
				alert('아이디 중복검사를 하세요 ')
				return false;
			}
			if(!checkLength('#signup input[name=member_pw]',8,16)){
				alert('비밀번호는 8~16자리입니다.');
				return false;
			}	
			if(!regex.test(member_pw)){
				alert('비밀번호는 영문자와 숫자를 반드시 1개이상 포함해야 합니다.');
				return false;
			}
			if(!checkSame('#signup input[name=member_pw]','#signup input[name=member_pw2]')){
				alert('비밀번호와 일치하지 않습니다.');
				return false;
			}
			if($('#signup input[name=member_phone]').val().length == 0){
				alert('핸드폰번호을 입력해주세요.');
				return false;
			}
			if($('#signup input[type=email]').val().length == 0){
				alert('이메일을 입력해주세요.');
				return false;
			}
			alert('회원가입에 성공했습니다.');
			return true;
		});
		
		$('#dup').click(function(){
			var member_id=$('input[name=member_id]').val(); //서버로 아이디값을 보내기 위해 입력받은 아이디의 정보를 가져오고 
			//id유효성검사 
			if(member_id == ""){
				alert('아이디를 입력하세요.');
				return;
			}
			$.ajax({
		        async:true,
		        type:'POST',
		        data:member_id,
		        url:"dup",
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
		
		$("#signup").validate({
	        rules: {
	        	member_id: {
	                required : true,
	                minlength : 8,
	                maxlength : 16
	            },
	            member_pw: {
	                required : true,
	                minlength : 8,
	                maxlength : 16,
	                regex: /^\w*(\d[A-z]|[A-z]\d)\w*$/
	            },
	            member_pw2: {
	                required : true,
	                equalTo : member_pw //누구랑비교할건지
	            },
	            member_phone: {
	                required : true,
	                member_phone : true
	            },
	            member_email: {
	                required : true,
	                member_email : true
	            }
	        },
	        //규칙체크 실패시 출력될 메시지
	        messages : {
	        	member_id: { 
	                required : "필수로입력하세요",
	                minlength : "최소 {0}글자이상이어야 합니다",
	                maxlength : "최대 {0}글자이하이어야 합니다"
	            },
	            member_pw: {
	                required : "필수로입력하세요",
	                minlength : "최소 {0}글자이상이어야 합니다",
	                maxlength : "최대 {0}글자이하이어야 합니다",
	                regex : "영문자, 숫자로 이루어져있으며 최소 하나이상 포함"
	            },
	            member_pw2: {
	                required : "필수로입력하세요",
	                equalTo : "비밀번호가 일치하지 않습니다."
	            },
	            member_phone: {
	                required : "필수로입력하세요",
	                member_phone : "핸드폰번호규칙에 어긋납니다"
	            },
	            member_email: {
	                required : "필수로입력하세요",
	                member_email : "메일규칙에 어긋납니다"
	            }
	        }
	    });
	});
	
	$.validator.addMethod(
	    "regex",
	    function(value, element, regexp) {
	        var re = new RegExp(regexp);
	        return this.optional(element) || re.test(value);
	    },
	    "Please check your input."
	);
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
					<input type="password"class="form-control col-8" name="member_pw" placeholder="비밀번호" id="member_pw">
				</div>
				<div class="row">
					<label class="col-4">비밀번호확인</label>
					<input type="password"class="form-control col-8" name="member_pw2"placeholder="비밀번호확인">
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
					<input type="text"class="form-control col-8 address" name="member_address1" placeholder="기본주소">
					<input type="text"class="form-control col-8 " name="member_address2" placeholder="상세주소">
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