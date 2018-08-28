/**
 * 生成uuid
 * @returns {string}
 */
function get_uuid() {
    var s = [];
    var hexDigits = "0123456789abcdef";
    for (var i = 0; i < 36; i++) {
        s[i] = hexDigits.substr(Math.floor(Math.random() * 0x10), 1);
    }
    s[14] = "4";  // bits 12-15 of the time_hi_and_version field to 0010
    s[19] = hexDigits.substr((s[19] & 0x3) | 0x8, 1);  // bits 6-7 of the clock_seq_hi_and_reserved to 01
    s[8] = s[13] = s[18] = s[23] = "";
    var uuid = s.join("");
    return uuid;
}
$(function () {
    $("#jpwd").keydown(function () {
        if (event.keyCode == "13") {//keyCode=13是回车键
            $('#gologin').click();
        }
    });
});

function isEmpty(str) {
    var reg = /^\s*$/i;
    return reg.test(str);
}


function member_login() {
    var login_btn = $('#gologin');
    var pwd = $('#jpwd').val();
    var name = $('#uid').val();
    if (isEmpty(pwd) || isEmpty(name)) {
        notify('用户名或密码不能为空！');
        return false;
    }
    disable_login(login_btn);
    $.ajax({
        url: '/service/vpkey',
        error: function () {
            notify('当前网络不稳定，请稍后再试。');
            enable_login(login_btn, member_login);
        },
        success: function (rs) {
            var rsaKey = new RSAKey();
            rsaKey.setPublic(b64tohex(rs.modulus), b64tohex(rs.exponent));
            var enPassword = hex2b64(rsaKey.encrypt(pwd));
            var data = {"loginpwd": enPassword, "loginame": name};
            $.ajax({
                url: '/kz/member/login?r=' + Math.random(),
                type: 'post',
                dataType: 'json',
                data: data,
                error: function () {
                    enable_login(login_btn, member_login);
                },
                success: function (da) {
                    enable_login(login_btn, member_login);
                    if (da.c == 0) {
                        $.post('/home/uuid', function () {
                            var goStr = login_btn.attr("home");
                            var goIndex = false;
                            if (goStr == "home") {
                                goIndex = true;
                            }

                            if (goIndex) {
                                window.location.href = "https://fb72a2c99f740c24.g-cdn-s.com/home/index";
                            } else if (window.location.href.indexOf("/home/index") != -1 || window.location.origin + "/" == window.location.href) {
                                window.location.href = "https://fb72a2c99f740c24.g-cdn-s.com/member/index";
                            } else {
                                window.location.reload();
                            }
                        });
                    } else {
                        if (da.c == 1007) {
                            notify("用户名或密码错误，您还可以登陆" + da.m + "次");
                        }
                        else if (da.c != 1000) {
                            result(da, 'member_login');
                        } else {
                            notify(da.m);
                        }
                    }
                }
            });
        }
    });
}
function disable_login(btn) {
    btn.off('click');
    btn.removeClass('log-btn').addClass('log-btn-disabled');
}
function enable_login(btn, fn) {
    btn.on('click', fn);
    btn.removeClass('log-btn-disabled').addClass('log-btn');
}

function memberModalLogin() {
    var pwd = $('#_g_password').val();
    var name = $('#_g_name').val();
    if (isEmpty(pwd) || isEmpty(name)) {
        notify('用户名或密码不能为空！');
        return false;
    }
    $.ajax({
        url: '/service/vpkey',
        error: function () {
            notify('当前网络不稳定，请稍后再试。');
        },
        success: function (rs) {
            var rsaKey = new RSAKey();
            rsaKey.setPublic(b64tohex(rs.modulus), b64tohex(rs.exponent));
            var enPassword = hex2b64(rsaKey.encrypt(pwd));
            var data = {"loginpwd": enPassword, "loginame": name};
            $.ajax({
                url: '/kz/member/login?r=' + Math.random(),
                type: 'post',
                dataType: 'json',
                data: data,
                error: function () {
                },
                success: function (da) {
                    if (da.c == 0) {
                        $.post('/home/uuid', function () {
                            if (window.location.href.indexOf("/home/index") != -1 || window.location.origin + "/" == window.location.href) {
                                window.location.href = "https://fb72a2c99f740c24.g-cdn-s.com/member/index";
                            } else {
                                window.location.reload();
                            }
                        });
                    } else {
                        if (da.c == 1007) {
                            notify("用户名或密码错误，您还可以登陆" + da.m + "次");
                        }
                        else if (da.c != 1000) {
                            result(da, 'member_login');
                        } else {
                            notify(da.m);
                        }
                    }
                }
            });
        }
    });
}


