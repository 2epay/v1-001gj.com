@extends('web.layouts.main')
@section('content')
<link type="text/css" rel="stylesheet" href="/dzyxcss/newindex/zb.css">
<link rel="stylesheet" type="text/css" href="/dzyxcss/jsp/member/css/jquery-ui-1.9.1.custom.min.css">
<!-- 会员登录后刷新余额和展示各个api的余额 -->
<link href="/dzyxcss/jsp/member/css/refreshBalance.css" rel="stylesheet" type="text/css" />
<!-- 新版本设计替换js css -->

<script type="text/javascript" src="/dzyxcss/jsp/member/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="/dzyxcss/jsp/member/js/index.js"></script>
	    <script type="text/javascript">
        if (window.location.host != top.location.host) {
            top.location = window.location;
        }
        function urlOnclick(url){
            window.open(url,"gameFrame");
        }
    </script>
    <div class="body"
         style="">
        <!--banner-->
       
      
   <div class="dd" style="top:390px;">
        <div class="dd_z">
            <div id="banner_img" style="width:100px; height:40px; background: url(/cl/tpl/xinweinisi3/images/dd_03.png?=672) no-repeat;float:left;margin-top:4px;"></div>
            @foreach($_system_notices as $v) <marquee id="mar0" onmouseout="this.start()" onmouseover="this.stop()"style="float:left; color:#fff; font-size:14px; line-height:40px;position:relative;left:10px;" scrollAmount=5 width=964>~{{ $v->title }}~{{ $v->content }}</marquee>  @endforeach
        </div>
    </div>
  <div id="banner_tabs" class="flexslider" style="height:413px; background: url(/cl/tpl/xinweinisi3/images/cp_01.jpg) center">

    </div>

    <div class="body"
         style="">
        <!--banner-->
        <div class="banner" 
		style="height: 0px;">
            <div class="bd">
                <ul>
                    <li style=""></li>
                </ul>
            </div>
        </div>

        <!--notice-->

	 	 <div class="about_con">	
            <div class="sx-box">
                <div class="game_con">
@if($_member)
   <iframe name="main" id="gameFrame" scrolling="NO" frameborder="0" src="{{ route('yc.playGame') }}" allowtransparency="true"height="990px"></iframe>
   @else
   <iframe name="main" id="gameFrame" scrolling="NO" frameborder="0" src="http://ycpc.gebbs.net/Home/IndexV2" allowtransparency="true"height="990px"></iframe>
@endif
</div>
            </div>
            <script type="text/javascript">
                $(".linkUl li").click(function() {
                    $(this).addClass("on").siblings().removeClass("on");
                });
            </script>
    <p style="clear:both;"></p>
</div>

</div>
</div>

@endsection