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
			<li class="list-group-item payment third_pay "><a href="{{ route('member.qq_pay') }}">在线扫码</a></li>
			@endif
			@if($_system_config->is_bankpay_on == 0)
			<li class="list-group-item payment epay"><a href="{{ route('member.bank_pay') }}">银联付款</a></li>
			@endif
			@if($_system_config->is_thirdpay_on == 0)
			<li class="list-group-item payment third_pay active"><a href="{{ route('member.third_bank_pay') }}">第三方支付</a></li>	
			@endif
		</ul>
	</div>
</div>

<div id="main-container">
	<div class="module-main" style="height: 630px; overflow: auto;margin-top:20px">
		<div class="info-container">
			<div class="info" style="color:#333;">
				请在左侧选择对应付款方式，推荐使用微信或支付宝付款，审核快，秒到账
			</div>
		</div>
		<form action="{{ route('pay') }}" method="post" target="_blank" class="form-horizontal">
			<div class="form-group">
				<label class="col-xs-2 control-label">选择银行：</label>
				<div class="col-xs-10">
					<select name="paytype" onChange="changePay(this.options[this.selectedIndex].value)" class="form-control">
						<!-- <option value="bank">网银直连</option> -->
						<option value="alipay">支付宝</option>
						<option value="weixin">微信扫码</option>
						<option value="ICBC">工商银行</option>
						<option value="ABC">农业银行</option>
						<option value="CCB">建设银行</option>
						<option value="CMBC">民生银行</option>
						<option value="CEB">光大银行</option>
						<option value="PSBC">邮政储蓄银行</option>
						<option value="SHB">上海银行</option>
						{{--<option value="alipaywap">支付宝wap</option>--}}
						{{--<option value="gzhpay">微信公众号支付</option>--}}
					</select>
					<input type="hidden" name="get_code" value="0">
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-2 control-label">转账金额：</label>
				<div class="col-xs-10">
					<input type="text" class="form-control" name="amount" required>
				</div>
			</div>		
			<div class="form-group">
				<label class="col-xs-2 control-label"></label>
				<div class="col-xs-10">
					<button type="submit" class="btn btn-primary form-control account_save">提交</button>
				</div>
			</div>
		</form>
	</div>
</div>
@endsection