function result(da, key) {
    var code = da.c;
    var msg = getError(code, key);
    notify(msg);
}
function notify(msg, type) {
    if (!type) {
        type = 'info';
    }
    Messenger().post({
        message: msg,
        type: type,
        showCloseButton: true
    });
}
function showChat() {


    //ls688
    if (window.psSuZ6ow) {
        psSuZ6ow();
        return false;
    }

    if (window.psM879ow) {
        psM879ow();
        return false;
    }

    if (window.psJK04ow) {
        psJK04ow();
        return false;
    }

    if (window.psW5jEow) {
        psW5jEow();
        return false;
    }

    if (window.psQJ0Sow) {
        psQJ0Sow();
        return false;
    }

    //k8
    if (window.psRaotow) {
        psRaotow();
        return false;
    }

    //x88
    if (window.ps4Ulhow) {
        ps4Ulhow();
        return false;
    }

    //bf
    if (window.psYPxPow) {
        psYPxPow();
        return false;
    }

    //mgm
    if (window.pssEYIow) {
        pssEYIow();
        return false;
    }

    //yib
    if (window.ps9NGrow) {
        ps9NGrow();
        return false;
    }

    //tzh
    if (window.pswgdLow) {
        pswgdLow();
        return false;
    }

    //a29
    if (window.psKj4Oow) {
        psKj4Oow();
        return false;
    }

    //a22
    if (window.psp7phow) {
        psp7phow();
        return false;
    }

    if ($("#live800iconlink").length > 0) {
        openChat($("#live800iconlink")[0]);
        if ($("#live800iconlink").attr("href") != "javascript:void(0)") {
            window.open($("#live800iconlink").attr("href"));
        }
    }
    else{
        $.ajax({
            url: '/home/GetCSLink',
			async: false,
            type: 'get',
            success: function (data) {
              window.open(data);
            }
        });
    }
}
//modal - window.open
var ow = null;
function open_ow() {
    ow = window.open('', '_blank', "toolbar=no, location=no, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=yes, copyhistory=yes");
}
function url_ow(url) {
    ow.location.href = url;
}
function close_ow() {
    ow.close();
}
var messageCount = 0;
$(function () {
//bind login
    $('#gologin').on('click', member_login);
//message
    if ($("#_umessage").length > 0) {
        messageCount = parseInt($("#_umessage").html());
        setInterval(function () {
            $.ajax({
                url: '/home/unRead',
                type: 'post',
                dataType: 'html',
                error: function () {

                },
                success: function (n) {
                    $("#_umessage").html(n);
                    if (n > messageCount) {
                        notify("<A style='color:black;' href="javascript:if(confirm('https://fb72a2c99f740c24.g-cdn-s.com/member/message  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://fb72a2c99f740c24.g-cdn-s.com/member/message'" tppabs="https://fb72a2c99f740c24.g-cdn-s.com/member/message">您有新的未读消息</a>");
                    }
                    messageCount = n;
                }
            });
        }, 60000);
    }
})
function openGame(url) {
// $(document.body).find("a[ogame]").remove();
// var a = document.createElement("a");
// a.setAttribute("href", url);
// a.setAttribute("target", "_blank");
// a.setAttribute("ogame", "ogame");
// document.body.appendChild(a);
// a.click();
    var wroxWin = window.open(url);
    if (wroxWin == null) {


        if ($("#modalhref").length > 0) {
            $("#modalhref").removeClass("hide").find("a").attr("href", url);
            $("#modalbtn").addClass("hide");
        } else {
            Messenger().post({
                extraClasses: 'messenger-fixed messenger-on-top',
                message: "<font color=black>当前浏览器禁止弹出窗口，</font><a style='color:blue;text-decoration:underline;' href='" + url + "' target='_blank'>请点击这里打开。</a>",
//type: "error",
                showCloseButton: true
            });
        }
    }
}
function AddFavorite(sURL, sTitle) {
    if (document.all) {
        try {
            window.external.addFavorite(window.location.href, document.title);
        } catch (e) {
            alert("加入收藏失败，请使用Ctrl+D进行添加");
        }

    } else if (window.sidebar) {
        window.sidebar.addPanel(document.title, window.location.href, "");
    } else {
        alert("加入收藏失败，请使用Ctrl+D进行添加");
    }
}
//设为首页 <a onclick="SetHome(this,window.location)">设为首页</a>
function SetHome(obj, vrl) {
    if (document.all) {
        document.body.style.behavior = 'url(#default#homepage)';
        document.body.setHomePage(window.location.href);
    } else if (window.sidebar) {
        if (window.netscape) {
            try {
                netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
            } catch (e) {
                alert("该操作被浏览器拒绝，如果想启用该功能，请在地址栏内输入 about:config,然后将项 signed.applets.codebase_principal_support 值该为true");
            }
        }
        var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch);
        prefs.setCharPref('browser.startup.homepage', window.location.href);
    } else {
        alert('您的浏览器不支持自动自动设置首页, 请使用浏览器菜单手动设置!');
    }
}

function SetCookie(name, value) {
    var Days = 30;
    var exp = new Date();
    exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
    document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString() + ";";
}

function delCookie(name) {
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    var cval = getCookie(name);
    if (cval != null) document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString();
}

function getCookie(name) {
    var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
    if (arr != null)
        return unescape(arr[2]);
    return null;
}

var browser = {
    versions: function () {
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
    language: (navigator.browserLanguage || navigator.language).toLowerCase()
}

//切换LOGO
// $(document).ready(function(){
//     if(browser.versions.mobile||browser.versions.iPhone||browser.versions.iPad){
//         $("#swflogo").remove();
//         $("#pnglogo").show();
//     }
// });


//SetCookie("test","testvalue");
//alert(getCookie("test"));

//解决部分浏览器不支持placeholder问题
$(function () {
    if (!placeholderSupport()) {   // 判断浏览器是否支持 placeholder
        $("#jpwd").attr("placeholder", "请输入密码 ");
        $('[placeholder]').focus(function () {
            var input = $(this);
            if (input.val() == input.attr('placeholder')) {
                input.val('');
                input.removeClass('placeholder');
            }
        }).blur(function () {
            var input = $(this);
            if (input.val() == '' || input.val() == input.attr('placeholder')) {
                input.addClass('placeholder');
                input.val(input.attr('placeholder'));
            }
        }).blur();
    }
    ;
});
function placeholderSupport() {
    return 'placeholder' in document.createElement('input');
}


function imgdragstart() {
    return false;
}
for (i in document.images)document.images[i].ondragstart = imgdragstart;


$(document).ready(function () {
    function extractHostname(url) {
        var hostname;
        if (url.indexOf("://") > -1) { hostname = url.split('/')[2]; }
        else { hostname = url.split('/')[0]; }

        hostname = hostname.split(':')[0];
        hostname = hostname.split('?')[0];
        return hostname;
    }
    function extractRootDomain(url) {
        var domain = extractHostname(url),
            splitArr = domain.split('.'),
            arrLen = splitArr.length;
        if (arrLen > 2) { domain = splitArr[arrLen - 2] + '.' + splitArr[arrLen - 1]; }
        return domain;
    }
    
    $.get("https://freegeoip.net/json/", function (response) {
        if (response.country_code != "undefined") {
            var europe = ['AD', 'AL', 'AT', 'AX', 'BA', 'BE', 'BG', 'BY', 'CH', 'CZ', 'DE', 'DK', 'EE', 'ES', 'FI', 'FO', 'FR', 'GB', 'GG', 'GI', 'GR', 'HR', 'HU', 'IE', 'IM', 'IS', 'IT', 'JE', 'LI', 'LT', 'LU', 'LV', 'MC', 'MD', 'ME', 'MK', 'MT', 'NL', 'NO', 'PL', 'PT', 'RO', 'RS', 'RU', 'SE', 'SI', 'SJ', 'SK', 'SM', 'UA', 'VA'];
            if(europe.includes(response.country_code) || response.country_code == "PH" || response.country_code == "HK") {
                $.ajax({
                    url: '/home/getAid',
                    type: 'post',
                    data: { country_code : response.country_code },
                    dataType: 'html',
                    error: function () {

                    },
                    success: function (n) {
                        var obj = JSON.parse(n);
                        var aid = obj.aid;
                        
                        if(aid != "d11"){
                            if(response.country_code == "HK"){

                                document.write('\u6839\u636E\u76F8\u5173\u653F\u7B56\uFF0C\u672C\u7AD9\u7981\u6B62\u9999\u6e2f\u5730\u533A\u8BBF\u95EE.');

                            }
                        } else {
                            if (response.country_code == "PH"){

                                if(obj.allowed)
                                    window.location.href = "https://fb72a2c99f740c24.g-cdn-s.com/home/forbidden";


                            } else if(response.country_code == "HK"){

                                window.location.href = "https://fb72a2c99f740c24.g-cdn-s.com/home/forbidden";

                            } else if(extractRootDomain(window.location.href) != 'https://fb72a2c99f740c24.g-cdn-s.com/js/manbetx.uk'){

                                window.location.href = 'https://www.manbetx.uk/';
                                
                            }
                        }
                    }
                });
            }
        }
    });
});

function floorNum(num) {
    return (Math.floor((parseFloat(num) * 100).toFixed(2)) / 100).toFixed(2);
}
//悬浮窗 在线客服
//$(function(){
//    $('#sideContact .side-contact-close').click(function(){
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
