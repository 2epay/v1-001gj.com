@extends('web.layouts.main')
@section('content')
	<link rel="stylesheet" href="{{ asset('/web/css/dianzi/dianzi.css') }}">
	<div id="banner" style="margin-top:120px"></div>
	<div class="egame-container" style="background-color:#241d17">
		<div class="slot-wp"> 
			<!--menu--> 
			<ul id="j-gameMenu" class="tab-menu-slot bs1">
			@if(in_array('PT', $_api_list))
				<li @if('PT' == $api_name) class="active" @endif>
					<a href="{{ route('web.eGame') }}?api_name=PT"><i class="pt-ico"></i><span>PT电子游戏</span><b class="b1"></b><b class="hot ico"></b></a>
				</li> 							
			@endif
			@if(in_array('MG', $_api_list))
				<li @if('MG' == $api_name) class="active" @endif>
					<a href="{{ route('web.eGame') }}?api_name=MG"><i class="ptsw-ico"></i><span>MG电子游戏</span><b class="b1"></b><b class="ico"></b></a>
				</li>														
			@endif
			@if(in_array('BBIN', $_api_list))
				<li @if('BBIN' == $api_name) class="active" @endif>
					<a href="{{ route('web.eGame') }}?api_name=BBIN"><i class="dt-ico"></i><span>BBIN电子游戏</span><b class="b1"></b><b class="new ico"></b></a>
				</li>							
			@endif
			@if(in_array('SA', $_api_list))
				<li @if('SA' == $api_name) class="active" @endif>
					<a href="{{ route('web.eGame') }}?api_name=SA"><i class="mg-ico"></i><span>SA电子游戏</span><b class="b1"></b><b class=" ico"></b></a>
				</li>							
			@endif
			@if(in_array('DT', $_api_list))
				<li @if('DT' == $api_name) class="active" @endif>
					<a href="{{ route('web.eGame') }}?api_name=DT"><i class="qt-ico"></i><span>DT电子游戏</span><b class="b1"></b><b class=" ico"></b></a>
				</li>							
			@endif
			@if(in_array('TTG', $_api_list))
				<li @if('TTG' == $api_name) class="active" @endif>
					<a href="{{ route('web.eGame') }}?api_name=TTG"><i class="nt-ico"></i><span>TTG电子游戏</span><b class="b1"></b><b class=" ico"></b></a>
				</li>								
			@endif
			@if(in_array('MW', $_api_list))
				<li @if('MW' == $api_name) class="active" @endif>
					<a href="{{ route('web.eGame') }}?api_name=MW"><i class="ttg-ico"></i><span>MW电子游戏</span><b class="b1"></b><b class=" ico"></b></a>
				</li>								
			@endif
			@if(in_array('AG', $_api_list))
				<li>
					<a href="javascript:;"
					   @if($_member) onclick="javascript:window.open('{{ route('ag.playGame') }}?gameId=8','','width=1024,height=768')"
					   @else onclick="return layer.msg('请先登录!',{icon:6})" @endif><i class="ag-ico"></i><span>AG电子游戏</span><b class="b1"></b><b class="new ico"></b></a>
				</li>							
			@endif
			</ul> 
			<!--contentBox--> 
			<div class="search-info bs1"> 
					<!--搜索框-->
					<div class="search-hd" id="j-searchForm"> 
						<form action="{{ route('web.eGame') }}" method="GET">
							<i></i>
							<span>搜索游戏</span> 
							<div class="ipt-group mt15"> 
								<input type="hidden" name="api_name" value="{{ $api_name }}">
								<input type="text" class="ipt j-ipt" placeholder="请输入游戏名称" name="name" value="{{ $gameName }}" placeholder="请输入游戏名称" required>
								<div class="select-list j-select"></div> 
							</div> 
							<button class="btn-search j-btnSearch mt15">搜索</button>  
						</form>			
					</div>

					<!--搜索类型--> 
					<div class="search-filter">
					
						<form id="j-filter" class="form"> 
							<dl class="search-row"> 
								<dt>
									全部平台：
								</dt> 
								<dd> 
							@if(in_array('PT', $_api_list))
									<a href="{{ route('web.eGame') }}?api_name=PT" @if('PT' == $api_name) class="active" @endif>PT</a>						
							@endif
							@if(in_array('MG', $_api_list))
								<a href="{{ route('web.eGame') }}?api_name=MG" @if('MG' == $api_name) class="active" @endif>MG</a>														
							@endif
							@if(in_array('BBIN', $_api_list))
								<a href="{{ route('web.eGame') }}?api_name=BBIN" @if('BBIN' == $api_name) class="active" @endif>BBIN</a>						
							@endif
							@if(in_array('SA', $_api_list))
								<a href="{{ route('web.eGame') }}?api_name=SA" @if('SA' == $api_name) class="active" @endif>SA</a>							
							@endif
							@if(in_array('DT', $_api_list))
								<a href="{{ route('web.eGame') }}?api_name=DT" @if('DT' == $api_name) class="active" @endif>DT</a>							
							@endif
							@if(in_array('TTG', $_api_list))
								<a href="{{ route('web.eGame') }}?api_name=TTG" @if('TTG' == $api_name) class="active" @endif>TTG</a>								
							@endif
							@if(in_array('MW', $_api_list))
								<a href="{{ route('web.eGame') }}?api_name=MW" @if('MW' == $api_name) class="active" @endif>MW</a>								
							@endif
							@if(in_array('AG', $_api_list))
								<a href="javascript:;"
									   @if($_member) onclick="javascript:window.open('{{ route('ag.playGame') }}?gameId=8','','width=1024,height=768')"
									   @else onclick="return layer.msg('请先登录!',{icon:6})" @endif>AG</a>						
							@endif
								</dd> 
							</dl> 
							<!--PT分类--> 
							<div id="j-type-pt"> 
								<dl class="search-row j-line-pt"> 
									<dt>
										游戏大厅：
									</dt> 
									<dd> 
										<a href="{{ route('web.eGame') }}?api_name={{$api_name}}" @if($hall == '') class="active" @endif>全选</a> 
										<a href="{{ route('web.eGame') }}?api_name={{$api_name}}&hall=new" @if($hall == "new") class="active" @endif>新游戏</a> 
										<a href="{{ route('web.eGame') }}?api_name={{$api_name}}&hall=hot" @if($hall == "hot") class="active" @endif>热门</a> 
									</dd> 
								</dl>		
								<dl class="search-row j-line-pt"> 
									<dt>
										游戏线数：
									</dt> 
									<dd> 
										<a href="{{ route('web.eGame') }}?api_name={{$api_name}}" @if($line == '') class="active" @endif>全选</a> 
										@foreach(config('platform.game_line') as $k => $v)
											<a href="{{ route('web.eGame') }}?api_name={{$api_name}}&hall={{ $hall }}&line={{ $k }}" @if($line == $k) class="active" @endif>{{ $v }}</a>
										@endforeach
									</dd> 
								</dl> 
							</div> 
							
							<div id="j-type-MWG" style="display: none;"></div> 
						</form> 
						<!--dt奖池--> 
						<div class="jiangchi jackpot-box">
							<!--<h3>当前累计奖池</h3> --> 
							<!--span class="num-item">￥</span>--> 
							<div class="jackpot" id="j-jackpotCount" style="margin-top:25px;"></div> 
						</div> 
					</div> 				
			
			
			
				@if(in_array('PT', $_api_list) & 'PT' == $api_name)
					{{--pt--}}
					<!--游戏列表--> 
					<div class="game-list-wrrapper">
						<div class="game-list clearfix" id="j-gameContainer">
					   @foreach($game_list as $item)
						   @if($item->api->api_name == 'PT')							
							<div class="game-info box a-fadeinT MGS"> 
								<div class="pic "> 
									<?php $img_path = $item->img_path;?>
									<img data-original="{{ asset("/web/images/games/pt/$img_path")}}" class="lazy"/> 
								</div> 
								<h4 class="name">{{ $item->name }}</h4> 
								<p class="ame-brief">
									<span class="comment fl">★★★★★<b class="b1"></b></span> <span class="popular fr">人气：<b>45235</b></span>
								</p> 
								<div class="btn-wp tc">
									 <a href="javascript:;"
											  @if($_member) onclick="javascript:window.open('{{ route('pt.playGame') }}?gametype={{ $item->game_id }}','','width=1024,height=768')"
											  @else onclick="return alert('请先登录！')" @endif class="j-check btn-play"><em></em>进入游戏</a> 
								</div> 
							</div>
						   @endif
					   @endforeach
						</div> 
					</div>
				@endif

				@if(in_array('MG', $_api_list) & 'MG' == $api_name)
					{{--mg--}}
					<!--游戏列表--> 
					<div class="game-list-wrrapper">
						<div class="game-list clearfix" id="j-gameContainer">
					   @foreach($game_list as $item)
						   @if($item->api->api_name == 'MG')							
							<div class="game-info box a-fadeinT MGS"> 
								<div class="pic "> 
									<?php $img_path = $item->img_path;?>
									<img data-original="{{ asset("/web/images/games/mg/$img_path")}}" class="lazy"/> 
								</div> 
								<h4 class="name">{{ $item->name }}</h4> 
								<p class="ame-brief">
									<span class="comment fl">★★★★★<b class="b1"></b></span> <span class="popular fr">人气：<b>45235</b></span>
								</p> 
								<div class="btn-wp tc">
									 <a href="javascript:;"
											  @if($_member) onclick="javascript:window.open('{{ route('mg.playGame') }}?gametype={{ $item->game_id }}','','width=1024,height=768')"
											  @else onclick="return alert('请先登录！')" @endif class="j-check btn-play"><em></em>进入游戏</a> 
								</div> 
							</div>
						   @endif
					   @endforeach
						</div> 
					</div>
				@endif 	

				@if(in_array('BBIN', $_api_list) & 'BBIN' == $api_name)
					{{--bbin--}}
					<!--游戏列表--> 
					<div class="game-list-wrrapper">
						<div class="game-list clearfix" id="j-gameContainer">
					   @foreach($game_list as $item)
						   @if($item->api->api_name == 'BBIN')							
							<div class="game-info box a-fadeinT MGS"> 
								<div class="pic "> 
									<?php $img_path = $item->img_path;?>
									<img data-original="{{ asset("/web/images/games/bbin/$img_path")}}" class="lazy"/> 
								</div> 
								<h4 class="name">{{ $item->name }}</h4> 
								<p class="ame-brief">
									<span class="comment fl">★★★★★<b class="b1"></b></span> <span class="popular fr">人气：<b>45235</b></span>
								</p> 
								<div class="btn-wp tc">
									 <a href="javascript:;"
											  @if($_member) onclick="javascript:window.open('{{ route('bbin.playGame') }}?gametype={{ $item->game_id }}','','width=1024,height=768')"
											  @else onclick="return alert('请先登录！')" @endif class="j-check btn-play"><em></em>进入游戏</a> 
								</div> 
							</div>
						   @endif
					   @endforeach
						</div> 
					</div>
				@endif 

				@if(in_array('SA', $_api_list) & 'SA' == $api_name)
					{{--sa--}}
					<!--游戏列表--> 
					<div class="game-list-wrrapper">
						<div class="game-list clearfix" id="j-gameContainer">
					   @foreach($game_list as $item)
						   @if($item->api->api_name == 'SA')							
							<div class="game-info box a-fadeinT MGS"> 
								<div class="pic "> 
									<?php $img_path = $item->img_path;?>
									<img data-original="{{ asset("/web/images/games/sa/$img_path")}}" class="lazy"/> 
								</div> 
								<h4 class="name">{{ $item->name }}</h4> 
								<p class="ame-brief">
									<span class="comment fl">★★★★★<b class="b1"></b></span> <span class="popular fr">人气：<b>45235</b></span>
								</p> 
								<div class="btn-wp tc">
									 <a href="javascript:;"
											  @if($_member) onclick="javascript:window.open('{{ route('sa.playGame') }}?gametype={{ $item->game_id }}','','width=1024,height=768')"
											  @else onclick="return alert('请先登录！')" @endif class="j-check btn-play"><em></em>进入游戏</a> 
								</div> 
							</div>
						   @endif
					   @endforeach
						</div> 
					</div>
				@endif 

				@if(in_array('DT', $_api_list) & 'DT' == $api_name)
					{{--dt--}}
					<!--游戏列表--> 
					<div class="game-list-wrrapper">
						<div class="game-list clearfix" id="j-gameContainer">
					   @foreach($game_list as $item)
						   @if($item->api->api_name == 'DT')							
							<div class="game-info box a-fadeinT MGS"> 
								<div class="pic "> 
									<?php $img_path = $item->img_path;?>
									<img data-original="{{ asset("/web/images/games/dt/$img_path")}}" class="lazy"/> 
								</div> 
								<h4 class="name">{{ $item->name }}</h4> 
								<p class="ame-brief">
									<span class="comment fl">★★★★★<b class="b1"></b></span> <span class="popular fr">人气：<b>45235</b></span>
								</p> 
								<div class="btn-wp tc">
									 <a href="javascript:;"
											  @if($_member) onclick="javascript:window.open('{{ route('dt.playGame') }}?gametype={{ $item->game_id }}','','width=1024,height=768')"
											  @else onclick="return alert('请先登录！')" @endif class="j-check btn-play"><em></em>进入游戏</a> 
								</div> 
							</div>
						   @endif
					   @endforeach
						</div> 
					</div>
				@endif 

				@if(in_array('TTG', $_api_list) & 'TTG' == $api_name)
					{{--ttg--}}
					<!--游戏列表--> 
					<div class="game-list-wrrapper">
						<div class="game-list clearfix" id="j-gameContainer">
					   @foreach($game_list as $item)
						   @if($item->api->api_name == 'TTG')							
							<div class="game-info box a-fadeinT MGS"> 
								<div class="pic "> 
									<?php $img_path = $item->img_path;?>
									<img data-original="{{ asset("/web/images/games/ttg/$img_path")}}" class="lazy"/> 
								</div> 
								<h4 class="name">{{ $item->name }}</h4> 
								<p class="ame-brief">
									<span class="comment fl">★★★★★<b class="b1"></b></span> <span class="popular fr">人气：<b>45235</b></span>
								</p> 
								<div class="btn-wp tc">
									 <a href="javascript:;"
											  @if($_member) onclick="javascript:window.open('{{ route('ttg.playGame') }}?gameId={{ $item->game_id }}&gameName={{ $item->game_name }}','','width=1024,height=768')"
											  @else onclick="return alert('请先登录！')" @endif class="j-check btn-play"><em></em>进入游戏</a> 
								</div> 
							</div>
						   @endif
					   @endforeach
						</div> 
					</div>
				@endif 

				@if(in_array('MW', $_api_list) & 'MW' == $api_name)
					{{--mw--}}
					<!--游戏列表--> 
					<div class="game-list-wrrapper">
						<div class="game-list clearfix" id="j-gameContainer">
					   @foreach($game_list as $item)
						   @if($item->api->api_name == 'MW')							
							<div class="game-info box a-fadeinT MGS"> 
								<div class="pic "> 
									<?php $img_path = $item->img_path;?>
									<img data-original="{{ asset("/web/images/games/mw/$img_path")}}" class="lazy"/> 
								</div> 
								<h4 class="name">{{ $item->name }}</h4> 
								<p class="ame-brief">
									<span class="comment fl">★★★★★<b class="b1"></b></span> <span class="popular fr">人气：<b>45235</b></span>
								</p> 
								<div class="btn-wp tc">
									 <a href="javascript:;"
											  @if($_member) onclick="javascript:window.open('{{ route('mw.playGame') }}?gametype={{ $item->game_id }}','','width=1024,height=768')"
											  @else onclick="return alert('请先登录！')" @endif class="j-check btn-play"><em></em>进入游戏</a> 
								</div> 
							</div>
						   @endif
					   @endforeach
						</div> 
					</div>
				@endif					
			</div> 
		</div>	
	</div>
	<!-- end电子游戏 -->
	<script src="{{ asset('web/js/jquery.lazyload.min.js') }}"></script>
    <script>
		 (function ($) {
            $(function () {
                $("img.lazy").lazyload({
                    placeholder: "{{ asset('/web/css/images/egame-loading.gif') }}",
                    effect: "fadeIn",
                    skip_invisible: false  //解决滚动才显示的问题
                });
				
				var jiangchi = randomNum(100203045, 142039402);

				$('#j-jackpotCount').html(toThousands(jiangchi));		

				setInterval(function(){
					var new_jiagnchi = "";
					$(".jackpot span").each(function(){
						new_jiagnchi += $(this).text();
					});	
					var ssss = '';
					ssss = new_jiagnchi.replace(/[^0-9]/ig,"");
					$('#j-jackpotCount').html(toThousands(ssss*1+1));					
				},200);	

				function toThousands(num) 
				{
					var result = [ ], counter = 0;
					num = (num || 0).toString().split('');
					for (var i = num.length - 1; i >= 0; i--) {
						counter++;
						result.unshift('<span class="num-item">'+num[i]+'</span>');
						if(i == 1 || i == 4)
						{
							result.unshift('<span class="num-item">,</span>')
						}
						if(i == 7)
						{
							result.unshift('<span class="num-item">.</span>')
						}
					}
					return result.join('');
				}
			
				function randomNum(minNum,maxNum){ 
					switch(arguments.length){ 
						case 1: 
							return parseInt(Math.random()*minNum+1,10); 
						break; 
						case 2: 
							return parseInt(Math.random()*(maxNum-minNum+1)+minNum,10); 
						break; 
							default: 
								return 0; 
							break; 
					} 
				}					


            });
		})(jQuery)
    </script>
@endsection