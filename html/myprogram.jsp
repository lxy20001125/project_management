
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>myprogram</title>
    <link rel="stylesheet" href="../dist/css/layui.css" media="all">
    <script src="../dist/layui.js"></script>
</head>
<body>
<div id="tabBody">
    <div class="layui-tab">
        <ul class="layui-tab-title">
            <li class="layui-this">新建项目</li>
            <li>项目管理</li>
        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <div style="padding: 15px;">
                    <form class="layui-form" action="${pageContext.request.contextPath}/project_servlet" method="post">
                        &nbsp;
                        <div class="layui-form-item">
                            <label class="layui-form-label">项目标题</label>
                            <div class="layui-input-block">
                                <input type="text" name="title" id="p_title" required lay-verify="required"
                                       placeholder="请输入标题(必填)"
                                       autocomplete="off" class="layui-input" onkeyup="value=value.replace(/[^\w\u4E00-\u9FA5]/g, '')">
                            </div>        <!--只允许输入中英文和数字-->
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">项目作者</label>
                            <div class="layui-input-inline">
                                <input type="text" name="user_stu" id="p_author" required
                                       lay-verify="required"
                                       placeholder="请输入姓名(必填)"
                                       autocomplete="off" class="layui-input"  onkeyup="value=value.replace(/[^\w\u4E00-\u9FA5]/g, '')">
                            </div>
                            <div class="layui-form-mid layui-word-aux"></div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">指导老师</label>
                            <div class="layui-input-inline">
                                <input type="text" name="teacher" id="p_teacher" required
                                       lay-verify="required"
                                       placeholder="请输入老师姓名(必填)"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">项目类型</label>
                            <div class="layui-input-block">
                                <select name="type" lay-verify="required" id="p_type">
                                    <option value="0">java</option>
                                    <option value="1">大数据</option>
                                    <option value="2">机器学习</option>
                                    <option value="3">c语言</option>
                                    <option value="4">python</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">复选框</label>
                            <div class="layui-input-block">
                                <input type="checkbox" name="like[graduation]" title="毕业设计">
                                <input type="checkbox" name="like[design]" title="设计文档" checked>
                                <input type="checkbox" name="like[sample]" title="文档模板">
                            </div>
                        </div>
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">文本域</label>
                            <div class="layui-input-block">
                                                <textarea name="desc" placeholder="请输入项目描述(必填)"
                                                          class="layui-textarea" id="subscribe"></textarea>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <a href="${pageContext.request.contextPath}/html/backProject.jsp">
                                    <button class="layui-btn" type="submit">立即提交</button>
                                </a>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="layui-tab-item">
               
                    <div class="demoTable">
                        搜索项目：
                        <div class="layui-inline">
                            <input class="layui-input" name="keyword reset" id="demoReload" autocomplete="off" onkeyup="myFunction()" placeholder="搜索..">
                        </div>
                        <button class="layui-btn" data-type="reload" type="submit" id="search" name="search">搜索</button>
                    </div>

                    <table class="layui-table" lay-filter="demo_myprogram" id="myTable">
                        <%-- <colgroup>
                             <col width="150">
                             <col width="200">
                             <col>
                         </colgroup>--%>
                        <thead>
                        <tr>
                            <th lay-data="{checkbox:ture，width:50}">w </th>
                            <th lay-data="{field:'title',width:200}">项目标题</th>
                            <th lay-data="{field:'username',width:100}">项目作者</th>
                            <th lay-data="{field:'teacher',width:100}">指导老师</th>
                            <th lay-data="{field:'type',width:100}">项目类型</th>
                            <th lay-data="{field:'io'}">项目简介</th>
                            <th lay-data="{fixed: 'right', align:'center', toolbar: '#barDemo_myprogram'}">操作</th>
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

               

            </div>

        </div>
    </div>
</div>
<script type="text/html" id="barDemo_myprogram">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script>


function myFunction() {
  // 声明变量
  var input, filter, table, tr, td, i;
  input = document.getElementById("demoReload");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
 
  // 循环表格每一行，查找匹配项
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    } 
  }
}


    var errori ='<%=request.getParameter("add")%>';
    if(errori=='yes'){
        confirm("创建项目成功");
    }
    if(errori=='no'){
        confirm("创建项目失败");
    }


    var table = layui.table;

    //转换静态表格
    table.init('demo_myprogram', {
        height: 315 //设置高度
        ,limit: 6 //注意：请务必确保 limit 参数（默认：10）是与你服务端限定的数据条数一致
        ,page:true
        ,
    });

    //工具条事件
    table.on('tool(demo_myprogram)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
        var data = obj.data; //获得当前行数据
        var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
        var tr = obj.tr; //获得当前行 tr 的 DOM 对象（如果有的话）

        if(layEvent === 'detail'){ //查看
            //do somehing
        } else if(layEvent === 'del'){ //删除
            layer.confirm('真的删除行么', function(index){
                obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                layer.close(index);
                //向服务端发送删除指令
            });
        } else if(layEvent === 'edit'){ //编辑
            //do something
            var u;
            var t;

            layer.prompt({
                formType: 2,
                value: '',
                title: '请输入值',
                area: ['400px', '300px'] //自定义文本域宽高
            }, function(value, index, elem){
                alert(value); //得到value
                layer.close(index);
            });

            /*obj.update({
                username: '123'
                ,title: 'xxx'
            });*/
        } else if(layEvent === 'LAYTABLE_TIPS'){
            layer.alert('Hi，头部工具栏扩展的右侧图标。');
        }
    });
</script>
<!--</div>-->
</body>
</html>