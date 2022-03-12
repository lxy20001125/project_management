<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head lang="en">
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
    <title>ProjectAdmin</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../dist/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="../css/admin.css" media="all">
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
<div class="layui-layout layui-layout-admin" id="main-layout">
    <div class="layui-header">
        <div class="layui-logo layui-hide-xs layui-bg-black">项目管理系统</div>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item layui-hide layui-show-md-inline-block">
                <a href="">
                    <!--<img src="//tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg"-->
                    <!--class="layui-nav-img">-->

                    ${sessionScope.user.name}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">设置</a></dd>
                    <dd><a href="../index.jsp">登出</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item" lay-header-event="menuRight" lay-unselect>
                <a href="https://www.jgsu.edu.cn/" target="_blank">
                    <i class="layui-icon layui-icon-more-vertical"></i>
                </a>
            </li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll" <%--style="display: list-item;width: 100%"--%>>
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree <%--layui-tab-title--%>" lay-filter="leftNav"  <%--style="border-bottom: none ;width: 100%"--%>>
                <li class="layui-nav-item layui-nav-itemed layui-this" style="background: rgba(255,255,255,0)" style="display: list-item;width: 100%">
                    <a  href="javascript:;" >项目浏览</a>
                    <dl class="layui-nav-child" id="tabHeader">
                        <dd><a class="link-active layui-this" style="background: rgba(255,255,255,0)"  lay-href="myprogram.jsp" href="javascript:;" data-id="1" data-title="我的项目">我的项目</a></dd>
                        <dd><a class="link-active"  lay-href="allproject.jsp" href="javascript:;" data-id="2" data-title="所有项目">所有项目</a></dd>
                        <dd><a class="link-active"  lay-href="openproject.jsp" href="javascript:;" data-id="3" data-title="公开项目">公开项目</a></dd>
                        <dd><a href="backProject.jsp?error=null">刷新项目</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item" <%--style="display: list-item;width: 100%"--%>>
                    <a href="javascript:;">个人信息</a>
                    <dl class="layui-nav-child">
                        <dd><a class="link-active"  lay-href="remake.jsp" href="javascript:;" data-id="4" data-title="基础信息修改">基础信息修改</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item" <%--style="display: list-item;width: 100%"--%>>
                    <a href="javascript:;">指导老师</a>
                    <dl class="layui-nav-child">
                    <dd><a class="link-active"  lay-href="tteacher.jsp" href="javascript:;" data-id="8" data-title="推荐老师">推荐老师</a></dd>
                    <dd><a class="link-active"  lay-href="steacher.jsp" href="javascript:;" data-id="9" data-title="搜索老师">搜索老师</a></dd>
                </dl>
                </li>

                <li class="layui-nav-item" style="display: list-item;width: 100%"><a hclass="link-active"  lay-href="layuikuangjia.html" href="javascript:;" data-id="10" data-title="校内实验室">校内实验室</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body" style="background:-moz-linear-gradient(180deg, rgb(248, 255, 199), rgb(199, 221, 255));order-bottom: none ;height: 100%">
        <div class="layui-tab" lay-filter="tables" lay-allowclose="true" style="order-bottom: none">
            <ul class="layui-tab-title"></ul>
            <div class="layui-tab-content" style="height: 100%">
               <%-- <a class="link-active"  lay-href="#" href="javascript:;" data-id="55" data-title="首页">
                    <img src="../img/welcome.jpg" height="100%" width="100%">
                </a>--%>
            </div>
        </div>
    </div>
    <div class="layui-footer">
        <!-- 底部固定区域 -->
        <tr>
            <td style="padding-left:50px;text-align: center">
                <span style="color:#CCCCCC">
                    <b style="text-align: center;font-family: 黑体;">19计算机1班 版权所有</b>
                </span>
            </td>
        </tr>
    </div>
</div>
<script src="../dist/layui.js"></script>
<script src="../js/admin.js"></script>
<script>
/*
    var errori ='<%=request.getParameter("add")%>';
    if(errori=='yes'){
        confirm("创建项目成功");
    }
    if(errori=='no'){
        confirm("创建项目失败");
    }
*/


    layui.use(['element','layer','jquery'], function(){
        var element = layui.element;
        var $ = layui.jquery;
        //左侧菜单点击事件
        $('.link-active').on('click', function () {
            var dataid = $(this);
            //判断右侧是否有tab
            if ($('.layui-tab-title li[lay-id]').length <= 0) {
                tabFunction.tabAdd(dataid.attr('lay-href'), dataid.attr('data-id'), dataid.attr('data-title'));
            } else {
                //判断tab是否已经存在
                var isExist = false;
                $.each($('.layui-tab-title li[lay-id]'), function () {
                    //筛选id是否存在
                    if ($(this).attr('lay-id') == dataid.attr("data-id")) {
                        isExist = true;
                    }
                });
                //不存在，增加tab
                if (isExist == false) {
                    tabFunction.tabAdd(dataid.attr('lay-href'), dataid.attr('data-id'), dataid.attr('data-title'));
                }
            }
            //转到要打开的tab
            tabFunction.tabChange(dataid.attr('data-id'));

        });


        //定义函数 绑定增加tab，删除tab，切换tab几项事件
        var tabFunction = {
            //新增tab url 页面地址 id 对应data-id name标题
            tabAdd: function (url, id, name) {
                element.tabAdd('tables', {
                    title: name,
                    content: '<iframe data-frameid="' + id + '" scrolling="auto" frameborder="0" src="' + url + '" style="width:100%;height:800px"></iframe>',
                    id:id
                });
            },
            //根据id切换tab
            tabChange: function (id) {
                element.tabChange('tables',id)
            },
            //关闭指定的tab
            tabDelete: function (id) {
                element.tabDelete('tables',id)
            }
        }
    });
</script>
</body>
</html>