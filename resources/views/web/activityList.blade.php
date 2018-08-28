@extends('web.layouts.main')
@section('content')

        <!-- #EndLibraryItem -->
       <div class="dd" style="top:385px;">
        <div class="dd_z">
            <div id="banner_img" style="width:100px; height:40px; background: url(/cl/tpl/xinweinisi3/images/dd_03.png?=672) no-repeat;float:left;margin-top:4px;"></div>
             @foreach($_system_notices as $v) <marquee id="mar0" onmouseout="this.start()" onmouseover="this.stop()"style="float:left; color:#fff; font-size:14px; line-height:40px;position:relative;left:10px;" scrollAmount=5 width=964>~{{ $v->title }}~{{ $v->content }}</marquee>  @endforeach
        </div>
    </div>
  <div id="banner_tabs" class="flexslider" style="height:413px; background: url(/cl/tpl/xinweinisi3/images/yh_01.jpg) center">

    </div>
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
</div>
		<style type="text/css">
.sub-nav{width: 1000px;overflow: hidden;padding-left: 25px;margin: 10px 0px 10px 0px;}
.sub-nav a {float: left;background-color: #3B4C5E;border-top-left-radius: 3px;border-top-right-radius: 3px;color: #d4110d;display: block;height: 24px;line-height: 24px;text-align: center;margin-right: 5px;color: #e0b789;padding: 3px 40px;font-size: 16px;}
.sub-nav a:hover, .sub-nav a.cur {background-color: #fbef50;color: #6c3e2e;}
.vip-attr a{cursor: pointer;float: left;height: 142px;margin: 0 auto;width: 1028px;} 
.vip-attr{cursor: pointer;height: 150px;width:1028px;}
.eventtext  h2 {margin-left: -3px;;}
.dianjinr { float: left;box-shadow:0 0 20px #212121;  transition:none;width: 1000px; background-color: #000;  clear: both;  padding: 20px 14px; font-family: "宋体"; font-size: 14px; color: #d0d0d0; line-height: 25px;}
.dianjinr th {border: 1px solid #000;}
.dianjinr .pt12 th {
    font-size: 13px;
}
.col-gre3 {
    color:rgb(0,0,255);
}
.dianjinr  table td,.dianjinr  table th{
  line-height:33px;
}

.dianjinr .text-ind {width: 97%; padding-left: 20px;text-indent: -20px;}
table {margin-left: 20px;}
table.cke_show_border {margin-left: 0;}
.dianjinr table p {
    width:100%;
    padding:0 ;
	margin:0;
}
.column ul li {
        width: 870px;
}


.eventtext {
    margin-left: 18px;
}

.MemberExclusive{margin:0px auto;width:1028px;height: auto;margin-bottom: 10px;    float: left;}
#dianjins th {
    font-size: 14px;
}
.dianjinr .jdcx {
    height:45px;
    line-height:0px;
    padding: 2px 0 0 0;
}
</style>














    <link rel="stylesheet" href="{{ asset('/web/css/activity/activity.css') }}">

	<!--div class="activity"-->
		<div class="myhot" 
		style="opacity: 1;width:960px">
			<ul class="hleft">
			@if(isset($type) && $type > 0)
				<li><a href="{{ route('web.activityList') }}"><span>全部活动</span></a></li>
			@else
				<li><a href="{{ route('web.activityList') }}"><span class="ok">全部活动</span></a></li>
			@endif			
				
			@foreach(config('platform.activity_type') as $k => $v)
				@if($type == $k)
				<li><a href="{{ route('web.activityType', ['type' => $k]) }}"><span class="ok">{{ $v }}</span></a></li>
				@else
				<li><a href="{{ route('web.activityType', ['type' => $k]) }}"><span>{{ $v }}</span></a></li>
				@endif
			@endforeach
				<li style="float:right">
				@if($_member)
					<a href="{{ route('member.my_activity') }}"><span>申请进度查询</span></a>
				@else
					<a href="javascript:void(0)" onclick="return layer.msg('请先登录!',{icon:6})"><span>申请进度查询</span></a>
				@endif
				</li>
			</ul>
			<div class="hright">
				@if(count($data) > 0)
				@foreach($data as $item)			
				<dl data-id="{{ $item->id }}">
					<dd><img src="{{ $item->title_img }}" width="960" style="opacity: 1;"></dd>
					<dt>
						<span class="title">{{ $item->title }}</span> 
						@if($item->end_at)
						<span class="actime">活动时间：{{ date('Y年m月d日', strtotime($item->end_at)) }}前有效</span> 
						@else
						<span class="actime">活动时间：{{ $item->date_desc }}</span> 
						@endif
						@if($item->is_apply == 0)
						
						@if($_member)
							<form action="{{ route('member.apply_activity') }}" method="post">
								<input type="hidden" name="activity_id" value="{{ $item->id }}">
								<button class="applybtn ajax-submit-without-confirm-btn">申请活动</button>
							</form>
						@else
							<a class="applybtn" onclick="return layer.msg('请先登录!',{icon:6})">申请活动</a>
						@endif
						
						@endif
						<div class="hotcontent" style="opacity: 1;width:960px">
							{!! $item->content !!}
						</div>   
					</dt>
				</dl>
			@endforeach	
			@else
				<div style="text-align:center;font-size:16px;padding:50px">暂无优惠，敬请期待！</div>
			@endif				
			</div>
		</div>


	<script>
	$(".myhot .hright dl dd img").click(function()
	{
		$(this).parent().parent().children("dt").children(".hotcontent").slideToggle(200)
	})
	</script>
	
@endsection