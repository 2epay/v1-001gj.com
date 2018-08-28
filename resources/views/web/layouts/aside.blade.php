@if($_system_config->is_right_on == 0)
	<link href="/dzyxcss/gg.css" rel="stylesheet">
		    <div class="notice_layer">
        <h3 style="background:#290D02;">{{ $_system_config->site_name }}公告详情 <span class="close"></span></h3>
        <div class="notice_con">
                          @foreach($_system_notices as $v)
                <div class="module">
                    <h4>{{ $v->title }}</h4>
                    <p>✿{{ $v->content }}</p>
                </div>
            @endforeach
                    </div>
	</div>
    <script>
        (function ($) {
			//公告
			$('#mar0').on('click', function () {
				var notice_index = layer.open({
					type: 1,
					title: false,
					closeBtn: 0,
					area: ['680px'],
					skin: 'layui-layer-nobg', //没有背景色
					shadeClose: true,
					content: $('.notice_layer')
				});

				$('.notice_layer').on('click', '.close', function () {
					layer.close(notice_index)
				})

            })
        })(jQuery)
    </script>
@if($_system_config->is_right_on == 0)
<div class="floatDiv" picfloat="right" id="float_right">
    <a class="float_right_open" href="javascript:void(0)" style="width:48px;height:305px;background:url(/cl/tpl/xinweinisi3/images/chats/right.png?=679) no-repeat left top;position:absolute;left:-48px;top:0px;">
          
    </a>
    <a href="javascript:;" onclick="javascript:window.open('{{ $_system_config->service_link }}','','width=500,height=400')" class="open">
        <span class="img_png right1 img-png-r"></span>
    </a>
    <a  class="open">
        <span class="img_png right2 img-png-r"></span>
    </a>
    <a href="http://wpa.qq.com/msgrd?v=1&uin={{ $_system_config->qq }}&site=qq&menu=yes"  target="_blank" class="open">
        <span class="img_png right3 img-png-r"><font size="4" style="position:relative;left:-23px;top:36px;color:#FAEB6C;">{{ $_system_config->qq }}</font></span>
    </a>
    <a href="javascript:f_com.getPager('-','MAdvertis','test_reg');"  class="open">
        <span class="img_png right4 img-png-r"><font size="4" style="position:relative;left:-23px;top:36px;color:#FAEB6C;">{{ $_system_config->phone1 }}</font></span>
    </a>
    <a href="javascript:void(0)" class="open" id="close">
        <span class="img_png right5 img-png-r" ></span>
    </a>

</div>
@endif
  @if($_system_config->is_left_on== 0)
<div class="floatDiv" picfloat="left" id="float_right2">
    <a class="float_right_open2" href="javascript:void(0)" style="width:48px;height:305px;background:url(/cl/tpl/xinweinisi3/images/chats/left.png?=679) no-repeat right top;position:absolute;right:-48px;top:0px;">    
    </a>
    <a href="javascript:void(0)" class="open left1 img-png-r1" >
    </a>
    <a  class="open left2 img-png-r1" href="{{ route('web.AppXz') }}"></a>
    <a  class="open left3 img-png-r1" target="_blank"></a>
    <a  class="open left4 img-png-r1" target="_blank"></a>
    <a href="javascript:void(0)" id="close1" class="open left5 img-png-r1" target="_blank"></a>
    
</div>
@endif
<div id="r-code" class="code-r" style="width: 248px;height:135px;position:fixed;right: -1px;bottom: 10px;z-index: 9999;overflow:hidden;">
    <div id="r-code-title1" style="z-index:99999;position:absolute;right:33px;top:0px; height: 30px;width:50px;cursor: pointer;"></div>
    <div class="main_visual" style="border-top:none;">
        <!-- <div class="flicking_con" style="top:0;left:30%;">
            <a href="#"></a>
            <a href="#"></a>
            <a href="#"></a>
            <a href="#"></a>
            <a href="#"></a>
        </div> -->
        <div class="main_image">
            <ul>
                <li ><img src="/cl/tpl/xinweinisi3/images/common/pic6.png?=679" width="248"  alt="" /></li>
                <li ><img src="/cl/tpl/xinweinisi3/images/common/pic1.png?=679" width="248"  alt="" /></li>
                <li ><img src="/cl/tpl/xinweinisi3/images/common/pic2.png?=679" width="248"  alt="" /></li>
                <li ><img src="/cl/tpl/xinweinisi3/images/common/pic3.png?=679" width="248"  alt="" /></li>
                <li ><img src="/cl/tpl/xinweinisi3/images/common/pic4.png?=679" width="248"  alt="" /></li>
                <li ><img src="/cl/tpl/xinweinisi3/images/common/pic5.png?=679" width="248"  alt="" /></li>
               
            </ul>
            <a href="javascript:;" id="btn_prev"></a>
            <a href="javascript:;" id="btn_next"></a>
        </div>
    </div>
