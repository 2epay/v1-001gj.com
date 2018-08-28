$(function(){
    $("body").keydown(function() {
        if (event.keyCode == "13") {//keyCode=13是回车键
            $('#gologin').click();
        }
    });
});


function disable_login(btn) {
    btn.off('click');
    btn.removeClass('log-btn').addClass('log-btn-disabled');
}

function enable_login(btn,fn) {
    btn.on('click',fn);
    btn.removeClass('log-btn-disabled').addClass('log-btn');
}



var code = {
	"999":"未登陆",
	"1000":"登陆已关闭",
	"1001":"用户名或密码格式有误",
	"1002":"用户名不存在或密码错误",
	"1003":"用户已被锁定",
	"1004":"登陆服务异常，请联系客服",
	"1005":"登陆失败，请重试",
	"1006":"密码错误次数过多，已锁定",
	"1007":"用户名或密码错误-1",
	"1008":"您的账户还未审核通过，请稍后再试或联系客服！"
};


function agent_login(){
	var login_btn = $("#gologin");
		disable_login(login_btn);
		$.ajax({
			url: '/service/vpkey',
			error: function () {
				notify('未知错误！');
				enable_login(login_btn,member_login);
			},
			success: function (rs) {
				var pwd = $('#jpwd').val();
				var name = $('#uid').val();
				var rsaKey = new RSAKey();
				rsaKey.setPublic(b64tohex(rs.modulus), b64tohex(rs.exponent));
				var enPassword = hex2b64(rsaKey.encrypt(pwd));
				var data = {"apwd": enPassword, "aname": name};
				$.ajax({
					url: '/kz/agent/login?r=' + Math.random(),
					type: 'post',
					dataType: 'json',
					data: data,
					error: function () {
						enable_login(login_btn,agent_login);
					},
					success: function (da) {
						enable_login(login_btn,agent_login);
						if(da.c == 0){
							//window.location.reload();
							window.location.href='https://fb72a2c99f740c24.g-cdn-s.com/agent/info/index';
						}else if(da.c == 1007){
                            notify("用户名或密码错误，您还可以尝试"+da.m+"次。");
                        }else if(da.c == 1000){
                            notify(da.m);
                        }else{
							notify(getError(da.c,"agent_login"));
						}
					}});
			}
		});
}

function showChat(){
            $zopim(function() {
              $zopim.livechat.window.show();
              $(window.frames[0].document.body).find("div[__jx__id='___$_15__minimize_button ___$_15__minimize_button']").on('click',function(){
                     $(".zopim").hide(); 
                  });
            }); 
        }  

function notify(msg,type){
    if(!type){
        type = 'error';
    }
    Messenger().post({
        message: msg,
        type: type,
        showCloseButton: true
    });
}


var messageCount = 0;
$(function(){
    //bind login
    $("#gologin").click(function(){
		agent_login();
	});

    //message 
    if($("#_amessage").length>0){
        messageCount = parseInt($("#_amessage").html());
    setInterval(function(){
        $.ajax({
                url: '/agent/home/aUnRead',
                type: 'post',
                dataType: 'html',
                error: function () {
                    
                },
                success: function (n) {
                    $("#_amessage").html(n);
                    if(n>messageCount){notify("<A href="javascript:if(confirm('https://fb72a2c99f740c24.g-cdn-s.com/agent/info/message  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://fb72a2c99f740c24.g-cdn-s.com/agent/info/message'" tppabs="https://fb72a2c99f740c24.g-cdn-s.com/agent/info/message">您有新的未读消息</a>");}
                    messageCount = n;
                }});
        },30000);
    }
})

var browser={
    versions:function(){
           var u = navigator.userAgent, app = navigator.appVersion;
           return {//移动终端浏览器版本信息
                trident: u.indexOf('Trident') > -1, //IE内核
                presto: u.indexOf('Presto') > -1, //opera内核
                webKit: u.indexOf('AppleWebKit') > -1, //苹果、谷歌内核
                gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1, //火狐内核
                mobile: !!u.match(/AppleWebKit.*Mobile.*/), //是否为移动终端
                ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端
                android: u.indexOf('Android') > -1 || u.indexOf('Linux') > -1, //android终端或者uc浏览器
                iPhone: u.indexOf('iPhone') > -1, //是否为iPhone或者QQHD浏览器
                iPad: u.indexOf('iPad') > -1, //是否iPad
                webApp: u.indexOf('Safari') == -1 //是否web应该程序，没有头部与底部
            };
         }(),
         language:(navigator.browserLanguage || navigator.language).toLowerCase()
}

//解决部分浏览器不支持placeholder问题
$(function(){
if(!placeholderSupport()){   // 判断浏览器是否支持 placeholder
    $("#jpwd").attr("placeholder","请输入密码 ");
    $('[placeholder]').focus(function() {
        var input = $(this);
        if (input.val() == input.attr('placeholder')) {
            input.val('');
            input.removeClass('placeholder');
        }
    }).blur(function() {
        var input = $(this);
        if (input.val() == '' || input.val() == input.attr('placeholder')) {
            input.addClass('placeholder');
            input.val(input.attr('placeholder'));
        }
    }).blur();
};
});
function placeholderSupport() {
    return 'placeholder' in document.createElement('input');
}

function imgdragstart(){return false;} 
for(i in document.images)document.images[i].ondragstart=imgdragstart; 
 
 
//悬浮窗 在线客服
//$(function(){
//   $('#sideContact .side-contact-close').click(function(){
//        $(this).parent().fadeOut(200);
//   })
//})
//
//var scrollanimate = null;
//if($("#sideContact").length>0){
//    $(window).bind("resize", function(){ //绑定事件     
//        adscroll(); 
//    }).bind("scroll", function(){ 
//        adscroll(); 
//    }); 
//}
//function adscroll(){
//   clearTimeout(scrollanimate);
//   scrollanimate =  setTimeout(function(){
//       var top = $(document).scrollTop()+200;
//       $("#sideContact").animate({top:top+'px'});
//   },30);
//}

function SetCookie(name,value)
{
var Days = 30; 
var exp = new Date();
exp.setTime(exp.getTime() + Days*24*60*60*1000);
document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString()+";";
}

function delCookie(name)
{
var exp = new Date();
exp.setTime(exp.getTime() - 1);
var cval=getCookie(name);
if(cval!=null) document.cookie= name + "="+cval+";expires="+exp.toGMTString();
}

function getCookie(name)
{
var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
if(arr != null)
return unescape(arr[2]);
return null;
}