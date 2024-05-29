<%@ page import="model.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/5/27
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>用户操作界面</title>
    <link rel="stylesheet" type="text/css" href="css/user&admin.css">
    <link rel="icon" type="image/x-ico" href="images/stu.ico">

</head>

<body>
<%
    //获取登录成功的用户信息
    User user = (User) session.getAttribute("user");
    //判断用户是否登录
    if(user != null){
%>
<header>
    <div class="title">
        <span>用户操作界面</span>
    </div>
    <nav>
        <div class="userinfo">
            <ul>
                <li><%=user.getUsername() %></li>
                <li><%=user.getLevel() %></li>
                <li><a href="UserExitServlet">退出登录</a></li>
                <li><a href="login.html">返回首页</a></li>
            </ul>
        </div>
    </nav>
</header>

<main>
    <%
        }else{
            response.sendRedirect("login.html");
        }
    %>
    <div class="container">
        <div class="select">
            <h3>请选择操作</h3>
            <ul id="accordion" class="accordion">
                <li>
                    <div class="link"></i>院系信息管理</div>
                    <ul class="submenu">
                        <li><a onclick="stu_query(<%=user.getUsername()%>,'department')">查看所在院系</a></li>
                    </ul>
                </li>
                <li>
                    <div class="link">班级信息管理</div>
                    <ul class="submenu">
                        <li><a onclick="stu_query(<%=user.getUsername()%>,'class')">查看所在班级</a></li>
                    </ul>
                </li>
                <li>
                    <div class="link">学生信息管理</div>
                    <ul class="submenu">
                        <li><a  onclick="stu_query(<%=user.getUsername()%>,'student')">查看学生信息</a></li>
                    </ul>
                </li>
                <li>
                    <div class="link">课程信息管理</div>
                    <ul class="submenu">
                        <li><a onclick="stu_query(<%=user.getUsername()%>,'course')">查看所修课程</a></li>
                        <li><a onclick="stu_query(<%=user.getUsername()%>,'avg')">查询所修课程平均分</a></li>
                        <li><a onclick="fail_rate()">查询课程不及格率</a></li>
                        <li><a onclick="show_course_ranking()">查询课程排名情况</a></li>
                    </ul>
                </li>
                <li>
                    <div class="link">学生成绩管理</div>
                    <ul class="submenu">
                        <li><a  onclick="stu_query(<%=user.getUsername()%>,'sc')">查看学生成绩</a></li>
                    </ul>
                </li>
            </ul>
        </div>

        <div id="result" class="result">
            <p class="welcome">欢迎使用学生信息管理系统！</p>
        </div>
    </div>
    </div>
</main>

<footer>
    <div class="copyright">
        &copy; Copyright. All rights reserved. Design by <a href="https://github.com/Hu-Tu-Tu/StudManager">Hu-Tu-Tu</a>
    </div>
</footer>

<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/user.js"></script>
</body>
</html>
