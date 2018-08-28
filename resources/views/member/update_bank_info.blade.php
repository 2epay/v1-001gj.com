@extends('member.layouts.newmain')
@section('content')
<div id="main-menu">
	<div class="menu-area">
		<ul class="list-group">
			<li class="list-group-item member-info"><a href="{{ route('member.userCenter') }}">会员资料</a></li>
			<li class="list-group-item member-password"><a href="javascript:void(0)">修改密码</a></li>
		</ul>
	</div>
</div>

<div id="main-container">		
	<div class="module-main" style="height: 630px; overflow: auto;margin-top:20px">
		<form action="{{ route('member.post_update_bank_info') }}" method="post" class="form-horizontal">
			<div class="form-group">
				<label class="col-xs-3 control-label">收款银行：</label>
				<div class="col-xs-6">
					<select class="form-control" name="bank_name" >
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
					 <input class="form-control" name="bank_address" value="{{ $_member->bank_address }}">
				</div>
				<div class="col-xs-3 info">
					* XXX省XXX市
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-3 control-label">开户网点：</label>
				<div class="col-xs-6">
					 <input class="form-control" name="bank_branch_name" value="{{ $_member->bank_branch_name }}">
				</div>
				<div class="col-xs-3 info">
					* XX分行XX支行
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-3 control-label">开户姓名：</label>
				<div class="col-xs-6">
					 <input class="form-control" name="bank_username" value="{{ $_member->bank_username }}">
				</div>
				<div class="col-xs-3 info">
					* 收款姓名
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-3 control-label">银行账号：</label>
				<div class="col-xs-6">
					 <input class="form-control" name="bank_card" value="{{ $_member->bank_card }}">
				</div>
				<div class="col-xs-3 info">
					* 收款账号
				</div>
			</div>			
			@if ($_system_config->is_sms_on == 0)
			<div class="form-group">
				<label class="col-xs-3 control-label">手机号码：</label>
				<div class="col-xs-6">
					<div class="input-group">
						<input class="form-control" id="v_phone" maxlength="11" name="phone">
						<span class="input-group-addon sendMobileMes" style="cursor:pointer">点击发送验证码</span>
					</div>			 
				</div>
				<div class="col-xs-3 info">
					* 11位手机号码
				</div>
			</div>	
			<div class="form-group">
				<label class="col-xs-3 control-label">输入验证码：</label>
				<div class="col-xs-6">
					 <input class="form-control" name="v_code">
				</div>
				<div class="col-xs-3 info">
					* 必填
				</div>
			</div>
			@endif
			<div class="form-group">
				<label class="col-xs-3 control-label"></label>
				<div class="col-xs-6">
					<button type="button" class="btn btn-primary form-control ajax-submit-without-confirm-btn">提交</button>
				</div>
			</div>
		</form>
	</div>
</div>

<script>
	var v_phone_url = "{{ route('sendSms') }}";
	(function($){
		$(function(){
			$('.sendMobileMes').on('click',function(){
				var btn = $(this);
				var phone = $('#v_phone').val();
				var myreg = /^1[34578]\d{9}$/;
				if(!myreg.test(phone))
				{
					layer.confirm('请输入有效的手机号码', {
						btn: ['确定'] //按钮
					});
					return false;
				}

				$.ajax({
					type: 'get',
					url: v_phone_url,
					data: {phone:phone},
					dataType: "json",
					success: function(data){
						//layer.close(detailLoad);
						btn.attr('disabled', false);

						var html = '';
						var obj = JSON.parse (data.status.msg);

						for ( var p in obj )
						{
							if (typeof (obj[p]) == 'string')
							{
								html+= '<p><b>'+ obj[p] + '</b></p>';
							} else if(obj[p] instanceof Array)
							{
								for (var i=0;i<obj[p].length;i++)
								{
									html+= '<p><b>'+ obj[p][i] + '</b></p>';
								}

							}
						}
						//
						if (data.status.errorCode == 0)
						{
							commomModule.codeCountDown(btn,60);
							btn.attr('disabled', true);
						}

						layer.confirm(html, {
							btn: ['确定'] //按钮
						});

					}
				});
			});
		})
	})(jQuery)
</script>

@endsection