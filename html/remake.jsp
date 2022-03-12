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
<form class="layui-form" action="form.html">
    <div class="layui-form-item">
        <label class="layui-form-label">昵称*</label>
        <div class="layui-input-block">
            <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入昵称" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">我的专业*</label>
        <div class="layui-input-block">
            <input type="text" name="username" lay-verify="required" lay-reqtext="专业是必填项，岂能为空？" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">验证手机*</label>
            <div class="layui-input-inline">
                <input type="tel" name="phone" lay-verify="required|phone" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">验证邮箱*</label>
            <div class="layui-input-inline">
                <input type="text" name="email" lay-verify="email" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">出生日期*</label>
            <div class="layui-input-inline">
                <input type="text" name="date" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">密码*</label>
        <div class="layui-input-inline">
            <input type="password" name="password" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">爱好</label>
        <div class="layui-input-block">
            <select name="interest" lay-filter="aihao">
                <option value=""></option>
                <option value="0">写作</option>
                <option value="1" selected="">阅读</option>
                <option value="2">游戏</option>
                <option value="3">音乐</option>
                <option value="4">旅行</option>
            </select>
        </div>
    </div>


    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">密保</label>
            <div class="layui-input-inline">
                <select name="quiz">
                    <option value="">请选择问题</option>
                    <optgroup label="密保问题">
                        <option value="你工作的第一个城市">你工作的第一个城市</option>
                        <option value="你的工号">你的工号</option>
                        <option value="你最喜欢的老师">你最喜欢的老师</option>
                    </optgroup>
                </select>
            </div>
        </div>
        <%--<div class="layui-inline">
            <label class="layui-form-label">搜索选择框</label>
            <div class="layui-input-inline">
                <select name="modules" lay-verify="required" lay-search="">
                    <option value="">直接选择或搜索选择</option>
                    <option value="1">layer</option>
                    <option value="2">form</option>
                    <option value="3">layim</option>
                    <option value="4">element</option>
                    <option value="5">laytpl</option>
                    <option value="6">upload</option>
                    <option value="7">laydate</option>
                    <option value="8">laypage</option>
                    <option value="9">flow</option>
                    <option value="10">util</option>
                    <option value="11">code</option>
                    <option value="12">tree</option>
                    <option value="13">layedit</option>
                    <option value="14">nav</option>
                    <option value="15">tab</option>
                    <option value="16">table</option>
                    <option value="17">select</option>
                    <option value="18">checkbox</option>
                    <option value="19">switch</option>
                    <option value="20">radio</option>
                </select>
            </div>
        </div>--%>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">住址</label>
        <div class="layui-input-inline">
            <select name="quiz1">
                <option value="">请选择省</option>
                <option value="浙江" selected="">浙江省</option>
                <option value="你的工号">江西省</option>
                <option value="你最喜欢的老师">北京市</option>
                <option value="你最喜欢的老师">天津市</option>
                <option value="你最喜欢的老师">河北省</option>
                <option value="你最喜欢的老师">山东省</option>
                <option value="你最喜欢的老师">海南省</option>
                <option value="你最喜欢的老师">上海市</option>
                <option value="你最喜欢的老师">深圳市</option>
            </select>
        </div>
        <div class="layui-input-inline">
            <select name="quiz2">
                <option value="">请选择市</option>
                <option value="杭州">杭州</option>
                <option value="宁波" disabled="">宁波</option>
                <option value="温州">温州</option>
                <option value="温州">台州</option>
                <option value="温州">绍兴</option>
            </select>
        </div>
        <div class="layui-input-inline">
            <select name="quiz3">
                <option value="">请选择县/区</option>
                <option value="西湖区">西湖区</option>
                <option value="余杭区">余杭区</option>
                <option value="拱墅区">临安市</option>
            </select>
        </div>
        <div class="layui-form-mid layui-word-aux">此处只是演示联动排版，并未做联动交互</div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">性别</label>
        <div class="layui-input-block">
            <input type="radio" name="sex" value="男" title="男" checked="">
            <input type="radio" name="sex" value="女" title="女">
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">个性签名</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
        </div>
    </div>
    <!--<div class="layui-form-item layui-form-text">
      <label class="layui-form-label">编辑器</label>
      <div class="layui-input-block">
        <textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="LAY_demo_editor"></textarea>
      </div>
    </div>-->
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>

<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length < 1){
                    return '你得有个昵称啊，你是社交达人啊';
                }
            }
            ,pass: [
                /^[\S]{6,12}$/
                ,'密码必须6到12位，且不能出现空格'
            ]
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });

        //监听指定开关
        form.on('switch(switchTest)', function(data){
            layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        });

        //监听提交
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });

        //表单赋值
        layui.$('#LAY-component-form-setval').on('click', function(){
            form.val('example', {
                "username": "贤心" // "name": "value"
                ,"password": "123456"
                ,"interest": 1
                ,"like[write]": true //复选框选中状态
                ,"close": true //开关状态
                ,"sex": "女"
                ,"desc": "我爱 layui"
            });
        });

        //表单取值
        layui.$('#LAY-component-form-getval').on('click', function(){
            var data = form.val('example');
            alert(JSON.stringify(data));
        });

    });
</script>
</body>
</html>
