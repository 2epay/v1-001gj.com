@extends('member.layouts.newmain')
@section('content')
<div id="main-menu">
	<div class="menu-area">
		<ul class="list-group">
			<li class="list-group-item system-message"><a href="{{ route('member.service_center') }}">公告信息</a></li>
			<li class="list-group-item complaint active"><a href="JavaScript:void(0)">意见反馈</a></li>
			<li class="list-group-item activity"><a href="{{ route('member.my_activity') }}">活动列表</a></li>
			<li class="list-group-item mymessage"><a href="{{ route('member.message_list') }}">我的消息</a></li>
		</ul>
	</div>
</div>

<div id="main-container">
	<div class="module-main" style="height: 630px; overflow: auto;margin-top:10px;">
		<form action="{{ route('member.post_feedback') }}" method="post" class="form-horizontal">
			<div class="form-group">
				<label class="col-xs-2 control-label">反馈类型：</label>
				<div class="col-xs-10">
					<select class="form-control" name="type">
						<option value="">--请选择--</option>
						@foreach(config('platform.feedback_type') as $k => $v)
						<option value="{{ $k }}">{{ $v }}</option>
						@endforeach
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-2 control-label">反馈内容：</label>
				<div class="col-xs-10">
					<textarea name="content" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-2 control-label">手机号码：</label>
				<div class="col-xs-10">
					<input type="number" class="form-control" name="phone">
				</div>
			</div>	
			<div class="form-group">
				<label class="col-xs-2 control-label"></label>
				<div class="col-xs-10">
					<button type="button" class="btn btn-primary form-control ajax-submit-btn">提交反馈</button>
				</div>
			</div>
		</form>
	</div>
</div>
@endsection