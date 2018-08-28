<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8" /> 
<meta http-equiv="X-UA-Compatible" content="IE=edge" /> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" /> 
<title>游戏列表</title>
<link rel="stylesheet" href="{{ asset('/wap/css/newwap.css') }}">
</head> 
<body> 
<div class="container"> 
	<div id="page_content" class="flex_1">

		<div class="slot_game_filter_bar">
			<div class="cfx display_flex_h game-top-bar">
				<span onclick="window.history.back();"><span class="back-gameindex j-back-gameindex">返回</span></span>
				<div class="flex_5 fl">
					<div class="search-box">
					<form action="{{ route('wap.eGame') }}" method="GET">
						<input type="hidden" name="api_name" value="{{ $api_name }}">
						<input class="j-ipt" type="text" name="name" placeholder="关键词搜索">
						<button class="icon_search0 fl">搜索</button>
					</form>
					</div>
					<div class="select-list j-select" style=""> </div>

				</div>
				<div class="fr shaixuan" id="filter_dropdown_trigger">筛选</div>
			</div>
		</div>

		<div class="filter_dropdown_content">
			<div class="filter_dropdown_content_sec gray-bg" style="margin-bottom:10px">
				<ul class="filter_item_content">
					<li class="menu_item">条件筛选</li>
				</ul>
			</div>

			<div id="slot-game" class="item-game active">
				<div class="filter_dropdown_content_sec">
					<h3>游戏平台</h3>
					<ul class="filter_item_content">
					@if(in_array('PT', $_api_list))
						<li @if('PT' == $api_name) class="filter_item active" @else class="filter_item" @endif>
							<a href="{{ route('wap.eGame') }}?api_name=PT">PT</a>
						</li>					
					@endif
					@if(in_array('MG', $_api_list))
						<li @if('MG' == $api_name) class="filter_item active" @else class="filter_item" @endif>
							<a href="{{ route('wap.eGame') }}?api_name=MG">MG</a>
						</li>													
					@endif
					@if(in_array('DT', $_api_list))
						<li @if('DT' == $api_name) class="filter_item active" @else class="filter_item" @endif>
							<a href="{{ route('wap.eGame') }}?api_name=DT">DT</a>
						</li>					
					@endif
					@if(in_array('SA', $_api_list))
						<li @if('DT' == $api_name) class="filter_item active" @else class="filter_item" @endif>
							<a href="{{ route('wap.eGame') }}?api_name=SA">SA</a>
						</li>					
					@endif
						<li class="filter_item">
							<a href="{{ route('ag.playGame') }}?devices=1&gameType=8">AG</a>
						</li>
						<li class="filter_item">
							<a href="{{ route('bbin.playGame') }}?gametype=game&devices=1">BBIN</a>
						</li>						
					</ul>
				</div>

				<div id="PT" class="item active">
					<div class="space_border_wrap"><div class="space_border"></div></div>
					<div class="filter_dropdown_content_sec">
						<h3>游戏大厅</h3>
						<ul class="filter_item_content">						
							<li @if($hall == '') class="filter_item active" @else class="filter_item" @endif>
								<a href="{{ route('wap.eGame') }}?api_name={{$api_name}}">全选</a> 
							</li>
							<li @if($hall == "new") class="filter_item active" @else class="filter_item" @endif>
								<a href="{{ route('wap.eGame') }}?api_name={{$api_name}}&hall=new">新游戏</a> 
							</li>
							<li @if($hall == "hot") class="filter_item active" @else class="filter_item" @endif>
								<a href="{{ route('wap.eGame') }}?api_name={{$api_name}}&hall=hot">热门游戏</a>
							</li>
						</ul>
					</div>
					<div class="space_border_wrap"><div class="space_border"></div></div>
					<div class="filter_dropdown_content_sec">
						<h3>游戏线路</h3>
						<ul class="filter_item_content">
							<li @if($line == '') class="filter_item active" @else class="filter_item" @endif>
								<a href="{{ route('wap.eGame') }}?api_name={{$api_name}}&hall={{ $hall }}">全选</a>
							</li>							
							@foreach(config('platform.game_line') as $k => $v)
							<li @if($line == $k) class="filter_item active" @else class="filter_item" @endif>
								<a href="{{ route('wap.eGame') }}?api_name={{$api_name}}&hall={{ $hall }}&line={{ $k }}">{{ $v }}</a>
							</li>
							@endforeach	
						</ul>

					</div>
				</div>
			</div>
		</div>


		<div class="slot_game_list_wrap">
			
			<div class="dtJackpot"  id="j-jackpotCount" style="display: block;">
				<span class="num-item">1</span>
				<span class="num-item">8</span>
				<span class="num-item">1</span>
				<span class="num-item">,</span>
				<span class="num-item">4</span>
				<span class="num-item">1</span>
				<span class="num-item">6</span>
				<span class="num-item">.</span>
				<span class="num-item">9</span>
				<span class="num-item">6</span>
			</div>		
			
			
			<div class="slot_game_item_list ">
			   @foreach($game_list as $item)
					<div class="slot_game_item">     
						<div class="layout_image_hover_text">
							<?php $img_path = $item->img_path;?>
							@if($api_name == "TTG")
							<img class="game_img lazy" src="{{ asset("/web/images/games/ttg/$img_path")}}">
							@endif
							@if($api_name == "PT")
							<img class="game_img lazy" src="{{ asset("/web/images/games/pt/$img_path")}}">
							@endif
							@if($api_name == "MG")
							<img class="game_img lazy" src="{{ asset("/web/images/games/mg/$img_path")}}">
							@endif
							@if($api_name == "DT")
							<img class="game_img lazy" src="{{ asset("/web/images/games/dt/$img_path")}}">
							@endif
							@if($api_name == "SA")
							<img class="game_img lazy" src="{{ asset("/web/images/games/sa/$img_path")}}">
							@endif										
							
						</div>
						<div class="game_item_operations tc">
							<div class="game-text">{{ $item->name }}</div>
							@if($api_name == "TTG")
							<a href="{{ route('ttg.playGame') }}?gameId={{ $item->game_id }}&gameName={{ $item->game_name }}&devices=1"><div class="o-btn">进入游戏</div></a>
							@endif
							@if($api_name == "PT")
							<a href="{{ route('pt.playGame') }}?gametype={{ $item->game_id }}&devices=1"><div class="o-btn">进入游戏</div></a>
							@endif
							@if($api_name == "MG")
							<a href="{{ route('mg.playGame') }}?gametype={{ $item->game_id }}&devices=1"><div class="o-btn">进入游戏</div></a>
							@endif
							@if($api_name == "DT")
							<a href="{{ route('dt.playGame') }}?gametype={{ $item->game_id }}&devices=1"><div class="o-btn">进入游戏</div></a>
							@endif
							@if($api_name == "SA")
							<a href="{{ route('sa.playGame') }}?gametype={{ $item->game_id }}&devices=1"><div class="o-btn">进入游戏</div></a>
							@endif									
						</div>
					</div>
			   @endforeach				
			</div>
		</div>
	</div>
	<div class="overlay"></div>
	<script src="https://apps.bdimg.com/libs/jquery/2.1.1/jquery.js"></script>
	<script>
		$(function(){
			$("#filter_dropdown_trigger").on("click", function(e){
				$('.overlay').addClass('show');
				$('.filter_dropdown_content').slideToggle(500);		
				$(document).one("click", function(){
					$('.overlay').removeClass('show');
					$('.filter_dropdown_content').slideToggle(500);
				});
				e.stopPropagation();
			});
			$('.filter_dropdown_content').on("click", function(e){
				e.stopPropagation();
			});
						
			var jiangchi = randomNum(100203045, 142039402);

			$('#j-jackpotCount').html(toThousands(jiangchi));		

			setInterval(function(){
				var new_jiagnchi = "";
				$(".dtJackpot span").each(function(){
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
	</script>
</div>  
</body>
</html>