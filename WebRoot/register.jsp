<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="utf-8">
    <title>注册</title>
    <link rel="stylesheet" href="css/register.css">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body onload="winload()">
    	<div class="leftDiv">
    		<img src="images/fore-01.jpg" alt="" class="rotationImg rotationImg1">
    		<img src="images/fore-02.jpg" alt="" class="rotationImg">
    		<img src="images/fore-03.jpg" alt="" class="rotationImg">
    		<img src="images/fore-04.jpg" alt="" class="rotationImg">
    		<img src="images/fore-05.jpg" alt="" class="rotationImg">
    		<img src="images/fore-06.jpg" alt="" class="rotationImg">
    	</div>
    	<div class="rightDiv">
            <div class="rightTopDiv">
                <a href="${pageContext.request.contextPath}/index.do">首 页</a>
                <a href="${pageContext.request.contextPath}/login.jsp">登 录</a>
                <a href="#">意见反馈</a>
                <a href="#">联系我们</a>
            </div>
            <div class="rightMainDiv">
                <!-- <img src="images/kite.png" alt=""> -->
                <span class="leftSpan">
                    
                </span>
                <span class="rightSpan">
                    <div class="topicDiv">
                        <p class="topic">
                           欢迎注册
                        </p>
                        <p class="topicP">
                           期待您的加入
                        </p>
                    </div>
                    <form action="${pageContext.request.contextPath}/register.do" method="post" class="textForm">
                        <input type="text" name="name" placeholder="用户名" class="text">
                        <input type="password" name="password" placeholder="密码" class="text">
                        <input type="text" name="email" placeholder="邮箱" class="text">
                        <input type="submit" value="立即注册" class="text button">
                    </form>
                </span>
            </div>
    	</div>
    </body>
    <script type="text/javascript" src="js/register.js"></script>
</html>
