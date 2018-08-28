<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="_token" content="{{csrf_token()}}" />
    <title>{{ $_system_config->site_title  or 'motoo' }}</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
	<link href="/web/css/vendor.css" rel="stylesheet">

	<script type="text/javascript" src="/web/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="/web/js/jquery.backstretch.js"></script>
	<script type="text/javascript" src="/web/js/jquery.SuperSlide.2.1.1.js"></script>
	<script type="text/javascript" src="/web/js/jquery.carouFredSel-6.1.0.js"></script>
	<style type="text/css">
<!--
body {
 background-color: #ECE8E9;
}
-->
</style>
	<link rel="stylesheet" href="/cl/tpl/xinweinisi3/css/css.css?=672"/>
<link rel="stylesheet" href="/cl/tpl/xinweinisi3/css/main.css?=672"/>
<link rel="stylesheet" href="/cl/tpl/xinweinisi3/css/web.css?=672"/>
<link rel="stylesheet" href="/cl/tpl/xinweinisi3/css/index.css?=672"/>
<link rel="stylesheet" href="/cl/tpl/xinweinisi3/ver2/js/aomenbaliren.css?=672"/>
<link href="/cl/tpl/commonFile/js/ui/1.9.2/themes/base/jquery-ui.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/cl/tpl/commonFile/js/jquery-1.8.3.min.js"></script>

<script language="javascript" type="text/javascript" src="/cl/tpl/commonFile/js/jquery.bgiframe-2.1.2.js?=672"></script>
<script language="javascript" type="text/javascript" src="/cl/tpl/commonFile/js/common.js?=143"></script>
<script language="javascript" type="text/javascript" src="/cl/tpl/commonFile/js/upup.js?=143"></script>
<script language="javascript" type="text/javascript" src="/cl/tpl/commonFile/js/tab.js?=143"></script>
<script language="javascript" type="text/javascript" src="/cl/tpl/commonFile/js/swfobject.js?=143"></script>
<script language="javascript" type="text/javascript" src="/cl/tpl/commonFile/js/jquery.cookie.js?=143"></script>

<script src="/cl/tpl/commonFile/js/slider.js?=672"></script>



<script language="javascript" type="text/javascript" src="/cl/tpl/commonFile/js/jquery-finger-v0.1.0.js?=672"></script>
<script type="text/javascript" src="/cl/tpl/commonFile/js/aomenbaliren.js?=672"></script>
<script language="javascript" type="text/javascript" src="/cl/tpl/commonFile/js/float.js?=143"></script>
<link href="/cl/tpl/xinweinisi3/ver2/css/colorbox2.css?=672123" rel="stylesheet" type="text/css">
<script type="text/javascript"src="/cl/tpl/xinweinisi3/ver2/js/jquery.colorbox-min.js?=143"></script>
<script type="text/javascript"src="/cl/tpl/xinweinisi3/ver2/js/csPopup1.js?=679"></script>
<script type="text/javascript"src="/cl/tpl/xinweinisi3/ver2/js/jquery.SuperSlide.js?=679"></script>
<script type="text/javascript"src="/web/layer/layer.js"></script>
<script type="text/javascript">
$(function(){
    var page = "first";
	if($("#homemsgc").text()!="" && page == 'first')
	{
	    $('#homemsg').show();
		 layer.open({ type: 1,area: ['500px', '400px'],
		  shade: false,
		  title: false, //不显示标题
		  content:$('#homemsg'),
		  end:function(){
		     $('#homemsg').hide();
		  }
		});
	}
        });
// });

