var parent = document.getElementById("parent");
var uls = document.getElementById("uls");
var img_ul = document.getElementById("img_ul");
var Cir_ul = document.getElementById("Cir_ul");
var buttons = document.getElementById("buttons");

var cLis = Cir_ul.children;
var width = parent.offsetWidth;
var len = img_ul.children.offsetWidth;
var timer =null;
index = 0;
var num = cLis.length;

function slide() {
    img_ul.children.onmouseout = function () {
        timer = setInterval(function () {
            ++index;
            if (index > num) {
                index = 0;
            }
            changeImg();
        }, 4000);
    };
    img_ul.children.onmouseover = function () {
        if(timer!=null){
            clearInterval(timer);
        }
    };
    img_ul.children.onmouseout();
    // img_ul.children.onmouseover();
    for(var j=0;j<num;++j){
        cLis[j].index=j;
        cLis[j].onclick = function(){
            index = this.index;
            changeImg();
        }
    }
    buttons.children[0].onclick = function(){
        --index;
        if(index<0){
            index=num-1;
        }
        changeImg();
    };
    buttons.children[1].onclick = function(){
        ++index;
        if(index>=num){
            index=0;
        }
        changeImg();
    }
}
slide();

function changeImg(){
    for(var i=0;i<num;++i){
        img_ul.children[i].style.display='none';
        cLis[i].className="";
    }
    img_ul.children[index-1].style.display='block';
    // document.write(""+cLis.length);
    //超出数组下标的情况下会报错
    cLis[index-1].className='li1';
}
img_ul.onmouseover();

