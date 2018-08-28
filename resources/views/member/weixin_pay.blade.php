@extends('member.layouts.newmain')
@section('content')
<div id="main-menu">
	<div class="menu-area">
		<ul class="list-group">
			@if($_system_config->is_wechat_on == 0)
			<li class="list-group-item payment weixin active"><a href="{{ route('member.weixin_pay') }}">微信支付</a></li>
			@endif
			@if($_system_config->is_alipay_on == 0)
			<li class="list-group-item payment alipay"><a href="{{ route('member.ali_pay') }}">支付宝</a></li>
			@endif
			@if($_system_config->is_qq_on == 0)
			<li class="list-group-item payment third_pay "><a href="{{ route('member.qq_pay') }}">在线扫码</a></li>
			@endif
			@if($_system_config->is_bankpay_on == 0)
			<li class="list-group-item payment epay"><a href="{{ route('member.bank_pay') }}">银联付款</a></li>
			@endif
			@if($_system_config->is_thirdpay_on == 0)
			<li class="list-group-item payment third_pay"><a href="{{ route('member.third_bank_pay') }}">第三方支付</a></li>	
			@endif
		</ul>
	</div>
</div>

<div id="main-container">
	<!-- <iframe src="/member/payment" width="100%" height="100%"></iframe> -->


	<div class="module-main" style="height: 630px; overflow: auto;margin-top:20px">
		<div class="info-container">
			<div class="info" style="color:#333;">
				请在左侧选择对应付款方式，推荐使用微信或支付宝付款，审核快，秒到账
			</div>
		</div>	
		<form action="{{ route('member.post_weixin_pay') }}" method="post" class="form-horizontal">
			<div class="form-group">
				<label class="col-xs-2 control-label">微信二维码：</label>
				<div class="col-xs-10">
					<img src="{{ $_system_config->wechat_qrcode }}" width="120" height="120">
				</div>
			</div>		
			<div class="form-group">
				<label class="col-xs-2 control-label">用户账号：</label>
				<div class="col-xs-10">
					<input type="text" class="form-control" value="{{ $_member->name }}" disabled>
				</div>
			</div>		
			<div class="form-group">
				<label class="col-xs-2 control-label">汇款金额：</label>
				<div class="col-xs-10">
					<input type="number" class="form-control" name="money">
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-2 control-label">汇款账号：</label>
				<div class="col-xs-10">
					<input type="text" class="form-control" name="account">
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-2 control-label">汇款时间：</label>
				<div class="col-xs-10 pay-time">
					<div class="col-xs-3">
						<input type="text" name="paytime" onClick="WdatePicker()" class="form-control" value="{{ date('Y-m-d', time()) }}">
					</div>
					<div class="col-xs-3">
						<select class="form-control" name="date_h">
							<option value="{{ date('H') }}">{{ date('H') }} 时</option>
							@foreach(range(00, 24) as $v)
								<option @if($v < 10) value="0{{ $v }}" @else value="{{ $v }}" @endif>@if($v < 10) 0{{ $v }} 时 @else {{ $v }} 时 @endif</option>
							@endforeach
						</select>
					</div>
					<div class="col-xs-3">
						<select class="form-control" name="date_i">
							<option value="{{ date('i') }}">{{ date('i') }} 分</option>
							@foreach(range(00, 59) as $v)
								<option @if($v < 10) value="0{{ $v }}" @else value="{{ $v }}" @endif>@if($v < 10) 0{{ $v }} 分 @else {{ $v }} 分 @endif</option>
							@endforeach
						</select>					
					</div>
					<div class="col-xs-3">
						<select class="form-control" name="date_s">
							<option value="{{ date('s') }}">{{ date('s') }} 秒</option>
							@foreach(range(00, 59) as $v)
								<option @if($v < 10) value="0{{ $v }}" @else value="{{ $v }}" @endif>@if($v < 10) 0{{ $v }} 秒 @else {{ $v }} 秒 @endif</option>
							@endforeach
						</select>					
					</div>
				</div>
			</div>			
			<div class="form-group">
				<label class="col-xs-2 control-label"></label>
				<div class="col-xs-10">
					<button type="button" class="btn btn-primary form-control ajax-submit-without-confirm-btn">提交</button>
				</div>
			</div>
		</form>
	</div>
</div>
@endsection
