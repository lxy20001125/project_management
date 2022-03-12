
var usernameObj;
var passwordObj;


var usernameMsg;
var passwordMsg;
var confirmMsg;

window.onload = function() {	// 页面加载之后, 获取页面中的对象
    usernameObj = document.getElementById("username");
    passwordObj = document.getElementById("password");

    usernameMsg = document.getElementById("usernameMsg");
    passwordMsg = document.getElementById("passwordMsg");
    confirmMsg = document.getElementById("confirmMsg");
};

function checkForm() {			// 验证整个表单
    var bUsername = checkUsername();
    var bPassword = checkPassword();
    return bUsername && bPassword ;	// return false后, 事件将被取消
}


function checkUsername() {		// 验证用户名
    var regex = /^{0,9}$/;	    // 数字10位
    var value = usernameObj.value;// 获取usernameObj中的文本
    var msg = "";						// 最后的提示消息, 默认为空
    if (!value)							// 如果用户名没填, 填了就是一个字符串可以当作true, 没填的话不论null或者""都是false
        usernameObj.setAttribute("placeholder","用户名不能为空");			// 改变提示消息
    else if (!regex.test(value))		// 如果用户名不能匹配正则表达式规则
        msg = "用户名不合法：";			// 改变提示消息
    usernameMsg.innerHTML = msg;		// 将提示消息放入SPAN
    usernameObj.parentNode.parentNode.style.color = msg == "" ? "black" : "red";	// 根据消息结果改变tr的颜色
    return msg == "";					// 如果提示消息为空则代表没出错, 返回true
}

function checkPassword() {		// 验证密码
    var regex = /^.{6,16}$/;			// 任意字符, 6到16位
    var value = passwordObj.value;
    var msg = "";
    if (!value)
        msg = "密码必须填写：";
    else if (!regex.test(value))
        msg = "密码不合法：";
    passwordMsg.innerHTML = msg;
    passwordObj.parentNode.parentNode.style.color = msg == "" ? "black" : "red";
    return msg == "";
}