</div>

<!--div id="w-code1" class="code-w" style="width: 150px;height:115px;position:fixed;right: 0px;top: 0;z-index: 999999;background: url(/cl/tpl/xinweinisi3/images/common/qhb.gif?=679) no-repeat;" onclick="window.open('https://www.hb0805.com/','_blank')">
</div-->
<div id="closes" style="position:fixed;right:0px;top:0px;height: 25px;width:25px;cursor: pointer;z-index:999999"></div>


	<!--style>
a.floathb {
    display: block;
    width: 150px;
    height: 113px;
    position: fixed;
    left: 0px;
    bottom: 0px;
    z-index: 9998;
    background-image: url(/web/images/aside/zjd.gif);
    background-repeat: no-repeat;
    background-position: center top;
}


</style-->
<style>
a.floathb {
    display: block;
    width: 210px;
    height: 240px;
    position: fixed;
    left: 0px;
    bottom: 0px;
    z-index: 9998;
    background-image: url(/web/images/aside/floathongbao.png);
    background-repeat: no-repeat;
    background-position: center top;
}
a.floathb:hover {
    background-position: center bottom;
}
#fixd-left {
    left: 0;
    top: 0;
}
.fixscroll {
    z-index: 9999;
    height: 394px;
    width: 130px;
    position: absolute;
}
.fixscroll a {
    display: block;
    position: relative;
}
#fixd-left .ad-close {
    display: inline-block;
    width: 100%;
    height: 21px;
    text-align: center;
}
#fixd-right {
    right: 0;
    top: 0;
}
#fixd-left .ad-close img {
    display: inline-block;
}
.fixscroll_qq {
    position: absolute;
    width: 100%;
    text-align: center;
    color: #fff;
    font-size: 16px;
    left: 0;
    top: 20px;
}
.fixscroll_app {
    position: absolute;
    width: 80%;
    left: 10%;
    top: 6%;
}
.fixscroll a img{
	vertical-align: bottom;
}
</style>
	<a href="/hongbao" class="floathb" target="_blank"></a>

</script>


<script>
(function(window) {
    "use strict";

    var eleTopAd = {

        topAd: {
            closeTopAd      : ["click", "#js-ele-topad-close-btn"],
            hoverTopAd      : ["mouseenter", "#js-ele-topad-wrap"],
            leaveTopAd      : ["mouseleave", "#js-ele-topad-wrap"]
        },

        topAd_functions: {
            // 關閉廣宣
            'closeTopAd' : function() {
                //cookie 記住已預覽，關閉瀏覽器前都不出現
                $.cookie("readTopAd", 1, {path: '/'});

                $('#js-ele-topad-wrap').css('display','none');
            },

            // 滑鼠滑過
            'hoverTopAd' :  function() {
                var eleTopAdContainer = $('#js-ele-topad-container');

                eleTopAdContainer
                    .css({
                        'width' : 280,
                        'height' : $(window).height()
                    })
                    .removeClass('ele-topad-Close')
                    .addClass('ele-topad-Open');
            },

            // 滑鼠移開
            'leaveTopAd' :  function() {
                var eleTopAdConer = $('#js-ele-topad-corner');

                $('#js-ele-topad-container')
                    .removeClass('ele-topad-Open')
                    .addClass('ele-topad-Close')
                    .css({
                        'width' : eleTopAdConer.width(),
                        'height' : eleTopAdConer.height()
                    });
            }
        },

        init: function() {
            var self = this;

            for (var key in self.topAd) {
                $(document).on(self.topAd[key][0], self.topAd[key][1], self.topAd_functions[key]);
            }

            //一進來檢查是否有已預覽的 cookie，若沒有顯示
            if($.cookie("readTopAd") === null) {
                $('#js-ele-topad-wrap').css('display','block');
            }
        }
    };

    eleTopAd.init();
})(window);            
</script>
            <!-- 左上角節慶-END -->

