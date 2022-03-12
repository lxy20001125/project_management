/**
 * Created by 86159 on 2021/12/16.
 */
//JS
layui.use(['layer', 'form', 'element', 'jquery', 'dialog'], function() {
    var element = layui.element
        , layer = layui.layer
        , util = layui.util
        , $ = layui.$;

    //头部事件
    util.event('lay-header-event', {
        //左侧菜单事件
        menuLeft: function (othis) {
            layer.msg('展开左侧菜单的操作', {icon: 0});
        }
        , menuRight: function () {
            layer.open({
                type: 1
                , content: '<div style="padding: 15px;"></div>'
                , area: ['260px', '100%']
                , offset: 'rt' //右上角
                , anim: 5
                , shadeClose: true
            });
        }
    });

});
//Demo
layui.use('form', function () {
    var form = layui.form;

    //监听提交
    form.on('submit(formDemo)', function (data) {
        layer.msg(JSON.stringify(data.field));
        return false;
    });
});
layui.use(['upload', 'element', 'layer'], function () {
    var $ = layui.jquery
        , upload = layui.upload
        , element = layui.element
        , layer = layui.layer;

//拖拽上传
    upload.render({
        elem: '#test10'
        , url: 'https://httpbin.org/post' //此处用的是第三方的 http 请求演示，实际使用时改成您自己的上传接口即可。
        , done: function (res) {
            layer.msg('上传成功');
            layui.$('#uploadDemoView').removeClass('layui-hide').find('img').attr('src', res.files.file);
            console.log(res)
        }
    });
});
// layui.use(['layer', 'form', 'element', 'jquery', 'dialog'], function() {
//     var element = layui.element;
//     var $ = layui.jquery;
//     var mainLayout = $('#main-layout');
//
//     element.on('nav(leftNav)', function(elem) {
//         var navA = $(elem).find('a');
//         var id = navA.attr('data-id');
//         var url = navA.attr('data-url');
//         var text = navA.attr('data-text');
//         if(!url){
//             return;
//         }
//         var isActive = $('.main-layout-tab .layui-tab-title').find("li[lay-id=" + id + "]");
//         if(isActive.length >= 0) {
//             //切换到选项卡
//             element.tabChange('tab', id);
//         } else {
//             element.tabAdd('tab', {
//                 title: text,
//                 content: '<iframe src="' + url + '" name="iframe' + id + '" class="iframe" framborder="0" data-id="' + id + '" scrolling="auto" width="100%"  height="100%"></iframe>',
//                 id: id
//             });
//             element.tabChange('tab', id);
//
//         }
//         mainLayout.removeClass('hide-side');
//     });
// });
layui.use('element', function(){
    var $ = layui.jquery
        ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

    //触发事件
    var active = {
        tabAdd: function(){
            //新增一个Tab项
            element.tabAdd('tab', {
                title: '新选项'+ (Math.random()*1000|0) //用于演示
                ,content: '内容'+ (Math.random()*1000|0)
                ,id: new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
            })
        }
        ,tabDelete: function(othis){
            //删除指定Tab项
            element.tabDelete('demo', '44'); //删除：“商品管理”


            othis.addClass('layui-btn-disabled');
        }
        ,tabChange: function(){
            //切换到指定Tab项
            element.tabChange('demo', '22'); //切换到：用户管理
        }
    };

    $('.site-demo-active').on('click', function(){
        var othis = $(this), type = othis.data('type');
        active[type] ? active[type].call(this, othis) : '';
    });

    //Hash地址的定位
    var layid = location.hash.replace(/^#test=/, '');
    element.tabChange('test', layid);

    element.on('tab(test)', function(elem){
        location.hash = 'test='+ $(this).attr('lay-id');
    });

});

//自定义验证规则
form.verify({
    title: function(value){
        if(value.length < 5){
            return '标题至少得5个字符啊';
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
