<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
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
                    <small>修改信息</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/User/updateUser" method="post">
        <input type="hidden" name="userId" value="${user.getUserId()}"/>
        用户姓名：<input type="text" name="userName" value="${user.getUserName()}"/>
        用户性别：<input type="text" name="userSex" value="${user.getUserSex()}"/>
        用户年龄：<input type="text" name="userAge" value="${user.getUserAge() }"/>
        <input type="submit" class="btn btn-primary" value="提交"/>
    </form>
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/User/allUser">返回</a>
</div>