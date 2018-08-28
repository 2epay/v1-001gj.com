@extends('web.layouts.main')
@section('content')
 
   <div class="dd" style="top:390px;">
        <div class="dd_z">
            <div id="banner_img" style="width:100px; height:40px; background: url(/cl/tpl/xinweinisi3/images/dd_03.png?=672) no-repeat;float:left;margin-top:4px;"></div>
            <marquee id="mar0" onmouseout="this.start()" onmouseover="this.stop()"style="float:left; color:#fff; font-size:14px; line-height:40px;position:relative;left:10px;" scrollAmount=5 width=964>@foreach($_system_notices as $v)~{{ $v->title }}~{{ $v->content }} @endforeach</marquee> 
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

	<link rel="stylesheet" href="{{ asset('/web/css/caipiao/caipiao.css') }}">	
	<div id="banner" style="margin-top:0px"></div>	
	   
	<div class="lotteryPage">
		<div id="lobby">
			<ul class="game-list">
			@if(in_array('YC', $_api_list))
				<a href="{{  route('web.lottoryYC') }}">
				<li game-box="yccp"></li>
				</a>
			@endif
		    @if(in_array('VR', $_api_list))
				<a @if($_member) href="{{ route('vr.playGame') }}" target="_blank" @else onclick="return layer.msg('请先登录!',{icon:6})" @endif>				
					<li game-box="ycgc"></li>
				</a>				
			@endif
			@if(in_array('EG', $_api_list))
				<a @if($_member) href="{{ route('eg.playGame') }} " target="_blank" @else onclick="return layer.msg('请先登录!',{icon:6})" @endif>				
					<li game-box="egcp"></li>
				</a>
			@endif
			@if(in_array('BBIN', $_api_list))
				<a @if($_member) href="{{ route('bbin.playGame') }}?gametype=ltlottery" target="_blank" @else onclick="return layer.msg('请先登录!',{icon:6})" @endif>				
					<li game-box="bbin"></li>
				</a>
			@endif
			</ul>
		</div>
	</div>
</div>
</div>


   
@endsection