<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>create</title>
    <link rel="stylesheet" href="../dist/css/layui.css" media="all">
</head>
<body>
<div class="layui-tab" lay-allowClose="true">
    <ul class="layui-tab-title">
        <li class="layui-this">新建项目</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <div style="padding: 15px;">
                <form class="layui-form" action="">
                    <div class="layui-form-item">
                        <label class="layui-form-label">项目标题</label>
                        <div class="layui-input-block">
                            <input type="text" name="title" required lay-verify="required" placeholder="请输入标题"
                                   autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">项目编号</label>
                        <div class="layui-input-inline">
                            <input type="text" name="id" required lay-verify="required" placeholder="请输入编号"
                                   autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-form-mid layui-word-aux">编号不能为数字外的值</div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">项目作者</label>
                        <div class="layui-input-inline">
                            <input type="text" name="user_stu" required lay-verify="required" placeholder="请输入姓名"
                                   autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-form-mid layui-word-aux">多名作者请用“、”分隔姓名</div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">指导老师</label>
                        <div class="layui-input-inline">
                            <input type="text" name="teacher" required lay-verify="required" placeholder="请输入姓名"
                                   autocomplete="off" class="layui-input">
                        </div>
                        <!--<div class="layui-form-mid layui-word-aux">多名指导老师请用“、”分隔姓名</div>-->
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">项目类型</label>
                        <div class="layui-input-block">
                            <select name="city" lay-verify="required">
                                <option value=""></option>
                                <option value="0">java</option>
                                <option value="1">大数据</option>
                                <option value="2">机器学习</option>
                                <option value="3">c</option>
                                <option value="4">python</option>
                            </select>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">复选框</label>
                        <div class="layui-input-block">
                            <input type="checkbox" name="like[write]" title="毕业设计">
                            <input type="checkbox" name="like[read]" title="设计文档" checked>
                            <input type="checkbox" name="like[dai]" title="文档模板">
                        </div>
                    </div>
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">文本域</label>
                        <div class="layui-input-block">
                            <textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
                        <legend>文件上传</legend>
                    </fieldset>
                    <div class="layui-upload-drag" id="test10"><i class="layui-icon"></i>
                        <p>点击上传，或将文件拖拽到此处</p>
                        <div class="layui-hide" id="uploadDemoView">
                            <hr>
                            <img src="" alt="上传成功后渲染" style="max-width: 196px">
                        </div>
                    </div>
                </form>
            </div>
            <div class="layui-tab-item">2</div>
            <div class="layui-tab-item">3</div>
            <div class="layui-tab-item">4</div>
        </div>
    </div>


</div>
<script src="../dist/layui.js">
    var addi ='<%=request.getParameter("add")%>';
    if(addi=='yes'){
        alert("项目创建成功");
    }
    if (addi=='no'){
        alert("项目创建失败")
    }
</script>
</body>
</html>