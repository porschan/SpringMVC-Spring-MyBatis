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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/common/layerui/css/layui.css" media="all">
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

<%--<table border="1">--%>
<%--    <tr>--%>
<%--        <th>编号</th>--%>
<%--        <th>姓名</th>--%>
<%--        <th>操作</th>--%>
<%--    </tr>--%>
<%--    <%--%>
<%--        for(SysUser user:(List<SysUser>) request.getAttribute("users")){--%>
<%--    %>--%>

<%--    <tr>--%>
<%--        <td><%= user.getSysUserLoginName()%></td>--%>
<%--        <td><%= user.getSysUserLoginPassword()%></td>--%>
<%--        <td>--%>
<%--            <a href="delete/<%= user.getSysUserId()%>">删除</a> |--%>
<%--            <a href="queryById/<%= user.getSysUserId()%>">修改</a>--%>
<%--        </td>--%>
<%--    </tr>--%>

<%--    <%--%>
<%--        }--%>
<%--    %>--%>
<%--</table>--%>

layerUI - jquery

条件搜索：
sysUserLoginName:<input type="text" id="sysUserLoginNameSearch" value="1">

<table id="demo" lay-filter="test"></table>

<script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script><!-- 你必须先引入jQuery1.8或以上版本 -->
<script src="${pageContext.request.contextPath}/common/layerui/layui.js"></script>

<script>
    layui.use('table', function(){
        var table = layui.table;

        //第一个实例
        table.render({
            elem: '#demo'
            ,height:510
            ,url: 'curd_findAllJSON' //数据接口
            ,where:{
                sysUserLoginName:$("#sysUserLoginNameSearch").val()
            }
            ,response: {
                countName:'totalNum'
                ,dataName: 'items'
                ,statusName: 'code'
            }
            ,page: true //开启分页
            ,limit: 10
            ,cols: [[ //表头
                {field: 'sysUserLoginName', title: 'ID', width:80, sort: true, fixed: 'left'}
                ,{field: 'sysUserLoginPassword', title: '用户名', width:80}

                ,{field:'title', title: '文章标题', width: 150
                    ,templet: function(d){
                        return '<a class="layui-btn layui-btn-sm layui-btn-danger" href="delete/' + d.sysUserId + '">删除</a>' +
                            '<a class="layui-btn layui-btn-sm layui-btn-normal" href="queryById/' + d.sysUserId + '">修改</a>'
                    }
                }
            ]]
        });

    });
</script>

</body>
</html>
