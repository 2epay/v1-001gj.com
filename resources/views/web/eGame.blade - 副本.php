
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lte IE 6]>
<html class="lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"/>
    <script type="text/javascript" src="dzyxcss/js/jquery2.js"></script>
    <script type="text/javascript" src="dzyxcss/skin/js/top.js"></script>
    <link type="text/css" rel="stylesheet" href="dzyxcss/newindex/jPages.css">
    <link type="text/css" rel="stylesheet" href="dzyxcss/newindex/zb.css">
    <script type="text/javascript" src="dzyxcss/js/jPages.min.js"></script>
    <style type="text/css">
        html {
            overflow-x: hidden;
        }
    </style>

</head>
<body>

	<div class="game_type">

 @if(in_array('PT', $_api_list) && 'PT' == $api_name)
	
	     <div class="gm_s_l">
        <span>游戏分类：</span>
        <select id="gm_type">
            <option value="0" selected="selected">PT电子游戏</option>
            <!--option value="1">老虎机</option>
            <option value="2">街机游戏</option>
            <option value="3">刮卡游戏</option>
            <option value="4">桌面/纸牌游戏</option>
            <option value="5">视频扑克</option>
            <option value="6">小游戏</option-->
        </select>
    </div> 
    <div class="gm_s_r">
        <span>搜索游戏：</span>
        <input type="text" id="s_text" name="s_text" value="" class="s_text"/>
        <input type="button" id="s_btn" name="s_btn" value="搜索" class="s_btn"/>
    </div>
</div>
<div class="game_list">
    <!-- PT游戏厅  -->
    <ul id="item">
        <!-- 老虎机 -->
					@foreach($game_list as $item)
                                           @if($item->api->api_name == 'PT' && $item->client_type == 1)

        <li>
            <span class="g_name">
                <a href="javascript:void(0);">{{ $item->name }}</a>
            </span>
            <a class="g_img pt" href="javascript:;"
                                                  @if($_member) onclick="javascript:window.open('{{ route('pt.playGame') }}?gametype={{ $item->game_id }}','','width=1024,height=768')"
                                                  @else onclick="return alert('请先登录！')" @endif>
												  <?php $img_path = $item->img_path;?>
			<img src="{{ asset("/web/images/games/pt/$img_path")}}" class="lazy" width="140" height="125">
            </a>
        </li>
 @endif
@endforeach
@endif
 @if(in_array('MG', $_api_list) && 'MG' == $api_name)
	     <div class="gm_s_l">
        <span>游戏分类：</span>
        <select id="gm_type">
            <option value="0" selected="selected">MG电子游戏</option>
            <!--option value="1">老虎机</option>
            <option value="2">街机游戏</option>
            <option value="3">刮卡游戏</option>
            <option value="4">桌面/纸牌游戏</option>
            <option value="5">视频扑克</option>
            <option value="6">小游戏</option-->
        </select>
    </div>
    <div class="gm_s_r">
        <span>搜索游戏：</span>
        <input type="text" id="s_text" name="s_text" value="" class="s_text"/>
        <input type="button" id="s_btn" name="s_btn" value="搜索" class="s_btn"/>
    </div>
</div>
<div class="game_list">
    <!-- PT游戏厅  -->
    <ul id="item">
        <!-- 老虎机 -->
					@foreach($game_list as $item)
                                           @if($item->api->api_name == 'MG' && $item->client_type == 1)
        <li>
            <span class="g_name">
                <a href="javascript:void(0);">{{ $item->name }}</a>
            </span>
            <a class="g_img pt" href="javascript:;"
                                                  @if($_member) onclick="javascript:window.open('{{ route('mg.playGame') }}?gametype={{ $item->game_id }}','','width=1024,height=768')"
                                                  @else onclick="return alert('请先登录！')" @endif>
												  <?php $img_path = $item->img_path;?>
			<img src="{{ asset("/web/images/games/MG/$img_path")}}" class="lazy" width="140" height="120">
            </a>
        </li>

 @endif
@endforeach
@endif
 @if(in_array('AG', $_api_list) && 'AG' == $api_name)
	     <div class="gm_s_l">
        <span>游戏分类：</span>
        <select id="gm_type">
            <option value="0" selected="selected">AG电子游戏</option>
            <!--option value="1">老虎机</option>
            <option value="2">街机游戏</option>
            <option value="3">刮卡游戏</option>
            <option value="4">桌面/纸牌游戏</option>
            <option value="5">视频扑克</option>
            <option value="6">小游戏</option-->
        </select>
    </div>
    <div class="gm_s_r">
        <span>搜索游戏：</span>
        <input type="text" id="s_text" name="s_text" value="" class="s_text"/>
        <input type="button" id="s_btn" name="s_btn" value="搜索" class="s_btn"/>
    </div>
