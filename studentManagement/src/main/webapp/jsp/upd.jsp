<%--
  Created by IntelliJ IDEA.
  User: 吉俊烁
  Date: 2020/10/2
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/doupd" method="post">
    <table border="1px" align="center">
        <tr>
            <td colspan="2" align="center" style="font-size: 40px">学员信息</td>
        </tr>
        <input name="sid" type="hidden" value="${studentinfo.sid}"/>
        <tr>
            <td>姓名:</td>
            <td><input type="text" name="sname" value="${studentinfo.sname}"/></td>
        </tr>
        <tr>
            <td>年龄:</td>
            <td><input type="text" name="sage" value="${studentinfo.sage}"/></td>
        </tr>
        <tr>
            <td>性别:</td>
            <td><input type="text" name="sgender" value="${studentinfo.sgender}"/></td>
        </tr>
        <tr>
            <td>家庭住址:</td>
            <td><input type="text" name="saddress" value="${studentinfo.saddress}"/></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><input type="text" name="semail" value="${studentinfo.semail}"/></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="修改"/>
                <input type="reset" value="重置"/>
            </td>
        </tr>
    </table>


</form>
</body>
</html>
