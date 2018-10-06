<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="resources/js/jquery-3.3.1.min..js"></script>
<style type="text/css">
html,body,div,ul,li,a,span{margin:0; padding:0; outline:0; font-size:12px; text-align:center;}
ul{font-size:0;}
a{color:black; text-decoration:none;}
li{list-style:none;}
#header{width:90%; height:50px; border-bottom:1px solid black; background:rgba(0,0,0,0.5); position:fixed;
left:5%; top:5%; -webkit-transition-duration:0.3s; border-radius:10px; z-index:9999;}
#header ul{width:100%; height:50px; text-align:left;}
#header li{width:8%; height:30px; line-height:30px; margin-top:10px; display:inline-block;}
#header li:first-child{margin-left:5%;}
#header a{color:#D8D8D8;}

#top{width:100%; height:300px; background-image:url('resources/background_image/main2.jpg'); background-size:contain;
background-position:center top;}

#center{width:100%;}
</style>
</head>
<body>
	<div id="header">
		<ul>
			<li><a href="main">LC</a></li>
			<li><a href="#">카테고리별</a></li>
			<li><a href="#">BEST</a></li>
			<li><a href="club_make">동호회 만들기</a>
			<li><a href="#"><input type="text"></a></li>
			<c:if test="${member_num==null }">
				<li style="float:right; margin-right:5%;"><a href="login">로그인</a></li>
				<li style="float:right;"><a href="join">회원가입</a></li>
			</c:if>
		</ul>
	</div>
	<div id="top">
	</div>
	<div id="center">
		<jsp:include page="${center }"/>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function(){
	$(window).on('scroll',function(){
		var scrollTop = window.scrollY;
		if(scrollTop>1){
			$("#header").css({'position':'fixed','width':'100%','top':'0','left':'0','border-radius':'0px'})
		}else{
			$("#header").css({'position':'fixed','width':'90%','top':'5%','left':'5%','border-radius':'10px'})
		}
	})
})
</script>
</html>