var is_login = '0';
$(function(){
	if(is_login == "0"){
		$(".sub-img").each(function(i){
			var onclickTxt = "alert('您尚未登录，请先登录再进行游戏')";
			$(this).attr("onclick",onclickTxt);
		});
	}
});


   // top.FestivalDay = "off";
    $(function() {
		var flashvars = {};
		attributes = {
		   id: 'logoId'
		};
		var params = {  
			wmode : "Transparent"//加入这个参数后，那个嵌入的swf文件就不会被致于最上顶层，而是嵌入到指定的div里面  
		}; 			
		swfobject.embedSWF('https://www.3333645.com:7777/cl/tpl/xinweinisi3/images/logo.swf?=679', 'logoId', '373', '109', "11.0.0", null,flashvars,params);
	
        var timeout= null;
        $("#nav-phone").hover(function(){
            clearTimeout(timeout);
            $(".mobile-list").fadeIn(500);
        },function(){
            timeout = setTimeout(function(){
                $(".mobile-list").fadeOut(500);
            },1000);
        });
        $(".mobile-list").hover(function(){
            clearTimeout(timeout);
        },function(){
            timeout = setTimeout(function(){
                $(".mobile-list").fadeOut(500);
            },1000);
        });
        sMsgReset('.msg-row a','||',"<br/><br/>");
        sMsgReset('.msg-col','||');
        new toggleColor( '.dianzi,.nav-promotion,.buyu' , ['yellow','red'] , 300 );
        new toggleColor( '#coperation' , ['#44B211','#ffffff'] , 200 );
        new toggleColor( '.partner' , ['red','#fff'] , 200 );
        new toggleColor( '.changeCol' , ['red','#ff0'] , 200 );
        new toggleColor( '.beiyong' , ['red','#46df17'] , 200 );
        new toggleColor( '.banli' , ['red','#46df17'] , 200 );
        new toggleColor( '.qhb' , ['red','#ff0'] , 200 );
        if(top.navChoose == "" || top.navChoose == undefined){
            top.navChoose = 0;
        }
        $('li.mainlevel').mousemove(function(){
            $(this).find('ul').slideDown();
        });
        $('li.mainlevel').mouseleave(function(){
            $(this).find('ul').slideUp("fast");
        });
        $('.flicker-example').flicker(
                {flick_animation: 'jquery-slide'}
        );
    });
  

</script>
</head>
<body id="index" class="first zh-cn">
@include('web.layouts.header')
<link href="{{ asset('web/css/member/css/member.css') }}" rel="stylesheet" />
<div id="banner" style="margin-top:140px"></div>
<div class="member-container">
	<div class="member-body">
		<div id="layout-top-area">
			<div class="sider-area"><span>会员中心</span></div>
			<ul class="nav-area">
				<li @if(in_array($web_route, ['member.userCenter', 'member.safe_psw', 'member.login_psw', 'member.update_bank_info'])) class="active" @endif><a href="{{ route('member.userCenter') }}" data-menu="member"><span>会员资料</span></a></li>
				<li @if(in_array($web_route, ['member.weixin_pay', 'member.ali_pay', 'member.bank_pay'])) class="active" @endif><a href="{{ route('member.qq_pay') }}" data-menu="recharge"><span>在线存款</span></a></li>
				<li @if(in_array($web_route, ['member.member_drawing'])) class="active" @endif><a href="{{ route('member.member_drawing') }}" data-menu="draw"><span>在线取款</span></a></li>
				<li @if(in_array($web_route, ['member.indoor_transfer'])) class="active" @endif><a href="{{ route('member.indoor_transfer') }}" data-menu="exchange"><span>额度转换</span></a></li>
				<li @if(in_array($web_route, ['member.singlenote_report'])) class="active" @endif><a href="{{ route('member.singlenote_report') }}" data-menu="bet"><span>注单查询</span></a></li>
				<li @if(in_array($web_route, ['member.customer_report'])) class="active" @endif><a href="{{ route('member.customer_report') }}" data-menu="money"><span>资金流水</span></a></li>
				<li @if(in_array($web_route, ['member.service_center', 'member.complaint_proposal'])) class="active" @endif><a href="{{ route('member.service_center') }}" data-menu="message"><span>服务中心</span></a></li>
			</ul>
		</div>
		<div id="layout-main-area">
			@yield('content')
		</div>
	</div>
</div>
@include('web.layouts.footer')
@include('web.layouts.aside')
<script src="/web/layer/layer.js"></script>
<script src="/web/js/ajax-submit-form731.js"></script>
<script src="/web/js/common.js"></script>
<script src="/web/js/jquery.page.js"></script>
<script src="/web/My97DatePicker/WdatePicker.js"></script>
@yield('after.js')
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    
</script>
</body>
</html>