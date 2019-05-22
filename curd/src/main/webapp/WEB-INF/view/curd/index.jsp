
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
<h1>添加</h1>

<form action="add" method="post">
    <p>
        <label>姓名：</label>
        <input type="text" name="sysUserLoginName" id="sysUserLoginName"/>
    </p>
    <p>
        <label>密码：</label>
        <input type="password" name="sysUserLoginPassword" id="sysUserLoginPassword"/>
    </p>

<%--    <input type="hidden" name="sysUserStatus" id="sysUserStatus" value="0"/>--%>
<%--    <input type="hidden" name="sysUserIsDelete" id="sysUserIsDelete" value="N"/>--%>
<%--    <input type="hidden" name="sysUserRegisterDatetime" id="sysUserRegisterDatetime" value="2016-02-24 00:12:23"/>--%>
<%--    <input type="hidden" name="sysUserRegisterSource" id="sysUserRegisterSource" value="0"/>--%>
<%--    <input type="hidden" name="sysUserType" id="sysUserType" value="0"/>--%>
<%--    <input type="hidden" name="sysUserSex" id="sysUserSex" value="Y"/>--%>
<%--    <input type="hidden" name="sysUserIsEmailActive" id="sysUserIsEmailActive" value="Y"/>--%>
<%--    <input type="hidden" name="sysUserIsMobileActive" id="sysUserIsMobileActive" value="Y"/>--%>
<%--    <input type="hidden" name="sysUserRegisterType" id="sysUserRegisterType" value="0"/>--%>

    <p>
        <input type="submit" value="添加">
    </p>
</form>

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
