<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>登录</title>
		<link rel="stylesheet" href="css/login.css">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	</head>
	<body>
		<div class="topDiv">
			<a href="#">首 页</a> <a href="${pageContext.request.contextPath}/register.jsp">注 册</a> <a href="#">意见反馈</a>
			<a href="#">联系我们</a>
		</div>
		<div class="mainDiv">
			<span>登录</span> <img src="images/tree1.png" class="tree" alt="">
			<img src="images/swing.png" class="swing" alt="">
			<form action="${pageContext.request.contextPath}/login.do" method="post" class="textForm">
				<input type="text" name="name" placeholder="用户名" class="text"> 
				<input type="password" name="password" placeholder="密码" class="text"> 
				<input type="submit" value="立即登录" class="text button">
			</form>
		</div>
	</body>
</html>
