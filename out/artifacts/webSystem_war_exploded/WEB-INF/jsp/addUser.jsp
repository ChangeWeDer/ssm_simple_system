
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>新增用户</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增用户</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/User/addUser" method="post">
        用户姓名：<input type="text" name="userName"><br><br><br>
        用户性别：<input type="text" name="userSex"><br><br><br>
        用户年龄：<input type="text" name="userAge"><br><br><br>
        <input type="submit" class="btn btn-primary" value="添加">
    </form>
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/User/allUser">返回</a>
</div>