</div>
<div class="game_list">
    <!-- PT游戏厅  -->
    <ul id="item">
        <!-- 老虎机 -->
					@foreach($game_list as $item)
                                           @if($item->api->api_name == 'AG' && $item->client_type == 1)
        <li>
            <span class="g_name">
                <a href="javascript:void(0);">{{ $item->name }}</a>
            </span>
            <a class="g_img pt" href="javascript:;"
                                                  @if($_member) onclick="javascript:window.open('{{ route('ag.playGame') }}?gametype={{ $item->game_id }}','','width=1024,height=768')"
                                                  @else onclick="return alert('请先登录！')" @endif>
												  <?php $img_path = $item->img_path;?>
			<img src="{{ asset("/web/images/games/AG/$img_path")}}" class="lazy" width="140" height="120">
            </a>
        </li>
 @endif
@endforeach
@endif
 @if(in_array('BBIN', $_api_list) && 'BBIN' == $api_name)
	     <div class="gm_s_l">
        <span>游戏分类：</span>
        <select id="gm_type">
            <option value="0" selected="selected">BBIN电子游戏</option>
            <!--option value="1">老虎机</option>
            <option value="2">街机游戏</option>
            <option value="3">刮卡游戏</option>
            <option value="4">桌面/纸牌游戏</option>
            <option value="5">视频扑克</option>
            <option value="6">小游戏</option-->
        </select>
    </div>
    <div class="gm_s_r">
        <span>搜索游戏：</span>
        <input type="text" id="s_text" name="s_text" value="" class="s_text"/>
        <input type="button" id="s_btn" name="s_btn" value="搜索" class="s_btn"/>
    </div>
</div>
<div class="game_list">
    <!-- PT游戏厅  -->
    <ul id="item">
        <!-- 老虎机 -->
					@foreach($game_list as $item)
                                           @if($item->api->api_name == 'BBIN' && $item->client_type == 1)
        <li>
            <span class="g_name">
                <a href="javascript:void(0);">{{ $item->name }}</a>
            </span>
            <a class="g_img pt" href="javascript:;"
                                                  @if($_member) onclick="javascript:window.open('{{ route('bbin.playGame') }}?gametype={{ $item->game_id }}','','width=1024,height=768')"
                                                  @else onclick="return alert('请先登录！')" @endif>
												  <?php $img_path = $item->img_path;?>
			<img src="{{ asset("/web/images/games/BBIN/$img_path")}}" class="lazy" width="140" height="120">
            </a>
        </li>
 @endif
@endforeach
@endif
 @if(in_array('SA', $_api_list) && 'SA' == $api_name)
	     <div class="gm_s_l">
        <span>游戏分类：</span>
        <select id="gm_type">
            <option value="0" selected="selected">SA电子游戏</option>
            <!--option value="1">老虎机</option>
            <option value="2">街机游戏</option>
            <option value="3">刮卡游戏</option>
            <option value="4">桌面/纸牌游戏</option>
            <option value="5">视频扑克</option>
            <option value="6">小游戏</option-->
        </select>
    </div>
    <div class="gm_s_r">
        <span>搜索游戏：</span>
        <input type="text" id="s_text" name="s_text" value="" class="s_text"/>
        <input type="button" id="s_btn" name="s_btn" value="搜索" class="s_btn"/>
    </div>
</div>
<div class="game_list">
    <!-- PT游戏厅  -->
    <ul id="item">
        <!-- 老虎机 -->
					@foreach($game_list as $item)
                                           @if($item->api->api_name == 'SA' && $item->client_type == 1)
        <li>
            <span class="g_name">
                <a href="javascript:void(0);">{{ $item->name }}</a>
            </span>
            <a class="g_img pt" href="javascript:;"
                                                  @if($_member) onclick="javascript:window.open('{{ route('sa.playGame') }}?gametype={{ $item->game_id }}','','width=1024,height=768')"
                                                  @else onclick="return alert('请先登录！')" @endif>
												  <?php $img_path = $item->img_path;?>
			<img src="{{ asset("/web/images/games/SA/$img_path")}}" class="lazy" width="140" height="120">
            </a>
        </li>
 @endif
