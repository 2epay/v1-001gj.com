@extends('web.layouts.main')
@section('content')
<link rel="stylesheet" href="/cl/tpl/xinweinisi3/css/index.css?=672"/>
  <div class="dd" style="top:390px;">
        <div class="dd_z">
            <div id="banner_img" style="width:100px; height:40px; background: url(/cl/tpl/xinweinisi3/images/dd_03.png?=724) no-repeat;float:left;margin-top:4px;"></div>
           <marquee id="mar0" onmouseout="this.start()" onmouseover="this.stop()"style="float:left; color:#fff; font-size:14px; line-height:40px;position:relative;left:10px;" scrollAmount=5 width=964>@foreach($_system_notices as $v)~{{ $v->title }}~{{ $v->content }} @endforeach</marquee> 
        </div>
    </div>
  <div id="banner_tabs" class="flexslider" style="height:413px; background: url(/cl/tpl/xinweinisi3/images/dz_01.jpg) center">

    </div>
    <style type="text/css">
        .lb {
            height: 415px;
        }
    </style>

<div class="slotsBox">
    <div class="slotstab w_1000 si-bg">

	<!--------------------------------------------------------------------------------------------->
	
		 <div class="about_con">	
            <div class="sx-box">
                <div class="game_con">
				
				
				
   <iframe scrolling="yes" frameborder="0" src="/dianzi" allowtransparency="true"style="width:1020px;height:990px;"></iframe>
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
</div>
</div>
            </div>
        </div><!-- #BeginLibraryItem "/Library/footer.lbi" -->
		
@endsection