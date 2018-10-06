<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#main_center{width:100%; height:800px;}
#main_first{width:100%; background-color:rgba(29,208,187,1.0); padding-bottom:20px;}
#main_first_title{width:100%; height:100px; line-height:100px; padding-top:20px; margin-bottom:20px;}
#main_first_title span{color:white; font-size:50px; font-weight:bold;}
#main_first_center{width:100%; display:flex;}
</style>
</head>
<body>
	<div id="main_center">
		<div id="main_first">
			<div id="main_first_title">
				<span>관심있는 소모임을 찾아보세요!</span>
			</div>
			<div id="main_first_center">
				<div style="width:40%;">
					<div style="width:500px; margin:0 auto;  padding:10px; border-radius:20px; background:#ffffff; border:1px solid #ececec;">
						<c:forEach var="clist" items="${clist }">
							<div id="cate_btn${clist.cate_num}" class="cate_btn" style="width:200px; height:160px; margin:10px 10px; display:inline-block; background:#eeeeee; border-radius:5px;">
								<img src="resources/cate_image/${clist.cate_image}">
								<span id="cate_name" style="font-size:15px; font-weight:300; color:#302b2b;  letter-spacing:2px;">${clist.cate_name }</span>
							</div>						
						</c:forEach>
					</div>
				</div>
				<div style="width:60%;">
					<div style="width:80%; height:500px; border:1px solid gray; margin-left:3%; margin-top:100px; background:#f6f6f6;">
							
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>