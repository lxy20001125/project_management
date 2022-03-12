<%--
  Created by IntelliJ IDEA.
  User: Eric
  Date: 2022/2/11
  Time: 11:54
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
<%--<div id="test"></div>
<script>
    layui.config({ base: 'js/modules/' }).extend({
        selectInput: 'selectInput/selectInput'
    }).use(['form', 'selectInput'], function() {
        var $ = layui.$, form = layui.form, selectInput= layui.selectInput;
        var ins = selectInput.render({
            // 容器id，必传参数
            elem: '#test1',
            name: 'test', // 渲染的input的name值
            initValue:'iPhone12 Pro Max', // 渲染初始化默认值
            placeholder: '请输入名称', // 渲染的inputplaceholder值
            // 联想select的初始化本地值，数组格式，里面的对象属性必须为value，name，value是实际选中值，name是展示值，两者可以一样
            data: [
                {value: 1111, name: 1111},
                {value: 2333, name: 2222},
                {value: 2333, name: 2333},
                {value: 2333, name: 2333},
            ],
            url: "https://www.layui.com/", // 异步加载的url，异步加载联想词的数组值
            remoteSearch: false,// 是否启用远程搜索 默认是false，和远程搜索回调保存同步
            // 解析回调，如果你的异步返回的data不是上述的data格式，请在此回调格式成对应的数据格式，回调参数是异步加载的数据
            parseData: function (data) {

            },
            error: function (error) { // 异步加载出错的回调 回调参数是错误msg

            },
            done: function (data) { // 异步加载成功后的回调 回调参数加载返回数据

            },
            remoteMethod: function (value, cb) { // 远程搜索的回调函数
                // value 是input实施输入的value值
                // cb是回调处理函数，请在执行ajax搜索请求成功之后执行此回调函数

                //案例
                //这里如果val为空, 则不触发搜索
                if (!value) {
                    return cb([]);
                }
                //这里的$.ajax去请求后台拿回数据
                $.ajax({
                    method: 'get',
                    url: 'https://www.fastmock.site/mock/98228b1f16b7e5112d6c0c87921eabc1/xmSelect/search',
                    data: {
                        keyword: val,
                    },
                    success: function (data) {
                        return cb(data)
                    }
                })
            }
        })
    });

    // 监听input 实时输入事件
    ins.on('itemInput(test1)', function (obj) {
        console.log(obj);
    });

    // 监听select 选择事件
    ins.on('itemSelect(test1)', function (obj) {
        console.log(obj);
    });


    // 如果使用本地数据加载，不要使用设置远程 url参数 也不要将remoteSearch参数设置为 true，完整的本地赋值数据案例

    var ins2 = selectInput.render({
        elem: '#test1',
        data: [
            {value: 1111, name: 1111},
            {value: 2333, name: 2222},
            {value: 2333, name: 2333},
            {value: 2333, name: 2333},
        ],
        placeholder: '请输入名称',
        name: 'list_common',
        remoteSearch: false
    });


    // 这是我项目中的需求做的一个组件，可能存在一些问题，如果有问题可以联系我，也可以去码云提问，有时间我会去看的，会尽量完善这个组件的

    // 2020-10-23 更新：允许value和name值不同，显示用name，取值用value；新增参数initValue，设置input默认初始值
    });
</script>--%>

<div class="demoTable">
    搜索老师：
    <div class="layui-inline">
        <input class="layui-input" name="keyword" id="demoReload" autocomplete="off">
    </div>
    <button class="layui-btn" data-type="reload">搜索</button>
</div>
<table class="layui-table" lay-filter="demo" style="background: #FFFFFF">
    <%-- <colgroup>
         <col width="150">
         <col width="200">
         <col>
     </colgroup>--%>
    <thead>
    <tr>
        <th lay-data="{field:'t_name',width:150}">教师姓名</th>
        <th lay-data="{field:'t_dir',width:200}">教学方向</th>
        <th lay-data="{field:'col',width:300}">联系方式</th>
        <th lay-data="{field:'sys'}">所负责实验室</th>
    </tr>
    </thead>
    <tbody id="c_table">
    <tr>
        <td>袁鑫</td>
        <td>机电工程</td>
        <td>18312695455</td>
        <td>北斗之芯</td>
    </tr>
    <tr>
        <td >马婷婷</td>
        <td>材料工程</td>
        <td>16545885655</td>
        <td>无</td>
    </tr>
    <tr>
        <td>夏洁武</td>
        <td>软件工程</td>
        <td>14585698852</td>
        <td>网络实验室</td>
    </tr>
    <tr>
        <td >赵凯</td>
        <td>操作系统</td>
        <td>18312546855</td>
        <td>linux实验室</td>
    </tr>
    <tr >
        <td >薛小婉</td>
        <td>计算机原理</td>
        <td>18564855698</td>
        <td>无</td>
    </tr>
    <tr>
        <td >黄大春</td>
        <td>大数据</td>
        <td>18345685455</td>
        <td>无</td>
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
