<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>user</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
    <link rel="stylesheet" href="css/iconfont.css">
    <script src="js/main.js"></script>
</head>

<body>
    <div class="top">
        <div class="nav">
            <ul class="nav-ul">
                <li>
                    <a href="${pageContext.request.contextPath}/index.do">首页
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
        <div class="top-banner">
            <div class="top-bannerover"></div>
            <div class="icon-div">
                <div class="img-icon"></div>
                <div class="infor-div">
                    <h2>马冬梅不姓马</h2>
                    <span>
                        ${user.address}
                        <i class="iconfont map icon-map"></i>
                    </span>
                    <span>
                        <%-- ${user.signature} --%>
                        <i class="iconfont edit icon-edit"></i>
                    </span>
                </div>
            </div>
        </div>
    </div>

    <div class="wrapper">
        <div class="personal">
            <div class="person-nav">
                <i class="iconfont account-filling icon-accountfilling"></i>
                <span class="user-name">马冬梅不姓马</span>
            </div>

            <div class="person-text">
                <label>用户名:</label>
                <span>${user.name}</span>

                <label>性别:</label>
                <span>${user.sex}</span>

                <label>现居:</label>
                <span>${user.address}</span>

                <label>联系邮箱:</label>
                <span>${user.email}</span>
            </div>
        </div>
    </div>
</body>
</html>
