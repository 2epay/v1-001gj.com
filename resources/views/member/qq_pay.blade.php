@extends('member.layouts.newmain')
@section('content')
<div id="main-menu">
	<div class="menu-area">
		<ul class="list-group">
			@if($_system_config->is_wechat_on == 0)
			<li class="list-group-item payment weixin"><a href="{{ route('member.weixin_pay') }}">微信支付</a></li>
			@endif
			@if($_system_config->is_alipay_on == 0)
			<li class="list-group-item payment alipay"><a href="{{ route('member.ali_pay') }}">支付宝</a></li>
			@endif
			@if($_system_config->is_qq_on == 0)
			<li class="list-group-item payment third_pay active"><a href="javascript:void(0)">在线扫码</a></li>
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
	<div id="main-container-in-iframe">
		<div class="module-main" style="height: 630px; overflow: auto;margin-top:20px">
			<form class="form-horizontal" name="myform" action="http://pay1.youyunnet.com/pay/" method="post">
			<!-- <form name="myform" action="{ { route('member.payment_response') }}" method="post"> -->
				<div class="form-group">
					<label class="col-xs-2 control-label">支付金额:</label>
					<div class="col-xs-10">
						<input class="form-control" type="number" name="money" id="money">
					</div>
				</div>
				<div class="form-group">
					<label class="col-xs-2  control-label">支付类型:</label>
					<div class="col-xs-10">
						<div class="bg-ali col-md-4" style="width: 40%;
	background: url(/images/bg-alipay.png) no-repeat;
	float: left;
	border: 1px solid #80C5FF;
	padding: 6px;
	background-size: cover;">
					  		<input name="lb" type="radio" value="1" checked="checked" />支付宝
				    	</div>
				    	<div class="bg-wc col-md-4" style="width: 40%;
	background: url(/images/bg-wechat.png) no-repeat;
	float: right;
	border: 1px solid #80C5FF;
	padding: 6px;
    background-size: cover;">
				      		<input type="radio" name="lb" value="3" />微信
				    	</div>
					</div>
				</div>
				<table width="524" border="0" align="center" cellpadding="10" cellspacing="0">
				  <tr>
				    <!-- <td>商户APPID</td> -->
				    <td><label>
				      <input name="pid" type="hidden" id="pid" value="3065859557" />
				      <!-- <input name="name" type="hidden" id="name" value="twoepay" /> -->
				      <!-- 请先<a href="http://www.youyunnet.com?reg=ok" target="_blank">申请开户</a>    </label></td> -->
				  </tr>
				  <!-- <tr>
				      <td>
				      	支付金额: 
				      </td>
				      <td>
				  		<input type="number" name="money">
				      </td>
				  </tr> -->
				  <tr>
				    <!-- <td>支付订单号</td> -->
				    <td><input name="data" type="hidden" id="data" value="888522211221455" />
				    <!-- 50个字符</td> -->
				  </tr>
				  <tr>
				    <!-- <td>支付成功后跳转</td> -->
				    <!-- <td><label> -->
				      <input name="url" type="hidden" id="url" value="http://001gj.com" />
				    <!-- </label></td> -->
				  </tr>
				  <!-- <tr>
				    <td>支付类型</td>
				    <td>
				    	<div class="bg-ali">
					  		<input name="hidden" type="radio" value="1" checked="checked" />支付宝
				    	</div>
				    	<div class="bg-wc">
				      		<input type="radio" name="lb" value="3" />微信
				    	</div>
				    　</td>
				  </tr> -->
				  <!-- <tr>
				    <td>&nbsp;</td>
				    <td><label>
				      <input type="submit" name="Submit" value="确认" />
				    </label></td>
				  </tr> -->
				</table>
				<div class="form-group">
					<label class="col-xs-2 control-label">&nbsp;</label>
					<div class="col-xs-10">
						<button type="submit" class="btn btn-primary form-control ajax-submit">提交</button>
					</div>
				</div>
			</form>
		</div>
	</div>
<script>
$('.ajax-submit').on("click", function(event) {
	event.preventDefault();
	console.log('clicked');
	var d = new Date();
	var n = d.getTime();
	$.ajaxSetup({
        headers: {
        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
        }
    });
	$.ajax({
	  method: "POST",
	  url: "http://001gj.com/member/create_rechare",
	  // url:{{route('member.create_rechare')}},
	  dataType: 'json',
	  data: { 
	  	money: document.getElementById('money').value,
	  	paytime: n
	  }
	}).done(function( result ) {
		if (result.status === 1) {
			document.getElementById('data').value = result.success;
		  	$('form[name="myform"]').submit();
	  	}
	});
});
</script>
	<!-- <div class="module-main" style="height: 630px; overflow: auto;margin-top:20px">
		<div class="info-container">
			<div class="info" style="color:#333;">
				请在左侧选择对应付款方式，推荐使用微信或支付宝付款，审核快，秒到账
			</div>
		</div>	
		<form action="{{ route('member.post_qq_pay') }}" method="post" class="form-horizontal">
			<div class="form-group">
				<label class="col-xs-2 control-label">QQ钱包二维码：</label>
				<div class="col-xs-10">
					<img src="{{ $_system_config->qq_qrcode }}" width="120" height="120">
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
	</div> -->
</div>
@endsection
