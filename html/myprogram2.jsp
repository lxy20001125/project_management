<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="stylesheet" href="../dist/css/layui.css" media="all">
    <script src="../dist/layui.js"></script>
</head>
<body>
<form class="layui-form" th:action="@{/basicInfo/update/project}" method="post">
    <div class="layui-form-item" id="last">
        <label class="layui-form-label">开发项目核准名</label>
        <div class="layui-input-inline">
            <input type="text" id="projectApprovalName" name="projectApprovalName" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input input-double-width">
            <input class="layui-input" type="hidden" id="id" name="id"  th:value="${estateInfo.id}">
        </div>
        <div class="layui-input-inline" style="margin-left: 180px">
            <button id="add" type="button" class="layui-btn layui-btn-warm layui-btn-sm">
                <i class="layui-icon">&#xe654;</i>
            </button>
        </div>
        <span class="layui-word-aux">备注：最多添加5个项目核准名，每个长度为2-15个字符</span>
    </div>
</form>



<script>

        layui.use([ 'layer', 'upload'], function () {
        var $ = layui.jquery;
        var layer = layui.layer; //加载layer模块
        var upload = layui.upload;  //加载upload模块
        var id = $("#id").val();
        var basePath=[[${httpServletRequest.getContextPath()}]];

        //动态添加input输入框
        var max = 5;
        var x = 1;
        $("#add").click(function(){
        if(x<max){
        var str =  '<div class="layui-form-item">'+
        '<label class="layui-form-label"></label>'+
        '<div class="layui-input-inline">'+
        '<input type="text" name="projectApprovalName" class="layui-input input-double-width">'+
        '</div>'+
        '<div class="layui-input-inline" style="margin-left: 180px">'+
        '<button type="button" class="layui-btn layui-btn-danger layui-btn-sm removeclass"><i class="layui-icon">&#xe67e;</i></button>'+
        '</div>'+
        '</div>';

        $("#last").append(str);
        x++;
    }else {
        layer.msg("最多添加5条信息",{icon:2});
    }
    });

        //删除动态添加的input输入框
        $("body").on('click',".removeclass",function(){
        if(x>1){
        //元素移除前校验是否被引用
        var approvalName = $(this).parent().prev('div.layui-input-inline').children().val();
        var parentEle = $(this).parent().parent();
        $.ajax({
        url:basePath+'/basicInfo/findByApprovalNameAndEstateId',
        type:"get",
        data:{'id':id,'projectApprovalName':approvalName},
        dataType:"json",
        success:function(res){
        if(res.code!==200){
        layer.msg('项目核准名 '+approvalName+' 已被引用，禁止删除', {icon: 2, title:'提示'});
    }else {
        //移除父元素
        parentEle.remove();
        x--;
    }
    }
    });
    }
    });
        //动态回显input值
        var approvalNameStr = [[${estateInfo.projectApprovalName}]];
        var approvalNameArr = approvalNameStr.split(',');
        $.each(approvalNameArr,function (i,json) {

        if(i===0){
        $("#projectApprovalName").val(json);
    }

        if(i>0){
        var str =  '<div class="layui-form-item">'+
        '<label class="layui-form-label"></label>'+
        '<div class="layui-input-inline">'+
        '<input type="text" name="projectApprovalName" value="'+json+'" class="layui-input input-double-width">'+
        '</div>'+
        '<div class="layui-input-inline" style="margin-left: 180px">'+
        '<button type="button" class="layui-btn layui-btn-danger layui-btn-sm removeclass"><i class="layui-icon">&#xe67e;</i></button>'+
        '</div>'+
        '</div>';
        $("#last").append(str);
    }

        x=i+1;
    });
    })


</script>
</body>
</html>