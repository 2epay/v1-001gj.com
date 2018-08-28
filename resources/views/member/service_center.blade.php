@extends('member.layouts.newmain')
@section('content')
<div id="main-menu">
	<div class="menu-area">
		<ul class="list-group">
			<li class="list-group-item system-message active"><a href="JavaScript:void(0)">公告信息</a></li>
			<li class="list-group-item complaint"><a href="{{ route('member.complaint_proposal') }}">意见反馈</a></li>
			<li class="list-group-item activity"><a href="{{ route('member.my_activity') }}">活动列表</a></li>
			<li class="list-group-item mymessage"><a href="{{ route('member.message_list') }}">我的消息</a></li>
		</ul>
	</div>
</div>

<div id="main-container">
	<div class="module-main" style="height: 630px; overflow: auto;margin-top:10px;">
		<ul class="list-group">
		@foreach($system_notices as $k => $v)
			<li class="list-group-item message-item">
				<div class="message-title">{{ $v->title }}</div>
				<div class="message-content">{{ $v->content }}</div>
			</li>
		@endforeach
		</ul>
	</div>
</div>
@endsection