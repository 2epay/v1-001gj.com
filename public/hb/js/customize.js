var isphone=false;
function browserRedirect() {  
    var sUserAgent = navigator.userAgent.toLowerCase();  
    var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";  
    var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";  
    var bIsMidp = sUserAgent.match(/midp/i) == "midp";  
    var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";  
    var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";  
    var bIsAndroid = sUserAgent.match(/android/i) == "android";  
    var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";  
    var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
    if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {  
        isphone=true;
    }
}
browserRedirect();
if(isphone){
    // window.location.href="wap/index.html";
    var windowWidth = $(window).width();
    $('#form_envelope').height(windowWidth*1.5*296/402);
    $('.banner').height(windowWidth*1.5*296/402+150);
}
$(function() {
    // $(".winners").slide({mainCell:".bd ul",autoPlay:true,effect:"topMarquee",vis:7,interTime:60,trigger:"click"});
function FloatClose(t){$("#TplFloatPic_0").hide(); }
function FloatClose1(t){$("#TplFloatPic_1").hide(); }
    var speed = 30
    marquee2.innerHTML = marquee1.innerHTML

    function Marquee() {
        if (marquee2.offsetTop - marquee.scrollTop <= 0)
            marquee.scrollTop -= marquee1.offsetHeight
        else {
            marquee.scrollTop++
        }
    }
    var MyMar = setInterval(Marquee, speed)
    marquee.onmouseover = function() { clearInterval(MyMar) }
    marquee.onmouseout = function() { MyMar = setInterval(Marquee, speed) }


    $("#btn_envelopes").click(function(){
        $(".layer").fadeIn();
        $('body').toggleClass('show-menu');
    });
    $(".close").click(function(){
        $(".layer").fadeOut();
    });
    $("#form_envelope").submit(function(){
        var $username=$("#username");
        if($username.val()==""){
            $username.focus();
            return false;
        }
        else{
            //$('#element').snowfall('clear');
            //$("#element").snowfall({image :"images/icon_envelopes.png", minSize: 50, maxSize:100});
            //$('.snowfall-flakes').click(function () {
            //    alert('接下来到后台出马了');
            //});
            //return false;
            $.post('/home/checkusr',
                { "username": $username.val() },
                function(data) {
                    switch (data.obj.stat) {
                    case -1:
                        alert('您输入的会员帐号不能为空!');
                        $('#element').snowfall('clear'); //清除红包雨 
                        break;
                    case -2:
                        alert('您的帐号无法领取红包!');
                        $('#element').snowfall('clear'); //清除红包雨 
                        break;
                    case -3:
                        alert('您的帐号领取次数已经用完!');
                        $('#element').snowfall('clear'); //清除红包雨 
                        break;
                    case 0:
                        $('#element').snowfall('clear'); //清除红包雨 

                        $("#element")
                            .snowfall({ image: "images/icon_envelopes.png", minSize: 50, maxSize: 100 }); //下载红包雨
                        $(".snowfall-flakes").click(function() {
                            GetRed($username.val());
                        });
                        break;
                    case -4:
                        alert('现在不是活动时间!');
                        $('#element').snowfall('clear'); //清除红包雨 
                        break;
                    default:
                        alert('网络错误,请稍后再抽奖');
                        break;
                    }

                });
            return false;
        }
    });
    $("#button").click(function() {
        queryPage();
        return false;
    });
    function GetRed(bCode) {
        $.ajax({
            url: '/home/getredPacket',
            dataType: 'json',
            cache: false,
            type: 'POST',
            data: { username: bCode },
            success: function(obj) {

                if (obj.msg == "no") {
                    alert("您的账号暂时无法领取");
                    $('#element').snowfall('clear'); //清除红包雨 
                }
                if (obj.msg == "ok") {
                    alert("恭喜您领取了红包" + obj.amount + "元");

                }
            },
            failure: function() {
                //api请求失败处理
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
                var x = 1;
                alert('网络故障,请联系管理员');
                $('#element').snowfall('clear'); //清除红包雨 
            }
        });
    }
    function createTable(mount, receivetime, distributed) {
        var tr = "<tr><td>" + mount + "</td><td>" + receivetime + "</td><td>" + distributed + "</td></tr>";
        $("#query_content").append(tr);
    }
    //红包领取查询
    function queryPage() {
        $.ajax({
            url: "/home/getTablelist",
            dataType: 'json',
            cache: false,
            data: { usr: $("#iusername").val() },
            type: 'post',
            success: function(obj) {
                if (obj.msg == "ok") {
                    $("#query_content").empty();
                    for (var i = 0; i < obj.rows.length; i++) {
                        var item = obj.rows[i];
                        if (item.Payout) {
                            createTable(obj.rows[i].Ammount, ChangeDateFormat(obj.rows[i].Recivetime), "是");
                        } else {
                            createTable(obj.rows[i].Ammount, ChangeDateFormat(obj.rows[i].Recivetime), "否");
                        }

                    }
                }
                if (obj.msg == "no") {
                    $("#query_content").html("<tr><td colspan='3'>未找到相关信息</td></tr>");
                }
            },

            error: function(XMLHttpRequest, textStatus, errorThrown) {

                var x = 1;

            }

        });

    }
    //格式化时间
    function ChangeDateFormat(cellval) {
        var date = new Date(parseInt(cellval.replace("/Date(", "").replace(")/", ""), 10));
        var month = date.getMonth() + 1 < 10 ? +(date.getMonth() + 1) : date.getMonth() + 1;
        var currentDate = date.getDate() < 10 ? +date.getDate() : date.getDate();
        var hour = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
        var minute = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
        var second = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
        return date.getFullYear() + "-" + month + "-" + currentDate + " " + hour + ":" + minute + ":" + second;

    }
});
