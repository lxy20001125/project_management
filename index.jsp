<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>
<html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>
<html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
<html lang="en">
<head>
  <meta charset="utf-8000"/>
  <title>电信学院项目管理平台</title>
  <link rel="stylesheet" href="css/main1.css">
  <!--<link rel="stylesheet" href="../css/slideshow.css">-->
  <link rel="stylesheet" href="layui-v2.6.8/layui-v2.6.8/layui/css/layui.css">
</head>
<body>
<header>
  <div id="logo" style="margin: 0 0 0 0px">
    <a href="https://www.jgsu.edu.cn/" style="top: 0px">
      <image id="logo1"
             style="cursor: pointer;width:auto; height: auto"
             src="img/jingdalogo_red.png">
      </image>
      <div id="name" style="margin-left: 70px">
        <span>电子与信息工程学院项目管理平台</span>
      </div>
    </a>
  </div>
  <div style="height: 51px ;width: 130px; padding-top: 10px; padding-right: 5px" >
    <div>
      <div class="layui-icon" id="demo1" style="float: left ;position: relative ; padding-right: 5px">
        <img src="img/menu.jpg" width="51" height="51">
      </div>
      <a href="${pageContext.request.contextPath}/html/login.jsp" style="position: relative;z-index: 0" id="user">
        <img src="img/user.jpg" width="51" height="51" style=" position:relative;z-index: 2">
      </a>
    </div>
  </div>