@endforeach
@endif
@if(in_array('DT', $_api_list) && 'DT' == $api_name)
	    <div class="gm_s_l">
        <span>游戏分类：</span>
        <select id="gm_type">
            <option value="0" selected="selected">DT电子游戏</option>
            <!--option value="1">老虎机</option>
            <option value="2">街机游戏</option>
            <option value="3">刮卡游戏</option>
            <option value="4">桌面/纸牌游戏</option>
            <option value="5">视频扑克</option>
            <option value="6">小游戏</option-->
        </select>
    </div>
    <div class="gm_s_r">
        <span>搜索游戏：</span>
        <input type="text" id="s_text" name="s_text" value="" class="s_text"/>
        <input type="button" id="s_btn" name="s_btn" value="搜索" class="s_btn"/>
    </div>
</div>
<div class="game_list">
    <!-- PT游戏厅  -->
    <ul id="item">
        <!-- 老虎机 -->
					@foreach($game_list as $item)
                                           @if($item->api->api_name == 'DT' && $item->client_type == 1)
        <li>
            <span class="g_name">
                <a href="javascript:void(0);">{{ $item->name }}</a>
            </span>
            <a class="g_img pt" href="javascript:;"
                                                  @if($_member) onclick="javascript:window.open('{{ route('dt.playGame') }}?gametype={{ $item->game_id }}','','width=1024,height=768')"
                                                  @else onclick="return alert('请先登录！')" @endif>
												  <?php $img_path = $item->img_path;?>
			<img src="{{ asset("/web/images/games/DT/$img_path")}}" class="lazy" width="140" height="120">
            </a>
        </li>
 @endif
@endforeach
@endif
@if(in_array('TTG', $_api_list) && 'TTG' == $api_name)
	    <div class="gm_s_l">
        <span>游戏分类：</span>
        <select id="gm_type">
            <option value="0" selected="selected">TTG电子游戏</option>
            <!--option value="1">老虎机</option>
            <option value="2">街机游戏</option>
            <option value="3">刮卡游戏</option>
            <option value="4">桌面/纸牌游戏</option>
            <option value="5">视频扑克</option>
            <option value="6">小游戏</option-->
        </select>
    </div>
    <div class="gm_s_r">
        <span>搜索游戏：</span>
        <input type="text" id="s_text" name="s_text" value="" class="s_text"/>
        <input type="button" id="s_btn" name="s_btn" value="搜索" class="s_btn"/>
    </div>
</div>
<div class="game_list">
    <!-- PT游戏厅  -->
    <ul id="item">
        <!-- 老虎机 -->
					@foreach($game_list as $item)
                                           @if($item->api->api_name == 'TTG')
        <li>
            <span class="g_name">
                <a href="javascript:void(0);">{{ $item->name }}</a>
            </span>
            <a class="g_img pt" href="javascript:;"
                                                  @if($_member) onclick="javascript:window.open('{{ route('ttg.playGame') }}?gameId={{ $item->game_id }}&gameName={{ $item->game_name }}','','width=1024,height=768')"
                                                  @else onclick="return alert('请先登录！')" @endif>
												  <?php $img_path = $item->img_path;?>
			<img src="{{ asset("/web/images/games/TTG/$img_path")}}" class="lazy" width="140" height="120">
            </a>
        </li>
 @endif
@endforeach
@endif
@if(in_array('MW', $_api_list) && 'MW' == $api_name)
	    <div class="gm_s_l">
        <span>游戏分类：</span>
        <select id="gm_type">
            <option value="0" selected="selected">MW电子游戏</option>
            <!--option value="1">老虎机</option>
            <option value="2">街机游戏</option>
            <option value="3">刮卡游戏</option>
            <option value="4">桌面/纸牌游戏</option>
            <option value="5">视频扑克</option>
            <option value="6">小游戏</option-->
        </select>
    </div>
    <div class="gm_s_r">
        <span>搜索游戏：</span>
        <input type="text" id="s_text" name="s_text" value="" class="s_text"/>
        <input type="button" id="s_btn" name="s_btn" value="搜索" class="s_btn"/>
    </div>
</div>
<div class="game_list">
    <!-- PT游戏厅  -->
    <ul id="item">
        <!-- 老虎机 -->
					@foreach($game_list as $item)
                                           @if($item->api->api_name == 'MW')
        <li>
            <span class="g_name">
                <a href="javascript:void(0);">{{ $item->name }}</a>
            </span>
            <a class="g_img pt" href="javascript:;"
                                                  @if($_member) onclick="javascript:window.open('{{ route('mw.playGame') }}?gametype={{ $item->game_id }}&gameName={{ $item->game_name }}','','width=1024,height=768')"
                                                  @else onclick="return alert('请先登录！')" @endif>
												  <?php $img_path = $item->img_path;?>
			<img src="{{ asset("/web/images/games/MW/$img_path")}}" class="lazy" width="140" height="120">
            </a>
        </li>
 @endif
