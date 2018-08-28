@extends('web.layouts.main')
@section('content')

       <div class="dd" style="top:365px;">
        <div class="dd_z">
            <div id="banner_img" style="width:100px; height:40px; background: url(/cl/tpl/xinweinisi3/images/dd_03.png?=672) no-repeat;float:left;margin-top:4px;"></div>
            @foreach($_system_notices as $v) <marquee id="mar0" onmouseout="this.start()" onmouseover="this.stop()"style="float:left; color:#fff; font-size:14px; line-height:40px;position:relative;left:10px;" scrollAmount=5 width=964>~{{ $v->title }}~{{ $v->content }}</marquee>  @endforeach
        </div>
    </div>
  <div id="banner_tabs" class="flexslider" style="height:386px; background: url(/cl/tpl/xinweinisi3/images/images/ty_01.jpg) center">

    </div>
	 	 <div class="about_con">	
            <div class="sx-box">
                <div class="game_con">
@if($_member)

<iframe name="main" id="gameFrame" scrolling="NO" frameborder="0" src="{{ route('ibc.playGame') }}" allowtransparency="true"width="1020px" height="1024px"></iframe>
   @else
   <iframe name="main" id="gameFrame" scrolling="NO" frameborder="0" src="http://mkt.g0009.com/vender.aspx?act=sports&WebSkinType=0&lang=cs" allowtransparency="true"width="1020px" height="1024px"></iframe>
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


@endsection