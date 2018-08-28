@extends('web.layouts.main')
@section('content')
 
<script type="text/javascript">
	$().ready(function(){
		$("#menu_2").addClass("cur on");		
	});
	
</script>
<link rel="stylesheet" href="/dzyxcss/cashfish.css">
<link rel="stylesheet" href="{{ asset('/web/css/dl.css') }}">
<div style="margin-top:140px"></div>
<script type="text/javascript">
    $(function () {
        $(".inPage").addClass("slotPage");
        $(".inBanner").addClass("slotBanner");
        $(".nav li:nth-child(3) a").addClass("current");
    })
</script>

<div class="fish-game">
	<div id="logo"></div>
	<ul id="game-list">
	    		<li  @if($_member) onclick="javascript:window.open('{{ route('ag.playGame') }}?gametype=6','','width=1450,height=768')"
                               @else onclick="return layer.msg('请先登录!',{icon:5})" @endif>
			<div>
				<img src="/dzyxcss/ag.png">
				<div class="game-text">AG捕鱼王</div>
			</div>
		</li>
						<li  @if($_member) onclick="javascript:window.open('{{ route('pt.playGame') }}?gametype=cashfi','','width=1450,height=768')"
                               @else onclick="return layer.msg('请先登录!',{icon:5})" @endif>
			<div>
				<img src="/dzyxcss/pt.png">
				<div class="game-text">PT深海大赢家</div>
			</div>
		</li>
						<li  @if($_member) onclick="javascript:window.open('{{ route('mw.playGame') }}?gametype=50','','width=1450,height=768')"
                               @else onclick="return layer.msg('请先登录!',{icon:5})" @endif>
			<div>
				<img src="/dzyxcss/cq9.png">
				<div class="game-text">MW千炮捕鱼</div>
			</div>
		</li>
		
		
		<li @if($_member) onclick="javascript:window.open('{{ route('sw.playGame') }}?gametype=sw_fufish_intw','','width=1450,height=768')"
                               @else onclick="return layer.msg('请先登录!',{icon:5})" @endif>
			<div>
				<img src="/dzyxcss/p9.png">
				<div class="game-text">SW捕鱼多福</div>
			</div>
		</li>
        		
	</ul>
</div>

@endsection