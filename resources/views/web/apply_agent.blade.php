@extends('web.layouts.main')
@section('content')
	<!--banner-->
	<div id="banner" style="margin-top:140px"></div>		
	<!-- 新注册页 -->
	<link rel="stylesheet" href="{{ asset('/web/css/single/single.css') }}">
	<!--style="background-color:#241d17"-->
	<div class="register" >
		<div class="single">
			<div id="un-lobby">
				<aside class="reg-side">
					<ul>
						<li class="li5"><a href="javascript:;">
								<i class="ico"></i>
								<h3>OG娱乐场</h3>
								<p>WITHDRAW</p>
							</a></li>

						<li class="li3"><a href="javascript:;">
								<i class="ico"></i>
								<h3>BBIN娱乐场</h3>
								<p>BBINGAMING</p>
							</a></li>

						<li class="li4"><a href="javascript:;">
								<i class="ico"></i>
								<h3>AG娱乐场</h3>
								<p>AGGAMING</p>
							</a></li>

						

					</ul>
					<a href="javascript:;" class="side-hotgame">
						<img src="/web/images/sideBarBottom.png">
					</a>
				</aside>					
				<style>
				.hint-message{
					margin-bottom:0;
					text-align:center;
					font-size:16px;
					padding-bottom:10px;
				}
				.hint-message span{
					display:block;
					margin:5px 0;
				}
				</style>				
				<article id="articles">
					<div class="ng-scope">
						<form class="form-horizontal" method="POST" action="{{ route('daili.apply.post') }}">
						
							<fieldset class="fieldset-group" style="padding-bottom:20px;">
								<legend>代理申请</legend>
								
								<p class="hint-message" style="margin-bottom:0">@if($message) {!! $message !!} @endif</p>
								@if($status !== 1 && $status !== 0)
								<div class="form-group">
										<label class="control-label">
											<span class="must"></span>会员账号
										</label>
										<div class="control-div">
											<input type="text" class="form-control" value="{{ $member->name }}" disabled>
											<input type="hidden" class="form-control" name="member_id" value="{{ $member->id }}">
										</div>
										<div class="control-info">登录代理系统的账号</div>
								</div>

								<div class="form-group">
										<label class="control-label">
											<span class="must">*</span>联系手机
										</label>
										<div class="control-div">
											<input type="text" class="form-control" name="phone">
										</div>
										<div class="control-info">请填写常用手机号码</div>
								</div>

								<div class="form-group">
										<label class="control-label">
											<span class="must">*</span>联系QQ
										</label>
										<div class="control-div">
											<input type="text" class="form-control" name="msn_qq">
										</div>
										<div class="control-info">请填写常用QQ</div>
								</div>

								<div class="form-group">
										<label class="control-label">
											<span class="must">*</span>申请理由
										</label>
										<div class="control-div">
											<textarea rows=4 class="form-control" name="about" ></textarea>
										</div>
										<div class="control-info">请填写申请理由</div>
								</div>
								@endif
							</fieldset>
							@if($status !== 1 && $status !== 0)
							<fieldset>
								<button id="btn-submit" class="btn btn-default ajax-submit-without-confirm-btn">立即申请</button>
								<button id="btn-reset" class="btn btn-default" type="reset">重置</button>
							</fieldset>
							@endif
						</form><!-- end ngIf: state=='ok' -->
					</div>
				</article>
			</div>
		</div>
	</div><!-- 新注册页 -->
@endsection