</header>
<nav></nav>
<section>
  <div class="layui-anim layui-anim-fadein">
    <div class="layui-carousel" id="test1" lay-filter="test1" style="height: auto">
      <div carousel-item="">
        <div>
          <img src="img/lqb.png" width="100%" height="100%"/>
        </div>
        <div>
          <img src="img/cscc.png" width="100%" height="100%"/>
        </div>
        <div>
          <img src="img/csinfo.png" width="100%" height="100%"/>
        </div>
      </div>
    </div>
  </div>

  <div>
    <div class="layui-tab layui-tab-card" style="height: 20%;width: 100%">
      <ul class="layui-tab-title layui-col-md3" style="border-bottom: none;height: 100% ;background: #66B1F1 ;width: 20%">
        <li class="layui-this" style="display: list-item;">网站宗旨</li>
        <li style="display: list-item">项目管理</li>
        <li style="display: list-item">资源管理</li>
        <li style="display: list-item">实验室管理</li>
        <li style="display: list-item">用户管理</li>
      </ul>
      <div class="layui-tab-content  layui-col-md9" style="height: 100%; width: 80%">
        <div class="layui-tab-item layui-show" style="width: 100%;height: 100%">
         <img src="img/zongzhi.webp" style="width: 100%;height: 100%">
        </div >
        <div class="layui-tab-item" style="width: 100%;height: 100%">
          <img src="img/xiangmu.jpg" style="width: 100%;height: 100%">
        </div>
        <div class="layui-tab-item" style="width: 100%;height: 100%">
          <img src="img/ziyuan.jpg" style="width: 100%;height: 100%">
        </div>
        <div class="layui-tab-item" style="width: 100%;height: 100%">
          <img src="img/shiyanshi.jpg" style="width: 100%;height: 100%">
        </div>
        <div class="layui-tab-item" style="width: 100%;height: 100%">
          <img src="img/yonghu.jpg" style="width: 100%;height: 100%">
        </div>
      </div>
    </div>

  </div>


  <hr>
  <fieldset class="layui-elem-field">
    <legend>项目管理流程</legend>
    <div class="layui-field-box">
      <ul class="layui-timeline">
        <li class="layui-timeline-item">
          <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
          <div class="layui-timeline-content layui-text">
            <h3 class="layui-timeline-title">登录</h3>
            <p>
              用学校的学号和初始密码（666666）进行登录。
              <i class="layui-icon"></i>
            </p>
          </div>
        </li>
        <li class="layui-timeline-item">
          <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
          <div class="layui-timeline-content layui-text">
            <h3 class="layui-timeline-title">项目创建</h3>
            <p>
              在界面中点击项目创建按钮，输入项目信息进行项目创建可创建的项目类型目前包括：
            </p>
            <ul>
              <li>java</li>
              <li>python</li>
              <li>c语言</li>
              <li>大数据（spark等）</li>
            </ul>
            <p>
              选择完成后上传完项目文档或源码即可提交项目列表。
            </p>
          </div>
        </li>
        <li class="layui-timeline-item">
          <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
          <div class="layui-timeline-content layui-text">
            <h3 class="layui-timeline-title">项目管理</h3>
            <p>
              创建完成后即可进行项目管理，包括修改项目，删除项目，查找他人未完成项目，加入他人项目等等。
            </p>
          </div>
        </li>
      </ul>
    </div>
  </fieldset>


  <div class="layui-tab layui-tab-card" style="background: white; width: 80%;height: 20%; margin-left: 10% ">
    <ul class="layui-tab-title" style="width: 100%;background: #4476A7 ">
      <li class="layui-this" style="width: 15% ">计算机竞赛</li>
      <li style="width: 15%">校内竞赛</li>
      <li style="width: 15%">项目展示</li>
      <li style="width: 15%">校内实验室</li>
      <li style="width: 15%">校园活动</li>
    </ul>
    <div class="layui-tab-content" style="height: 300px;">
      <div class="layui-tab-item layui-show">
        <fieldset class="layui-elem-field">
          <legend>计算机综合</legend>
          <div class="layui-field-box">
            <a href="https://dasai.lanqiao.cn/" target="_blank" style="color: #000000;">
              <span style="font-size: 20px" >蓝桥杯大赛——全国TMT行业赛事</span>
            </a>
            <hr class="layui-border-red">
            <a href="https://www.51ds.org.cn/" target="_blank"  style="color: #000000;">
              <span style="font-size: 20px">计算机应用能力与信息素养大赛</span>
            </a>
            <hr class="layui-border-red">
            <a href="http://www.ncccu.org.cn/" target="_blank" style="color: #000000;">
              <span style="font-size: 20px">2021年第三届全国高校计算机能力挑战赛</span>
            </a>
            <hr class="layui-border-red">
            <a href="http://net.c4best.cn/" target="_blank" style="color: #000000;">
              <span style="font-size: 20px">网络技术挑战赛</span>
            </a>
            <hr class="layui-border-red">
            <a href="http://www.c4best.cn/" target="_blank" style="color: #000000;">
              <span style="font-size: 20px">中国高校计算机大赛</span>
            </a>
            <hr class="layui-border-red">
            <a href="http://www.saikr.com/" target="_blank" style="color: #000000;">
              <span style="font-size: 20px">IT科技节应用技能大赛</span>
            </a>
            <hr class="layui-border-red">
          </div>
        </fieldset>
      </div>


      <div class="layui-tab-item">
        <div class="layui-tab-item layui-show">
        <fieldset class="layui-elem-field">
          <legend>联合比赛</legend>
          <div class="layui-field-box">
            <a href="" style="color: #000000;">
              <span style="font-size: 20px">数学建模大赛</span>
            </a>
            <hr class="layui-border-red">
            <a href="" style="color: #000000;">
              <span style="font-size: 20px">计算机信息技术大赛</span>
            </a>
            <hr class="layui-border-red">
            <a href="" style="color: #000000;">
            <span style="font-size: 20px">慧鱼</span>
            </a>
            <hr class="layui-border-red">
          </div>
        </fieldset>
       </div>
      </div>
      <div class="layui-tab-item" style="width: 100%;height: 100%">
        <fieldset class="layui-elem-field" >
          <legend>优秀项目</legend>
          <div class="layui-field-box">
            <div class="layui-carousel" id="program" style="height: 100%;width: 100%">
              <div carousel-item style="height: 100%;width: 100%">
                <div>
                  <img src="img/web1.jpg" style="width: 100%;height: 100%">
                </div>
                <div>
                  <img src="img/web2.jpg" style="width: 100%;height: 100%">
                </div>
                <div>
                  <img src="img/web3.jpg" style="width: 100%;height: 100%">
                </div>
              </div>
            </div>
          </div>
        </fieldset>
      </div>
      <div class="layui-tab-item">
        <fieldset class="layui-elem-field" >
          <legend>实验室资源</legend>
          <div class="layui-field-box">
            <div class="layui-carousel" id="sys" style="height: 100%;width: 100%">
              <div carousel-item style="height: 100%;width: 100%">
                <div>
                  <img src="img/sys1.jpg" style="width: 100%;height: 100%">
                </div>
                <div>
                  <img src="img/sys2.jpg" style="width: 100%;height: 100%">
                </div>
                <div>
                  <img src="img/sys3.jpg" style="width: 100%;height: 100%">
                </div>
              </div>
            </div>
          </div>
        </fieldset>
      </div>
      <div class="layui-tab-item">
        <fieldset class="layui-elem-field">
          <legend>学院活动</legend>
          <div class="layui-field-box">
            <a href="http://news.cyol.com/node_67071.htm" target="_blank" style="color: #000000;">
              <span style="font-size: 20px" >青年大学习</span>
            </a>
            <hr class="layui-border-red">
            <a href="https://www.xuexi.cn/" target="_blank"  style="color: #000000;">
              <span style="font-size: 20px">学习强国</span>
            </a>
            <hr class="layui-border-red">

          </div>
        </fieldset>
      </div>
    </div>
  </div>