@endforeach
@endif
@if(in_array('PNG', $_api_list) && 'PNG' == $api_name)
	    <div class="gm_s_l">
        <span>游戏分类：</span>
        <select id="gm_type">
            <option value="0" selected="selected">PNG电子游戏</option>
            <!--option value="1">老虎机</option>
            <option value="2">街机游戏</option>
            <option value="3">刮卡游戏</option>
            <option value="4">桌面/纸牌游戏</option>
            <option value="5">视频扑克</option>
            <option value="6">小游戏</option-->
        </select>
    </div>
    <div class="gm_s_r">
        <span>搜索游戏：</span>
        <input type="text" id="s_text" name="s_text" value="" class="s_text"/>
        <input type="button" id="s_btn" name="s_btn" value="搜索" class="s_btn"/>
    </div>
</div>
<div class="game_list">
    <!-- PT游戏厅  -->
    <ul id="item">
        <!-- 老虎机 -->
					@foreach($game_list as $item)
                                           @if($item->api->api_name == 'PNG')
        <li>
            <span class="g_name">
                <a href="javascript:void(0);">{{ $item->name }}</a>
            </span>
            <a class="g_img pt" href="javascript:;"
                                                  @if($_member) onclick="javascript:window.open('{{ route('png.playGame') }}?gametype={{ $item->game_id }}&gameName={{ $item->game_name }}','','width=1024,height=768')"
                                                  @else onclick="return alert('请先登录！')" @endif>
												  <?php $img_path = $item->img_path;?>
			<img src="{{ asset("/web/images/games/PNG/$img_path")}}" class="lazy" width="140" height="120">
            </a>
        </li>
 @endif
@endforeach
@endif
@if(in_array('BS', $_api_list) && 'BS' == $api_name)
	    <div class="gm_s_l">
        <span>游戏分类：</span>
        <select id="gm_type">
            <option value="0" selected="selected">BS电子游戏</option>
            <!--option value="1">老虎机</option>
            <option value="2">街机游戏</option>
            <option value="3">刮卡游戏</option>
            <option value="4">桌面/纸牌游戏</option>
            <option value="5">视频扑克</option>
            <option value="6">小游戏</option-->
        </select>
    </div>
    <div class="gm_s_r">
        <span>搜索游戏：</span>
        <input type="text" id="s_text" name="s_text" value="" class="s_text"/>
        <input type="button" id="s_btn" name="s_btn" value="搜索" class="s_btn"/>
    </div>
</div>
<div class="game_list">
    <!-- PT游戏厅  -->
    <ul id="item">
        <!-- 老虎机 -->
					@foreach($game_list as $item)
                                           @if($item->api->api_name == 'BS' && $item->client_type == 1)
        <li>
            <span class="g_name">
                <a href="javascript:void(0);">{{ $item->name }}</a>
            </span>
            <a class="g_img pt" href="javascript:;"
                                                  @if($_member) onclick="javascript:window.open('{{ route('bs.playGame') }}?gametype={{ $item->game_id }}','','width=1024,height=768')"
                                                  @else onclick="return alert('请先登录！')" @endif>
												  <?php $img_path = $item->img_path;?>
			<img src="{{ asset("/web/images/games/BS/$img_path")}}" class="lazy" width="140" height="120">
            </a>
        </li>
 @endif
@endforeach
@endif
@if(in_array('SW', $_api_list) && 'SW' == $api_name)
	    <div class="gm_s_l">
        <span>游戏分类：</span>
        <select id="gm_type">
            <option value="0" selected="selected">SW电子游戏</option>
            <!--option value="1">老虎机</option>
            <option value="2">街机游戏</option>
            <option value="3">刮卡游戏</option>
            <option value="4">桌面/纸牌游戏</option>
            <option value="5">视频扑克</option>
            <option value="6">小游戏</option-->
        </select>
    </div>
    <div class="gm_s_r">
        <span>搜索游戏：</span>
        <input type="text" id="s_text" name="s_text" value="" class="s_text"/>
        <input type="button" id="s_btn" name="s_btn" value="搜索" class="s_btn"/>
    </div>
