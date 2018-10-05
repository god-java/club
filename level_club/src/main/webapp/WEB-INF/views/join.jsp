<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#join{width:100%; height:1000px;}
#join_body{width:700px; height:600px; border:1px solid #D8D8D8; margin:50px auto;}
#join_table{width:90%; margin:0 auto; margin-top:5%; border-collapse:collapse;}
td{height:50px; border:1px solid #D8D8D8;}
#left{width:20%;}
#right{width:80%; text-align:left;}
td input[type=text],td input[type='password']{width:60%; height:30px; margin-left:10px;}
select{width:20%; height:30px; margin-left:10px;}
.phone input[type='text']{width:20%;}
</style>
</head>
<script type="text/javascript">
$(document).ready(function(){
	$(document).on('click','#submit',function(){
 		var year = $("#year").val();
		var month = $("#month").val();
		var day = $("#day").val();
		var id = $("#id").val();
		var pw1 = $("#pw1").val();
		var pw2 = $("#pw2").val();
		var name = $("#name").val();
		var phone1 = $("#phone1").val();
		var phone2 = $("#phone2").val();
		var phone3 = $("#phone3").val();
		var email = $("#email").val();
		$("#birth_date").val(year+"-"+month+"-"+day);
		
		
		$("#phone").val(phone1+"-"+phone2+"-"+phone3)
		
		
		
		
		if(!id){
			alert("아이디를 입력해주세요.")
			$("#id").focus();
			return false;
		}else if(!pw1){
			alert("비밀번호를 입력해주세요.")
			$("#pw1").focus();
			return false;
		}else if(!pw2){
			alert("비밀번호 확인을 입력해주세요.")
			$("#pw2").focus();
			return false;
		}else if(!name){
			alert("이름을 입력해주세요.")
			$("#name").focus();
			return false;
		}else if(!email){
			alert("이메일을 입력해주세요.")
			$("#email").focus();
			return false;
		}else if(!phone2){
			alert("전화번호를 입력해주세요.")
			$("#phone2").focus();
			return false;
		}else if(!phone3){
			alert("전화번호를 입력해주세요.")
			$("#phone3").focus();
			return false;
		}
		
		var re = /([a-zA-Z0-9])*@([a-zA-Z0-9])*.[a-z]/gi
		if(!re.test(email)){
			alert("이메일 형식으로 입력해주세요.")
			return false;
		}
		
		id = $(this).val();
		$.ajax({
			url : 'overlap_id',
			type : 'post',
			data : {'id':id},
			success : function(data){
				var res = data;
				if(res==0){
					$("#join_form").submit();
				}else{
					alert("중복된 아이디 입니다.")
				}
			}
			
		})
		
		
	})
	
	
	$(document).on('keyup','#id',function(){
		id = $(this).val();
		$.ajax({
			url : 'overlap_id',
			type : 'post',
			data : {'id':id},
			success : function(data){
				var res = data;
				if(res==0){
					$("#id_span").html("사용 가능한 아이디 입니다.")
				}else{
					$("#id_span").html("중복된 아이디 입니다.")
				}
			}
			
		})
	})
	
		
		$(document).on('keyup','#pw2',function(){
			var pw1 = $("#pw1").val();
			var pw2 = $("#pw2").val();
			var pw2_span = $("#pw2_span");
			if(pw1!=pw2 && pw2){
				pw2_span.css({'color':'red'})
				pw2_span.html("비밀번호가 일치하지 않습니다.")
			}else if(!pw2 && pw1!=pw2){
				pw2_span.css({'color':'black'})
				pw2_span.html("비밀번호를 입력해주세요.")
			}else{
				pw2_span.css({'color':'blue'})
				pw2_span.html("비밀번호가 일치합니다.")
			}
		})
		
})
</script>
<body>
	<div id="join">
		<div id="join_body">
			<h1>JOIN</h1>
			<form action="join_ok" id="join_form" method="post">
				<table id="join_table">
					<tr>
						<td id="left">아이디</td>
						<td id="right"><input type="text" id="id" name="id"><span id="id_span"></span></td>
					</tr>
					<tr>
						<td id="left">비밀번호</td>
						<td id="right"><input type="password" id="pw1" name="password"></td>
					</tr>
					<tr>
						<td id="left">비밀번호 확인</td>
						<td id="right"><input type="password" id="pw2"><span id="pw2_span"></span></td>
					</tr>
					<tr>
						<td id="left">이름</td>
						<td id="right"><input type="text" id="name" name="name"></td>
					</tr>
					<tr>
						<td id="left">생년월일</td>
						<td id="right">
							<select id="year">
								<c:forEach var="i" begin="1900" end="2018">
									<option>${i }</option>
								</c:forEach>
							</select> - 
							<select id="month">
								<c:forEach var="i" begin="1" end="12">
									<option>${i }</option>
								</c:forEach>
							</select>
							<select id="day">
								<c:forEach var="i" begin="1" end="31">
									<option>${i }</option>
								</c:forEach>
							</select>
							<input type="hidden" id="birth_date" name="birth_date">
						</td>
					</tr>
					<tr>
						<td id="left">이메일</td>
						<td id="right"><input type="text" id="email" name="email"></td>
					</tr>
					<tr>
						<td id="left">전화번호</td>
						<td id="right" class="phone">
							<select id="phone1">
								<option>010</option>
							</select> - 
							<input type="text" id="phone2"> - 
							<input type="text" id="phone3">
							<input type="hidden" id="phone" name="phone">
						</td>
					</tr>
					<tr>
						<td colspan="2" style="border:none;">
							<input type="submit" id="submit" value="회원가입">
							<input type="button" id="cancel" value="뒤로가기">
						</td>
					</tr>	
				</table>
			</form>
		</div>
	</div>
</body>

</html>