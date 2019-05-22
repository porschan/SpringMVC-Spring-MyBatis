
<%@ page import="java.util.List" %>
<%@ page import="com.chanchifeng.module.user.pojo.SysUser" %><%--
  Created by IntelliJ IDEA.
  User: porschan
  Date: 2019/5/22
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>curd</title>
</head>
<body>
CURD21
<br>


<table border="1">
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>操作</th>
    </tr>
    <%
        for(SysUser user:(List<SysUser>) request.getAttribute("users")){
    %>

    <tr>
        <td><%= user.getSysUserLoginName()%></td>
        <td><%= user.getSysUserLoginPassword()%></td>
        <td>
            <a href="delete/<%= user.getSysUserId()%>">删除</a> |
            <a href="queryById/<%= user.getSysUserId()%>">修改</a>
        </td>
    </tr>

    <%
        }
    %>
</table>

<script type="text/javascript" src="${webRoot}/curd/js/jQuery-core/jquery-1.6.4.min.js"></script>

</body>
</html>
