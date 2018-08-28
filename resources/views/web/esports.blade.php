@extends('web.layouts.main')
@section('content')
        <!-- #EndLibraryItem -->
      <div class="dd" style="top:365px;">
   <div class="dd_z">
            <div id="banner_img" style="width:100px; height:30px; background: url(/cl/tpl/xinweinisi3/images/dd_03.png?=724) no-repeat;float:left;margin-top:4px;"></div>
            <marquee id="mar0" onmouseout="this.start()" onmouseover="this.stop()"style="float:left; color:#fff; font-size:14px; line-height:40px;position:relative;left:10px;" scrollAmount=5 width=964>@foreach($_system_notices as $v)~{{ $v->title }}~{{ $v->content }} @endforeach</marquee> 
			
        </div>
    </div>

  <div id="banner_tabs" class="flexslider" style="height:386px; background: url(/cl/tpl/xinweinisi3/images/images/ty_01.jpg) center">

    </div>
	
	    <style type="text/css">
        .lb {
            height: 415px;
        }
    </style>
    <script type="text/javascript">
        $(function() {
            var bannerSlider = new Slider($('#banner_tabs'), {
                time: 5000,
                delay: 400,
                event: 'hover',
                auto: true,
                mode: 'fade',
                controller: $('#bannerCtrl'),
                activeControllerCls: 'active'
            });
            $('#banner_tabs .flex-prev').click(function() {
                bannerSlider.prev()
            });
            $('#banner_tabs .flex-next').click(function() {
                bannerSlider.next()
            });
        })
    </script>
 
 <link rel="stylesheet" href="/dzyxcss/sports.css">
        <div class="wrapper" style="height:610px">
<section id="lobby" ng-controller="LobbiesCtrl">
    <ul class="game-list"style="margin-left:240px;">
        <li onclick="javascript:window.location.href = '{{  route('web.esportsHG') }}';"game-box="hg" ng-click="toBgLive()"></li>
        <li onclick="javascript:window.location.href = '{{  route('web.esportsIBC') }}';"game-box="sb" ng-click="toBbLive()"></li>
        <li @if($_member)onclick="f_com.getPager('_bank','{{ route('bbin.playGame') }}?gametype=ball');"@else onclick="return layer.msg('请先登录!',{icon:6})" @endif game-box="bb" ng-click="toAgLive()"></li>
       <!--  <li game-box="mg" ng-click="toMgDealer()"></li>
        <li game-box="non"></li>
        <li game-box="non"></li> -->
    </ul>
	<ul>
	   <li style="margin-top:5px;margin-left:70px;"><img src="/dzyxcss/slogan3.png"></li>
	   <li style="margin-top:22px;margin-left:40px;"><img src="/dzyxcss/slogan1.png"></li>
	</ul>
</section>

        </div>
    </div>



            </div>
        </div>
		

@endsection