</div>
<div class="game_list">
    <!-- PT游戏厅  -->
    <ul id="item">
        <!-- 老虎机 -->
					@foreach($game_list as $item)
                                           @if($item->api->api_name == 'SW' && $item->client_type == 1)
        <li>
            <span class="g_name">
                <a href="javascript:void(0);">{{ $item->name }}</a>
            </span>
            <a class="g_img pt" href="javascript:;"
                                                  @if($_member) onclick="javascript:window.open('{{ route('sw.playGame') }}?gametype={{ $item->game_id }}','','width=1024,height=768')"
                                                  @else onclick="return alert('请先登录！')" @endif>
												  <?php $img_path = $item->img_path;?>
			<img src="{{ asset("/web/images/games/SW/$img_path")}}" class="lazy" width="140" height="120">
            </a>
        </li>
 @endif
@endforeach
@endif

@if(in_array('PP', $_api_list) && 'PP' == $api_name)
	    <div class="gm_s_l">
        <span>游戏分类：</span>
        <select id="gm_type">
            <option value="0" selected="selected">PP电子游戏</option>
            <!--option value="1">老虎机</option>
            <option value="2">街机游戏</option>
            <option value="3">刮卡游戏</option>
            <option value="4">桌面/纸牌游戏</option>
            <option value="5">视频扑克</option>
            <option value="6">小游戏</option-->
        </select>
    </div>
    <div class="gm_s_r">
        <span>搜索游戏：</span>
        <input type="text" id="s_text" name="s_text" value="" class="s_text"/>
        <input type="button" id="s_btn" name="s_btn" value="搜索" class="s_btn"/>
    </div>
</div>
<div class="game_list">
    <!-- PT游戏厅  -->
    <ul id="item">
        <!-- 老虎机 -->
					@foreach($game_list as $item)
                                           @if($item->api->api_name == 'PP')
        <li>
            <span class="g_name">
                <a href="javascript:void(0);">{{ $item->name }}</a>
            </span>
            <a class="g_img pt" href="javascript:;"
                                                  @if($_member) onclick="javascript:window.open('{{ route('pp.playGame') }}?gametype={{ $item->game_id }}','','width=1024,height=768')"
                                                  @else onclick="return alert('请先登录！')" @endif>
												  <?php $img_path = $item->img_path;?>
			<img src="{{ asset("/web/images/games/PP/$img_path")}}" class="lazy" width="140" height="120">
            </a>
        </li>
 @endif
@endforeach
@endif


@if(in_array('CQ', $_api_list) && 'CQ' == $api_name)
	    <div class="gm_s_l">
        <span>游戏分类：</span>
        <select id="gm_type">
            <option value="0" selected="selected">CQ9电子游戏</option>
            <!--option value="1">老虎机</option>
            <option value="2">街机游戏</option>
            <option value="3">刮卡游戏</option>
            <option value="4">桌面/纸牌游戏</option>
            <option value="5">视频扑克</option>
            <option value="6">小游戏</option-->
        </select>
    </div>
    <div class="gm_s_r">
        <span>搜索游戏：</span>
        <input type="text" id="s_text" name="s_text" value="" class="s_text"/>
        <input type="button" id="s_btn" name="s_btn" value="搜索" class="s_btn"/>
    </div>
</div>
<div class="game_list">
    <!-- PT游戏厅  -->
    <ul id="item">
        <!-- 老虎机 -->
					@foreach($game_list as $item)
                                           @if($item->api->api_name == 'CQ')
        <li>
            <span class="g_name">
                <a href="javascript:void(0);">{{ $item->name }}</a>
            </span>
            <a class="g_img pt" href="javascript:;"
                                                  @if($_member) onclick="javascript:window.open('{{ route('cq.playGame') }}?gametype={{ $item->game_id }}','','width=1024,height=768')"
                                                  @else onclick="return alert('请先登录！')" @endif>
												  <?php $img_path = $item->img_path;?>
			<img src="{{ asset("/web/images/games/CQ/$img_path")}}" class="lazy" width="140" height="120">
            </a>
        </li>
 @endif
@endforeach
@endif
		    </ul>
    <ul id="s_item" style="display: none"></ul>
</div>
<div class="holder"></div>
	<script type="text/javascript" src="dzyxcss/js/game.js"></script>
    <script>
        (function ($) {
            $(function () {
                $('.live-ul li').on('mouseenter', function () {
                    $(this).addClass('on').siblings('li').removeClass('on');
                });
                $('.egameslide').on('click', '.disabled', function () {
                    layer.msg('暂未开通，敬请期待！', {icon: 6});
                    return false;
                });
                jQuery(".egameslide").slide({trigger: "click", mainCell: ".bd"});

                $("img.lazy").lazyload({
                    placeholder: "{{ asset('/web/images/egame-loading.gif') }}",
                    effect: "fadeIn",
                    skip_invisible: false  //解决滚动才显示的问题
                });

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


            });


        })(jQuery)
    </script>

	</body>
</html>
	@section('content')
@endsection