</section>
<aside>

</aside>
<footer>
  <div class="footer">
    <div class="footer-content">
      <div class="row" style="display: flex;">
        <div class="logo-footer"><img id="logo-footer" src="img/logo_footer.png" alt/>
        </div>
        <div class="col-sm-6">
          <ul class="list-icons">
            <li><i class="fa fa-map-marker pr-10"></i> 江西省吉安市青原区学苑路28号</li>
            <li><i class="fa fa-phone pr-10"></i> 0796-8103282</li>
            <li><i class="fa fa-envelope-o pr-10"></i> info@jgsu.edu.cn</li>
            <li><i class="fa fa-file-text-o pr-10"></i> 京ICP备20029469号</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div id="divfoot" align="center" style="background-color: #262626">
    <table width="100%" border="0" cellspacing="0">
      <tr>
        <td style="padding-top:15px; padding-left:50px">
          <a href="#" style="text-decoration: none">
            <span style="color:#747556"><b>CONTACT US</b></span>
          </a>
        </td>
      </tr>
      <tr>
        <td style="padding-left:50px;text-align: center">
                <span style="color:#CCCCCC">
                    <b style="font-family: 黑体">Copyright © <font style="color: red;font-family:宋体">井冈山大学.</font> All Rights Reserved</b><br>
                    <b style="text-align: center;font-family: 黑体;">19计算机1班 版权所有</b>
                </span>
        </td>
      </tr>
    </table>
  </div>
</footer>

<script rel="stylesheet" type="text/css" src="css/main1.css"></script>
<script rel="stylesheet" src="layui-v2.6.8/layui-v2.6.8/layui/css/layui.css"></script>
<script type="text/javascript" src="layui-v2.6.8/layui-v2.6.8/layui/layui.js"></script>
<script src="js/plugins.js"></script>
<script type="text/javascript">
  // function show() {
  //   layer.tips("左边么么哒", "#"+"", {
  //     tips: [3, "#4794ec"]
  //   });
  // }
  /*var S1 = document.getElementById("ss");
  var tip = document.getElementById("tips");*/
  // if (S1.onmouseover()){}
 /* S1.onmouseover = function (){
    tip.style.display = "block";
  }
  S1.onmouseout = function (){
    tip.style.display = "none";
  }*/

  //    document.write("<scr" + "ipt src=\"../css/slide.js\" language=\"JavaScript\" charset=\"gb2312\"></sc" + "ript>")
  layui.use('carousel', function(){
    var carousel = layui.carousel;
    //建造实例
    carousel.render({
      elem: '#program'
      ,width: '100%' //设置容器宽度
      ,arrow: 'always' //始终显示箭头
      //,anim: 'updown' //切换动画方式
    });
  });
  layui.use('carousel', function(){
    var carousel = layui.carousel;
    //建造实例
    carousel.render({
      elem: '#sys'
      ,width: '100%' //设置容器宽度
      ,arrow: 'always' //始终显示箭头
      //,anim: 'updown' //切换动画方式
    });
  });
  layui.use("carousel", function () {
    var carousel = layui.carousel;
    //建造实例
    carousel.render({
      elem: '#test1'
      , width: '100%' //设置容器宽度
      , height: '520px'
      , arrow: 'always' //始终显示箭头
      //,anim: 'updown' //切换动画方式
    });
  })

  layui.use('dropdown', function(){
    var dropdown = layui.dropdown
    dropdown.render({
      elem: '#demo1' //可绑定在任意元素中，此处以上述按钮为例
      ,data: [{
        title: '关于我们'
        ,id: 100
        ,href: '#'
      },{
        title: '活动'
        ,id: 101
        ,href: '#' //开启超链接
        ,target: '_blank' //新窗口方式打开
      },{type: '-'},{
        title: '团队'
        ,id: 102
        //菜单类型，支持：normal/group/parent/-
      },{type: '-'},{
        title: '合作'
        ,id: 108
      },{
        title: '体验'
        ,id: 109
      },{type:'-'},{
        title: '案例'
        ,id: 6
        ,type: 'group'
        ,isSpreadItem: false
      }]
      ,id: 'demo1'
      //菜单被点击的事件
      ,onmouseover: function(obj){
        console.log(obj);
        layer.msg('敬请期待');
      }
    });
  });
</script>
</body>
<!--<script type="text/javascript" src="../js/slide.js"></script>-->



</html>
