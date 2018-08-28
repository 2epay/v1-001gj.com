<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <title>{{ $_system_config->site_title or 'motoo' }}</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="keywords" content="{{ $_system_config->keyword }}">
   <!--<link rel="stylesheet" href="{{ asset('/web/css/flexslider.css') }}">
    <link rel="stylesheet" href="{{ asset('/web/css/style.css') }}">
    {{--<link rel="stylesheet" href="{{ asset('/web/css/index1.css') }}">--}}
    <link rel="stylesheet" href="{{ asset('/web/css/common.css') }}">
    {{--<link rel="stylesheet" href="{{ asset('/web/fonts/iconfont.css') }}">--}}
    <script src="{{ asset('/web/js/jquery-2.1.3.min.js') }}"></script>-->
	<link rel="stylesheet" href="/cl/tpl/xinweinisi3/css/css.css?=672"/>
<link rel="stylesheet" href="/cl/tpl/xinweinisi3/css/main.css?=672"/>
<link rel="stylesheet" href="/cl/tpl/xinweinisi3/css/web.css?=672"/>

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
<script src="/js/twoepay.js"></script>



<script language="javascript" type="text/javascript" src="/cl/tpl/commonFile/js/jquery-finger-v0.1.0.js?=672"></script>
<script type="text/javascript" src="/cl/tpl/commonFile/js/aomenbaliren.js?=672"></script>
<script language="javascript" type="text/javascript" src="/cl/tpl/commonFile/js/float.js?=143"></script>
<link href="/cl/tpl/xinweinisi3/ver2/css/colorbox2.css?=672123" rel="stylesheet" type="text/css">
<script type="text/javascript"src="/cl/tpl/xinweinisi3/ver2/js/jquery.colorbox-min.js?=143"></script>
<!-- <script type="text/javascript"src="/cl/tpl/xinweinisi3/ver2/js/csPopup1.js?=679"></script> -->
<script type="text/javascript"src="/cl/tpl/xinweinisi3/ver2/js/jquery.SuperSlide.js?=679"></script>
<!-- <script type="text/javascript"src="/redbag/js/layer/layer.js"></script> -->
@yield('head')
</head>
<body>  
@include('web.layouts.header')

@yield('content')
@include('web.layouts.footer')

@include('web.layouts.aside')
<script src="/web/layer/layer.js"></script>
<script src="/web/js/ajax-submit-form731.js"></script>
<script src="/web/js/common.js"></script>
@yield('after.js')
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
	
	function AddFavorite(sURL, sTitle) {
		try {
			window.external.addFavorite(sURL, sTitle);
		} catch (e) {
			try {
				window.sidebar.addPanel(sTitle, sURL, "");
			} catch (e) {
				alert("加入收藏失败，请使用Ctrl+D进行添加");
			}
		}
	}	
</script>
<script type="text/javascript">
    CsPopup.init(1);
</script>
</body>
</html>