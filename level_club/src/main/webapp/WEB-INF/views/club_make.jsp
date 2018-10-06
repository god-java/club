<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#club_make{width:100%; height:1000px;}
#club_make_body{width:900px; height:100%; margin:50px auto;}
#club_make_table{width:100%; border-collapse:collapse;}
td{height:50px; border:1px solid #D8D8D8;}
#left{width:20%;}
#right{width:80%; text-align:left;}
#right input[type='text'],#right select{width:50%; height:30px; margin-left:10px;}
input[type='submit']{width:100px; height:40px; border:1px solid black; background:white; border-radius:5px; cursor:pointer;}
</style>
</head>
<body>
	<div id="club_make">
		<div id="club_make_body">
			<form action="club_make_ok" method="post" enctype="multipart/form-data">
				<table id="club_make_table">
					<tr>
						<td id="left">카테고리</td>
						<td id="right">
							<select name="cate_num" id="cate_num">
								<c:forEach var="clist" items="${clist }">
									<option value="${clist.cate_num }">${clist.cate_name }</option>
								</c:forEach>
							</select>
						</td>
					</tr>
					<tr>
						<td id="left">클럽명</td>
						<td id="right"><input type="text" id="club_name" name="club_name"></td>
					</tr>
					<tr>
						<td id="left">클럽 이미지</td>
						<td id="right"><input type="file" id="file" name="file"></td>
					</tr>
					<tr>
						<td id="left">클럽정보</td>
						<td id="right">
							<textarea id="club_info" name="club_info" style="width:90%; height:500px; margin-left:10px;"></textarea>
							<input type="hidden" name="club_info" id="re_club_info">
						</td>
					</tr>
					<tr>
						<td colspan="2" style="border:none;">
							<input type="submit" id="submit" value="동호회 등록">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function(){
	$(document).on('click','#submit',function(){
		if($("#club_name").val()==""){
			alert("클럽명을 입력해주세요.")
			$("#club_name").focus();
			return false;
		}else if($("#club_info").val()==""){
			alert("클럽명을 입력해주세요.")
			$("#club_info").focus();
			return false;
		}
		
		var info = $("#club_info").val();
		$("#re_club_info").val(info.replace(/\n|\n\r/g,'<br>'))
		alert($("#re_club_info").val())
		
	})
})
</script>
</html>