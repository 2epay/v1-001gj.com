@extends('member.layouts.newmain')
@section('content')
<div id="main-container">
	<div class="member-exchange-module-index">
		<div class="module-top" style="margin-bottom:0;">
			<div class="list-head-container" style="width: 920px; height: 31px;">
				<div class="list-head" style="width: 920px;">
					<div class="col-xs-8" style="padding:0;">
						<div class="col-xs-3">我的厅室</div>
						<div class="col-xs-3">余额</div>
						<div class="col-xs-6">按键操作</div>
					</div>
					<div class="col-xs-4"><span>额度转换</span></div>
				</div>
			</div>
		</div>
		<div class="module-main" style="height: 630px; overflow: auto;padding:0">
				<div class="col-xs-8 exchange" style="padding:0">
					<table class="table table-striped table-bordered">
						<tbody>
						<?php
						$own_api_list = $_member->apis()->pluck('api_id')->toArray();
						?>						
						@foreach($api_mod as $item)
							<?php
							$mod = '';
							if (in_array($item->id, $own_api_list))
								$mod = $_member->apis()->where('api_id', $item->id)->first();
							?>						
							<tr>
								<td class="col-xs-3">{{ $item->api_title }}</td>
								<td class="col-xs-3 exchange-money"><span class="newpos">@if($mod) {{ $mod->money }}元  @else N/A @endif</span><a href="javascript:void(0);" class="refresh1" data-uri="{{ route('member.api.check') }}?api_name={{ $item->api_name }}" style="color:#333;font-size:12px;">刷新</a></td>
								<td class="col-xs-6">
									<form action="{{ route('member.post_one_transfer') }}" method="post" style="display:inline-block">
										<input type="hidden" name="api_name" value="{{ $item->api_name }}">
										<input type="hidden" name="transfer_type" value="0">
										<button class="btn btn-sm btn-primary ajax-submit-without-confirm-btn">一键转入</button>
									</form>
									<form action="{{ route('member.post_one_transfer') }}" method="post" style="display:inline-block">	
										<input type="hidden" name="api_name" value="{{ $item->api_name }}">
										<input type="hidden" name="transfer_type" value="1">									
										<button class="btn btn-sm btn-success ajax-submit-without-confirm-btn">一键转出</button>
									</form>
								</td>
							</tr>
						@endforeach									
						</tbody>
					</table>						
				</div>
				<div class="col-xs-4">						
						<div class="exchange-area">																		
							<div class="turn-action text-center">
								<a href="JavaScript:void(0)" class="turn-in-action active">转入</a>
								<a href="JavaScript:void(0)" class="turn-out-action">转出</a>
							</div>
							<div class="turn-area turn-in">
								<form action="{{ route('member.post_transfer') }}" method="post">
									<div class="form-group">
										<label class="col-xs-3 control-label">从</label>
										<div class="col-xs-9">
											<select class="form-control" name="account1">
												<option value="1">账户余额</option>
												<option value="0">红利账户 </option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-xs-3 control-label">到</label>
										<div class="col-xs-9">
											<select class="form-control" name="account2">
											@foreach($api_mod as $item)
												<option value="{{ $item->id }}">{{ $item->api_title }}</option>
											@endforeach
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-xs-3 control-label">金额</label>
										<div class="col-xs-9">
											<input type="number" class="form-control" name="money">
										</div>
									</div>
									<div class="form-group">
										<label class="col-xs-3 control-label"></label>
										<div class="col-xs-9">
											<input type="hidden" name="transfer_type" value="0">
											<button type="button" class="btn btn-primary form-control ajax-submit-without-confirm-btn">确定转入</button>
										</div>
									</div>
								</form>
							</div>
							<div class="turn-area turn-out" style="display:none;">
								<form action="{{ route('member.post_transfer') }}" method="post">
									<div class="form-group">
										<label class="col-xs-3 control-label">从</label>
										<div class="col-xs-9">
											<select class="form-control" name="account2">
											@foreach($api_mod as $item)
												<option value="{{ $item->id }}">{{ $item->api_title }}</option>
											@endforeach
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-xs-3 control-label">到</label>
										<div class="col-xs-9">
											<select class="form-control" name="account1">
												<option value="1">账户余额</option>
												<option value="0">红利账户</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-xs-3 control-label">金额</label>
										<div class="col-xs-9">
											<input type="number" class="form-control" name="money">
										</div>
									</div>
									<div class="form-group">
										<label class="col-xs-3 control-label"></label>
										<div class="col-xs-9">
											<input type="hidden" name="transfer_type" value="1">
											<button type="button" class="btn btn-warning form-control ajax-submit-without-confirm-btn">确定转出</button>
										</div>
									</div>
								</form>
							</div>							
						</div>
						<div class="info-container" style="padding:8px;">
							<div class="heading">我的额度</div>
							<div class="info">
								<p class="item-info">账户余额：<span>{{ $_member->money }}</span> 元</p>
								<p class="item-info">红利余额：<span>{{ $_member->fs_money }}</span> 元</p>
							</div>
						</div>	
						<div class="info-container" style="padding:8px;">
							<div class="heading">友情提示</div>
							<div class="info">
								<p class="item-info" style="margin-bottom:10px"><font color="red">一键转入</font>将把账户余额一次性转入到对应游戏余额。</p>
								<p class="item-info"><font color="red">一键转出</font>将把对应游戏余额一次性转出到账户余额。</p>
							</div>
						</div>							
				</div>
	
		</div>
	</div>
</div>
<script>
    $(function(){
		
		$('.turn-in-action').on('click', function(){
			$('.turn-in').show();
			$('.turn-out').hide();
			$(this).addClass('active');
			$('.turn-out-action').removeClass('active');
		});
		$('.turn-out-action').on('click', function(){
			$('.turn-out').show();
			$('.turn-in').hide();
			$(this).addClass('active');
			$('.turn-in-action').removeClass('active');
		});		
		
        $('.refresh1').on('click',function(){
            var _this=$(this);
            var pos = _this.parent('.exchange-money').find('span');
            _this.html('刷新中···');
            $.ajax({
                type : 'GET',
                url : _this.attr('data-uri'),
                data : '',
                contentType : "application/json; charset=utf-8",
                success : function(data){
                    if (data.Code != 0)
                    {
                        alert(data.Message);
                        return ;
                    }
                    pos.html(data.Data+'元');
					_this.html('刷新');
                },
                error: function (err, status) {
                    //console.log(err)
                }
            })
        });
		
		//$('.exchange-money .refresh').each(function(){
		//	$(this).trigger('click');
		//});
    });
</script>
@endsection