<!--左右浮动 end-->
<script language="javascript" type="text/javascript" src="/cl/tpl/xinweinisi3/ver2/js/xinyongli.js?=679"></script>
<!-- <script language="javascript" type="text/javascript" src="/cl/tpl/xinweinisi3/ver2/js/jquery.touchSlider.js?=679"></script> -->
<script type="text/javascript">

function inputCheck(){
	if(document.LoginForm.username.value == "" || document.LoginForm.username.value == "帐号"){
        alert('请输入帐号!!');
        document.LoginForm.username.focus();
        return false;
    }else if(document.LoginForm.passwd.value == "" || document.LoginForm.passwd.value == "xx@x@x.x"){
        alert('请输入密码!!');
        document.LoginForm.passwd.focus();
        return false;
    }else if(document.LoginForm.passwd.value.length > 0 && document.LoginForm.passwd.value.length < 6){
        alert('密码长度不能少于6个字元');
        document.LoginForm.passwd.focus();
        return false;
    }else if(document.LoginForm.vlcodes.value == "" || document.LoginForm.vlcodes.value == "验证码"){
        alert('请输入验证码!!');
        document.LoginForm.vlcodes.focus();
        return false;
    }
    return true;
}

var left_top = 140, right_top = 140, float_list = [];
console.log('everything ok');	
$(function(){
    
	$("#closes").click(function() {
	   $("#w-code1").fadeOut();
	});	
    $("#back-to-top").click(function(){
	   $('html, body').animate({scrollTop : 0},1000);
	});		
	if(top.uid || top.uid == "guest"){
		$("#LS-freeReg a").attr("href","javascript:void(0)");
	}
	var page = "first";
	var otherPage = "";
	var pageImgID = $("#banner_tabs");
	$(".header-nav-ul li").find("a").removeClass("hover");
		if( page=="MAdvertis"){
		
		pageImgID.css({
			"background": "url(/cl/tpl/xinweinisi3/images/nr_1.jpg?=679) center top"
		})
		if(otherPage == "MemberExclusiveII"){
           
            pageImgID.css({
                "background": "url(/cl/tpl/xinweinisi3/images/yh_01.jpg?=679) center top"
            })
			$("body").css({
                "background": "url(/cl/tpl/xinweinisi3/images/bj2_01.jpg?=679) center top"
            }).addClass('clearfix');
            
        }
	}else if(page.indexOf('Game') !=-1) {
        pageImgID.css({
                "background": "url(/cl/tpl/xinweinisi3/images/dz_01.jpg?=679) center top"
            })
            $(".rr").css({
                "background": "url(/cl/tpl/xinweinisi3/images/images/dz_z_02.jpg?=679) center top"
            }).addClass('clearfix');
    }else if(page == "LiveMain") {
        pageImgID.css({
                "background": "url(/cl/tpl/xinweinisi3/images/zr_01.jpg?=679)  center top"
            })
			 $(".rr").css({
                "background": "url(/cl/tpl/xinweinisi3/images/images/zr2_07.jpg?=679) center top"
            }).addClass('clearfix');
        
    }else if(page == "Lottery") {
        pageImgID.css({
                "background": "url(/cl/tpl/xinweinisi3/images/cp_01.jpg?=679) center top"
            })
			$(".rr").css({
                "background": "url(/cl/tpl/xinweinisi3/images/images/cp__02.jpg?=679) center top"
            }).addClass('clearfix');
			
        
    }else if(page == "AGGame"){
             pageImgID.css({
                "background": "url(/cl/tpl/xinweinisi3/images/dzyxs_02.jpg?=679) center top"
            })
                    $(".rr").css({
                "background": "url(/cl/tpl/xinweinisi3/images/images/dz_z_02.jpg?=679) center top"
            }).addClass('clearfix');
        
    }	
    if(page == "Sb") {
        $("#floatDivLeft").css({
            "display":"none"
        })
        pageImgID.css({
            "background": "url(/cl/tpl/xinweinisi3/images/sport.jpg?=679) center top"
        })
    };
    if(page == "Hc") {
        $("#floatDivLeft").css({
            "display":"none"
        })
        pageImgID.css({
            "background": "url(/cl/tpl/xinweinisi3/images/sport.jpg?=679) center top"
        })
    };
    $("#r-code-title1").click(function() {
       $(this).parents(".code-r").fadeOut(300);
    });

    $(".xs").mouseover(function(){
        $(".pzs").stop().slideDown();
    })
    $(".xs").mouseout(function(){
        $(".pzs").stop().slideUp();
    })
	
    var timeout1= null;
    $(".float_right_open").hover(function(){
       clearTimeout(timeout1);
       $("#float_right a.open").animate(
            {
                width:"131px"
            }
        );
        },function(){
       timeout1 = setTimeout(function(){
         $("#float_right a.open").animate(
            {
                width:"0px"
            });
         },1000);
    });
    $("#float_right a.open").hover(function(){
            clearTimeout(timeout1);
        },function(){
            timeout1 = setTimeout(function(){
                $("#float_right a.open").animate(
                    {
                        width:"0px"
                        }
                );
        },1000);
    });

    $(".float_right_open2").hover(function(){
       clearTimeout(timeout1);
       $("#float_right2 a.open").animate(
            {
                width:"131px"
            }
        );
        },function(){
       timeout1 = setTimeout(function(){
         $("#float_right2 a.open").animate(
            {
                width:"0px"
            });
         },1000);
    });
    $("#float_right2 a.open").hover(function(){
            clearTimeout(timeout1);
        },function(){
            timeout1 = setTimeout(function(){
                $("#float_right2 a.open").animate(
                    {
                        width:"0px"
                        }
                );
        },1000);
    });
    $("#close1").click(function(){
        $(this).parent(".floatDiv").css({
            "display":"none"
        })
    })
    $("#close").click(function(){
        $(this).parent(".floatDiv").css({
            "display":"none"
        })
    })
    // 厅主自改 - 浮动图
    $(".floatDiv").each(function(i){
        float_list[i] = $(this);
    });
    for (var i in float_list) {
        var self = float_list[i];   
        var picfloat = (self.attr('picfloat') == 'right') ? 1 : 0;
        self.show().Float({'floatRight' : picfloat, 'topSide' : ((picfloat == 1) ? right_top : left_top), 'side':0});
        
        // ie6 png bug
        if (navigator.userAgent.toLowerCase().indexOf('msie 6') != -1) {
            $.each(self.find('span'), function(){
                $(this).css({'width':$(this).width(),'height' : $(this).height()});
            });
        }       
        if (picfloat) {
            right_top = right_top + (self.find('a > span').height() || 300);
        } else {
            left_top = left_top + (self.find('a > span').height() || 300);
        }
        
        self.find('.floatBox div').click(function() {
            event.cancelBubble = true;
            $(this).parent('.floatBox').hide();
        });
    }   
    
    
});
   
/*    $(".main_image").touchSlider({
        flexible : true,
        speed : 400,
        btn_prev : $("#btn_prev"),
        btn_next : $("#btn_next"),
        paging : $(".flicking_con a"),
        counter : function (e){
            $(".flicking_con a").removeClass("on").eq(e.current-1).addClass("on");
        }
    });
    timer = setInterval(function(){
        $("#btn_next").click();
    }, 5000);
    
    $(".main_visual").hover(function(){
        clearInterval(timer);
    },function(){
        timer = setInterval(function(){
            $("#btn_next").click();
        },5000);
    });
    
    $(".main_image").bind("touchstart",function(){
        clearInterval(timer);
    }).bind("touchend", function(){
        timer = setInterval(function(){
            $("#btn_next").click();
        }, 5000);
    });*/
        
    

</script></div><div  id="homemsg" style="display:none;"><div  style="padding:10px;color:#000000" id="homemsgc"></div></div>

    @endif