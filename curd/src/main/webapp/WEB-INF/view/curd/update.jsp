
<%--
  Created by IntelliJ IDEA.
  User: porschan
  Date: 2019/5/22
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.chanchifeng.module.user.pojo.SysUser" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="../update" method="post">
    <%
        SysUser user = (SysUser) request.getAttribute("user");

    %>

    ${user.sysUserLoginName}

    <p>
        <label>姓名：</label>
        <input type="text" name="sysUserLoginName" value="<%= user.getSysUserLoginName()%>" id="sysUserLoginName"/>
    </p>
    <p>
        <label>密码：</label>
        <input type="text" name="sysUserLoginPassword" value="<%= user.getSysUserLoginPassword()%>" id="sysUserLoginName"/>
    </p>
    <p>
        <input type="hidden" name="sysUserId" value="<%= user.getSysUserId()%>" id="id"/>
        <input type="submit" value="修改">
    </p>
</form>
</body>
</html>
