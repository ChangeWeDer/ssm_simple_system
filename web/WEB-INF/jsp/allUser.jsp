<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有成员</title>
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
                    <small>当前人员列表</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/User/toAddUser">新增</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/User/allUser">人员列表</a>
        </div>

        <div class="col-md-4 column col-md-offset-4">
            <div class="col-lg-12">


                    <form class="form-inline" action="${pageContext.request.contextPath}/User/queryUser" method="post">

                    <input type="text" class="form-control" name="UserName" placeholder="请输入一位用户的姓名...">

                    <input class="btn btn-success" type="submit"  value="查询">

                    </form>

            </div><!-- /.col-lg-6 -->
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>用户编号</th>
                    <th>用户名字</th>
                    <th>用户性别</th>
                    <th>用户年龄</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${requestScope.get('list')}">
                    <tr>
                        <td>${user.getUserId()}</td>
                        <td>${user.getUserName()}</td>
                        <td>${user.getUserSex()}</td>
                        <td>${user.getUserAge()}</td>
                        <td>
                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/User/toUpdateUser?id=${user.getUserId()}">更改</a> |
                            <a class="btn btn-danger" href="${pageContext.request.contextPath}/User/del/${user.getUserId()}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

