@extends('web.layouts.main')
@section('content')
	<!--banner-->
	<div id="banner" style="margin-top:160px"></div>		
	<!-- 新注册页 -->
	<link rel="stylesheet" href="{{ asset('/web/css/single/single.css') }}">
	<div class="register" style="background-color:#3c2116">
		<div class="single">
			<div id="un-lobby">
					
				
				<article id="articles" style="width:100%;margin-bottom:100px;">
					<div class="ng-scope">
						
						<form class="form-horizontal" method="POST" action="{{ route('member.login.post') }}">
							<fieldset class="fieldset-group" style="padding-bottom:20px">
								<legend>会员登录</legend>

								<div class="form-group">
										<label class="control-label">
											<span class="must">*</span>登录账号
										</label>
										<div class="control-div">
											<input type="text" class="form-control" name="name">
										</div>
										<div class="control-info">7-10个字符，必须是字母、数字</div>
								</div>
								<div class="form-group">
									<label class="control-label">
										<span class="must">*</span>登录密码
									</label>
									<div class="control-div">
										<input class="form-control" type="password" name="password" >
									</div>
									<div class="control-info">6-12位字符</div>
								</div>
								<div class="form-group">
									<label class="control-label">
										<span class="must">*</span>验证码
									</label>
									<div class="control-div">
										<div id="checkcode-input-group" class="input-group">
											<input name="captcha" type="text" placeholder="请输入验证码">
											<span class="checkcode">
												<a onclick="javascript:re_captcha_re();" ><img src="{{ URL('kit/captcha/1') }}" id="c2c98f0de5a04167a9e427d883690ff67"></a>
											</span>
										</div>										
									</div>
									<div class="control-info">请输入验证码</div>
									<script>
										function re_captcha_re() {
											$url = "{{ URL('kit/captcha') }}";
											$url = $url + "/" + Math.random();
											document.getElementById('c2c98f0de5a04167a9e427d883690ff67').src=$url;
										}
									</script>										
								</div>								
							</fieldset>

							<fieldset>
								<button id="btn-submit" class="btn btn-default ajax-submit-without-confirm-btn" style="margin-top:0;margin-left:300px">登录</button>
							</fieldset>
						</form><!-- end ngIf: state=='ok' -->
					</div>
				</article>
			</div>
		</div>
	</div><!-- 新登录页 -->
@endsection