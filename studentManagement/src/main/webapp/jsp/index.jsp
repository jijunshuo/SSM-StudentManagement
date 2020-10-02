<%--
  Created by IntelliJ IDEA.
  User: 吉俊烁
  Date: 2020/10/2
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
<body>
<table align="center" border="1px" width="500px">
    <tr>
        <td colspan="6" align="center" style="font-size: 40px">学员信息列表</td>
    </tr>
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>住址</td>
        <td>Email</td>
    </tr>
    <c:forEach items="${studentinfos}" var="s">
        <tr>
            <td><a href="javascript:void(0)" onclick="upd(${s.sid})">${s.sid}</a></td>
            <td>${s.sname}</td>
            <td>${s.sgender}</td>
            <td>${s.sage}</td>
            <td>${s.saddress}</td>
            <td>${s.semail}</td>
        </tr>
    </c:forEach>
</table>
<p align="center" style="color: red">${success}</p>
</body>
</html>
<script type="text/javascript">
    $("tr:odd").css("background-color", "rgb(94,251,203)");

    function upd(id) {
        location.href = "/toupd?id=" + id;

    }
</script>
