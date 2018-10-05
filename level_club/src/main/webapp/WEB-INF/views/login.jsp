<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#login{width:100%; height:1000px;}
#login_body{width:400px; height:400px; border:1px solid #D8D8D8; margin:50px auto;}
#login_body input[type='text']{width:80%; height:30px;}
#login_body input[type='password']{width:80%; height:30px;}
#login_btn{width:80%; height:40px; border:1px solid black; border-radius:5px;
cursor:pointer; background-color:white; -webkit-transition-duration:0.3s;}
#login_btn:hover{background-color:black; color:white;}
</style>
</head>
<script type="text/javascript">
$(document).ready(function(){
	$(document).on('focus','#id',function(){
		
		$("#id_lb").css({'top':'-25px','left':'40px','color':'black','font-size':'15px'})
	})
	$(document).on('blur','#id',function(){
		if($(this).val()==""){
			$("#id_lb").css({'top':'5px','left':'50px','color':'#D8D8D8','font-size':'20px'})
		}
	})
	
	
	$(document).on('focus','#password',function(){
		$("#password_lb").css({'top':'-25px','left':'40px','color':'black','font-size':'15px'})
	})
	$(document).on('blur','#password',function(){
		if($(this).val()==""){
			$("#password_lb").css({'top':'5px','left':'50px','color':'#D8D8D8','font-size':'20px'})
		}
	})
})
</script>
<script type="text/javascript">
$(document).ready(function(){
	$(document).on('click','#login_btn',function(){
		var id = $("#id").val();
		var password = $("#password").val();
		if(!id){
			alert("아이디를 입력해주세요.");
			$("#id").focus();
			return false;
		}else if(!password){
			alert("비밀번호를 입력해주세요.")
			$("#password").focus();
			return false;
		}
		$.ajax({
			url : 'login_ok',
			type : 'post',
			data : {'id':id,'password':password},
			success : function(data){
				var res = data;
				if(res==0){
					alert("존재하지 않는 아이디 입니다.");
				}else if(res==1){
					location.href="main";
				}else{
					alert("비밀번호가 틀렸습니다.")
				}
			}
		})
	})
})
</script>
<body>
	<div id="login">
		<div id="login_body">
			<h1>LOGIN</h1>
			<div style="width:100%; height:60px; position:relative;">
				<input type="text" id="id">
				<label for="id" id="id_lb" style="position:absolute; top:5px; left:50px; font-size:20px; color:#D8D8D8; -webkit-transition-duration:0.5s;">ID</label>
			</div>
			<div style="width:100%; height:60px; position:relative;">
				<input type="password" id="password">
				<label for="password" id="password_lb" style="position:absolute; top:5px; left:50px; font-size:20px; color:#D8D8D8; -webkit-transition-duration:0.5s;">PASSWORD</label>
			</div>
			<div style="width:100%; height:60px; position:relative;">
				<input type="button" id="login_btn" value="LOGIN">
			</div>
		</div>
	</div>
</body>
</html>