<%--
  Created by IntelliJ IDEA.
  User: Eric
  Date: 2022/2/10
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../dist/css/layui.css" media="all">
    <script src="../dist/layui.js"></script>
</head>
<body>
<div class="demoTable">
    搜索项目：
    <div class="layui-inline">
        <input class="layui-input" name="keyword" id="demoReload" autocomplete="off">
    </div>
    <button class="layui-btn" data-type="reload">搜索</button>
</div>
<table class="layui-table" lay-filter="demo">
    <%-- <colgroup>
         <col width="150">
         <col width="200">
         <col>
     </colgroup>--%>
    <thead>
    <tr>
        <th lay-data="{field:'title',width:200}">项目标题</th>
        <th lay-data="{field:'username',width:100}">项目作者</th>
        <th lay-data="{field:'teacher',width:100}">指导老师</th>
        <th lay-data="{field:'type',width:100}">项目类型</th>
        <th lay-data="{field:'io'}">项目简介</th>
        <th lay-data="{field:'number',width:300,hide=ture}">项目编号</th>
    </tr>
    </thead>
    <tbody id="c_table">
    <tr>
        <td id="t">门户网站</td>
        <td>鲁心远</td>
        <td>夏洁武</td>
        <td>java</td>
        <td>这是一个java的门户网站</td>
        <td></td>

    </tr>
    <tr>
        <td class="t">历史博物馆</td>
        <td>赵坤</td>
        <td>夏洁武</td>
        <td>java</td>
        <td>这是一个java的博物馆</td>
        <td></td>

    </tr>
    <tr>
        <td class="t">书籍爬虫</td>
        <td>刘旺</td>
        <td>夏洁武</td>
        <td>python</td>
        <td>这是一个python的书店</td>
        <td></td>

    </tr>
    <tr>
        <td class="t">项目管理平台</td>
        <td>占美栋</td>
        <td>夏洁武</td>
        <td>java</td>
        <td>这是一个java的项目管理平台</td>
        <td></td>

    </tr>
    <tr >
        <td class="t">社区健康平台</td>
        <td>何东昌</td>
        <td>夏洁武</td>
        <td>java</td>
        <td>这是一个java的健康平台</td>
        <td></td>

    </tr>
    <tr>
        <td class="t">购物中心</td>
        <td>百荣娜</td>
        <td>夏洁武</td>
        <td>java</td>
        <td>这是一个java的购物中心</td>
        <td></td>
    </tr>
    <tr>
        <td class="t">购物中心</td>
        <td>百荣娜</td>
        <td>夏洁武</td>
        <td>java</td>
        <td>这是一个java的购物中心</td>
        <td></td>
    </tr>
    </tbody>
</table>

<script>

    var table = layui.table;

    //转换静态表格
    table.init('demo', {
        height: 315 //设置高度
        ,limit: 6 //注意：请务必确保 limit 参数（默认：10）是与你服务端限定的数据条数一致
        ,page:true
        ,
    });


</script>
</body>
</html>
