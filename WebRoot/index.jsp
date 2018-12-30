<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>留言墙</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
    <link rel="stylesheet" href="css/iconfont.css">
    <script src="js/jquery-3.3.1.min.js"></script>
</head>
<script type="text/javascript">
	function spanClick(){
		var username = document.getElementById("username").value;
		var context = document.getElementById("textEara").value;
		if(username == ""){
			alert("还没有登录，请登录！")
			window.location.href = "${pageContext.request.contextPath}/login.jsp";
		}else{
			window.location.href = "${pageContext.request.contextPath}/addInformation.do?username=" + username + "&context=" + context;
		}
	}
</script>
<body>
    <div class="top">

        <div class="nav">
            <ul class="nav-ul">
                <li>
                    <a href="index.html">首页
                        <small>home</small>
                    </a>
                </li>
                <li>
                    <a href="index.html">通知
                        <small>mess</small>
                    </a>
                </li>
                <li>
                    <a href="index.html">设置
                        <small>settings</small>
                    </a>
                </li>
                <li>
                    <a href="index.html">社区
                        <small>talking</small>
                    </a>
                </li>
                <li>
                    <a href="index.html">合作
                        <small>cooperation</small>
                    </a>
                </li>

            </ul>
        </div>
    </div>

    <div class="title-wrapper">
        <div class="title-icon">
            <div class="user-icon"></div>
            <ul class="items-ul">
                <li>
                    <a href="${pageContext.request.contextPath}/userInfo.jsp" class="exit">个人资料</a>
                </li>
                <li>
                    <a href="#" class="exit">界面设置</a>
                </li>
                <li>
                    <a href="#" class="exit">退出登录</a>
                </li>
            </ul>
        </div>

        <div class="set-idear">
            <h2>留言板</h2>
            <p>四海之内皆朋友，茫茫人海中，留下点什么吧</p>
            <input type="text" hidden="true" id="username" value="${user.name}"/>
        </div>
    </div>

    <div class="show-div">
        <div class="text-eara-div">
            <textarea name="text" id="textEara" class="text-eara" maxlength="150"></textarea>
            <span class="submit" onclick="spanClick()">发表
                <i class="iconfont success icon-success"></i>
            </span>
            <span class="hid  iconfont less icon-less"></span>
        </div>

        <div class="user-list">
        
        	<c:forEach var="info" items="${list}">
	            <div class="li">
	                <div class="list-talk">
	                    <div class="talk-text-top">
	                        <div class="list-icon"></div>
	                        <span class="username-list">${info.username}</span>
	                    </div>
	                    <div class="talk-text-time">
	                        <span class="time">${info.time}</span>
	                    </div>
	                    <div class="talk-text-inner">${info.context}</div>
	                </div>
	            </div> 
            </c:forEach>
        </div>
    </div>
    <script src="js/main.js"></script>
</body>
</html>
