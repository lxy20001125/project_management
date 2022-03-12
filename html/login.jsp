<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>login</title>
    <link rel="stylesheet" href="../css/login.css">
</head>
<body>
<script type="text/css"rel="stylesheet" src="../css/login.css"></script>
<!--start 登陆界面-->
<div class="Login">
    <!--start 表单-->
    <div class="form-box">
        <!--可选页 登陆或者注册页面-->
        <div class="button-box">
            <div id="btn"></div>
            <button type="button" class="toggle-btn" onclick="login()">登录</button>
            <button type="button" class="toggle-btn" onclick="register()" style="margin-left: 15px">管理员登陆</button>
        </div>
        <!--start 登陆-->
        <form id="login" class="input-group" action="${pageContext.request.contextPath}/login_servlet" method="post">
            <input type="text" class="input-field" id="userid" placeholder="User id" name="username" required onkeyup="this.value=this.value.replace(/\D/g,'')">
            <span id="useridMsg"></span><font  style="color: #999999;font-size: 12px">只允许输入数字</font>
            <input type="password" class="input-field" id="password" name="password" placeholder="Enter password"
                   required onKeyUp="value=value.replace(/[\W]/g,'')">
            <span id="passwordMsg"></span><font  style="color: #999999;font-size: 12px">只允许输入数字和英文字母</font>
            <br>
            <input type="checkbox" class="check-box"><span>记住密码</span>

                <button class="submit-btn" type="submit" onclick="log()">登录</button>


        </form>
        <!--end 登陆-->
        <!--start 注册-->
        <form id="register" class="input-group">
            <input type="text" class="input-field" placeholder="User id" required >
            <input type="text" class="input-field" placeholder="Enter your email" required>
            <input type="password" class="input-field" placeholder="Enter password" required>
            <button class="submit-btn" type="submit">登录</button>
        </form>
        <!--end 注册-->

    </div>
    <!--end 表单-->
</div>
<!--end 登录界面-->
<!--start 切换登陆/注册页面 其实是轮播图-->
<script>
    var errori ='<%=request.getParameter("error")%>';
    if(errori=='ture'){
        confirm("账号或密码错误");
    }

    var x = document.getElementById("login");
    var y = document.getElementById("register");
    var z = document.getElementById("btn");
//    var useridObj;
//    var passwordObj;
    function register() {
        x.style.left="-400px";
        y.style.left="50px";
        z.style.left="130px";
    }
    function  login(){
        x.style.left="50px";
        y.style.left="450px";
        z.style.left="0px";
    }

    function log() {
        var id = document.getElementById("userid").value;
        var pwd = document.getElementById("password").value;
      //  window.alert(id);
        if (id == "") {
            alert("id不能为空! ");
        } else if (pwd == "") {
            alert("密码不能为空!");
        }
    }
</script>
<!--end 切换登陆/注册页面-->
</body>
</html>