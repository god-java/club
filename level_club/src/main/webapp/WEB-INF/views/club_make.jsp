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
</style>
</head>
<body>
	<div id="club_make">
		<div id="club_make_body">
			<table id="club_make_table">
				<tr>
					<td id="left">카테고리</td>
					<td id="right">
						<select>
							<c:forEach var="clist" items="${clist }">
								<option value="${clist.cate_num }">${clist.cate_name }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td id="left">클럽명</td>
					<td id="right"><input type="text"></td>
				</tr>
				<tr>
					<td id="left">클럽정보</td>
					<td id="right"><textarea style="width:90%; height:500px; margin-left:10px;"></textarea></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>