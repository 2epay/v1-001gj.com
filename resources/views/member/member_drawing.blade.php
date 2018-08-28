@extends('member.layouts.newmain')
@section('content')
<div id="main-container">		
	<div class="module-main" style="height: 630px; overflow: auto;margin-top:20px">
		<form action="{{ route('member.drawing') }}" method="post" class="form-horizontal">
			<div class="form-group">
				<label class="col-xs-3 control-label">收款银行：</label>
				<div class="col-xs-6">
					<select class="form-control" disabled>
                        <option value="">--请选择--</option>
                        @foreach(\App\Models\Base::$BANK_TYPE as $v)
                            <option value="{{ $v }}" @if($_member->bank_name == $v) selected @endif>{{ $v }}</option>
                        @endforeach
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-3 control-label">开户地址：</label>
				<div class="col-xs-6">
					 <input class="form-control" value="{{ $_member->bank_address }}" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-3 control-label">开户网点：</label>
				<div class="col-xs-6">
					 <input class="form-control" value="{{ $_member->bank_branch_name }}" disabled>
				</div>

			</div>
			<div class="form-group">
				<label class="col-xs-3 control-label">开户姓名：</label>
				<div class="col-xs-6">
					 <input class="form-control" value="{{ $_member->bank_username }}" disabled>
				</div>

			</div>
			<div class="form-group">
				<label class="col-xs-3 control-label">银行账号：</label>
				<div class="col-xs-6">
					 <input class="form-control" value="{{ $_member->bank_card }}" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-3 control-label">提款金额：</label>
				<div class="col-xs-6">
					<input type="text" class="form-control" name="money" placeholder="输入提款金额(最低1元)">
				</div>
				<div class="col-xs-3 info">
					* 提款金额不能少于1元
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-3 control-label">取款密码：</label>
				<div class="col-xs-6">
					<input type="password" class="form-control" name="qk_pwd" maxlength="6">
				</div>
				<div class="col-xs-3 info">
					* 6位取款密码
				</div>
			</div>			
			<div class="form-group">
				<label class="col-xs-3 control-label"></label>
				<div class="col-xs-6">
					<button type="button" class="btn btn-primary form-control ajax-submit-without-confirm-btn">提交</button>
				</div>
			</div>
		</form>
	</div>
</div>
@endsection