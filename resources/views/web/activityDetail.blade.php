@extends('web.layouts.main')
@section('content')
    <link rel="stylesheet" href="{{ asset('/web/css/activity/activity.css') }}">
	<div id="banner" style="margin-top:160px"></div>
	<div class="activity" style="background-color:#241d17;padding:20px 0">
		<div class="prom-box-list"> 
			<ul class="navlist" id="j-menu">
				<li><a href="{{ route('web.activityList') }}">全部优惠</a><em class="iconfont"></em><i class="active"></i></li>
			@foreach(config('platform.activity_type') as $k => $v)
				@if($data['type'] == $k)
				<li class="active"><a href="{{ route('web.activityType', ['type' => $k]) }}">{{ $v }}</a><em class="iconfont"></em><i class="active"></i></li>
				@else
				<li><a href="{{ route('web.activityType', ['type' => $k]) }}">{{ $v }}</a><em class="iconfont"></em><i></i></li>
				@endif
			@endforeach
			</ul>
			<div class="gb-main-r promotion-list" id="j-promotion-list">
					<div class="pro-cont">
						<h3 class="title t_1">{{ $data->title }}</h3>
						{!! $data->title_content !!}
					</div>
					<div class="pro-cont">
						<h3 class="title t_2">活动说明</h3>
						{!! $data->content !!}
					</div>
					<div class="pro-cont">
						<h3 class="title t_3">活动规则</h3>
						{!! $data->rule_content !!}
					</div>
			</div>
		</div>
	</div>
@endsection