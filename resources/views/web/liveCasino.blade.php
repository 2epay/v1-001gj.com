@extends('web.layouts.main')
@section('content')
       <div class="dd" style="top:390px;">
        <div class="dd_z">
            <div id="banner_img" style="width:100px; height:40px; background: url(/cl/tpl/xinweinisi3/images/dd_03.png?=672) no-repeat;float:left;margin-top:4px;"></div>
            <marquee id="mar0" onmouseout="this.start()" onmouseover="this.stop()"style="float:left; color:#fff; font-size:14px; line-height:40px;position:relative;left:10px;" scrollAmount=5 width=964>@foreach($_system_notices as $v)~{{ $v->title }}~{{ $v->content }} @endforeach</marquee> 
        </div>
    </div>
  <div id="banner_tabs" class="flexslider" style="height:413px; background: url(/cl/tpl/xinweinisi3/images/zr_01.jpg) center">

    </div>
    <script type="text/javascript">
        $(function() {
            var bannerSlider = new Slider($('#banner_tabs'), {
                time: 5000,
                delay: 400,
                event: 'hover',
                auto: true,
                mode: 'fade',
                controller: $('#bannerCtrl'),
                activeControllerCls: 'active'
            });
            $('#banner_tabs .flex-prev').click(function() {
                bannerSlider.prev()
            });
            $('#banner_tabs .flex-next').click(function() {
                bannerSlider.next()
            });
        })
    </script>
</div>
		<style>
.bb{ cursor:pointer;}
img{_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='icon_home.png?=672');
_ background-image: none;}
</style>
<link rel="stylesheet" href="{{ asset('/web/css/shixun/zhenren.css') }}">
  <div class="zhenrenPage">
		<section id="lobby">
			<ul class="game-list scale-transform">
                @if(in_array('AG', $_api_list))
					<li game-box="ag"><div class="text">AG娱乐场</div><span class="enter"><a href="javascript:void(0);" title="AG"
                               @if($_member) onclick="javascript:window.open('{{ route('ag.playGame') }}','','width=1450,height=768')"
                               @else onclick="return layer.msg('请先登录!',{icon:6})" @endif>进入游戏</a></span>
					</li>
                @endif
				  @if(in_array('DG', $_api_list))
					<li game-box="cg"><div class="text">DG娱乐场</div><span class="enter"><a href="javascript:void(0);" title="DG"
                               @if($_member) onclick="javascript:window.open('{{ route('dg.playGame') }}','','width=1450,height=768')"
                               @else onclick="return layer.msg('请先登录!',{icon:6})" @endif>进入游戏</a></span>
					</li>
                @endif
                @if(in_array('OPUS', $_api_list))
					<li game-box="sa"><div class="text">OPUS娱乐场</div><span class="enter"><a href="javascript:void(0);" title="OPUS"
                               @if($_member) onclick="javascript:window.open('{{ route('opus.playGame') }}','','width=1450,height=768')"
                               @else onclick="return layer.msg('请先登录!',{icon:6})" @endif>进入游戏</a></span>
					</li>
                @endif
				<!--li game-box="more" ></li-->
                @if(in_array('BBIN', $_api_list))
					<li game-box="bb"><div class="text">BBIN娱乐场</div><span class="enter"><a href="javascript:void(0);" title="BBIN"
                               @if($_member) onclick="javascript:window.open('{{ route('bbin.playGame') }}?gametype=live','','width=1450,height=768')"
                               @else onclick="return layer.msg('请先登录!',{icon:6})" @endif>进入游戏</a></span>
					</li>
                @endif
                @if(in_array('AB', $_api_list))
					<li game-box="ab"><div class="text">AB娱乐场</div><span class="enter"><a href="javascript:void(0);" title="AB"
                               @if($_member) onclick="javascript:window.open('{{ route('ab.playGame') }}','','width=1450,height=768')"
                               @else onclick="return layer.msg('请先登录!',{icon:6})" @endif>进入游戏</a></span>
					</li>
                @endif
                @if(in_array('MG', $_api_list))
					<li game-box="mg"><div class="text">MG娱乐场</div><span class="enter"><a href="javascript:void(0);" title="MG"
                               @if($_member) onclick="javascript:window.open('{{ route('mg.playGame') }}','','width=1450,height=768')"
                               @else onclick="return layer.msg('请先登录!',{icon:6})" @endif>进入游戏</a></span>
					</li>
                @endif
                @if(in_array('BG', $_api_list))
					<li game-box="bg"><div class="text">BG娱乐场</div><span class="enter"><a href="javascript:void(0);" title="BG"
                               @if($_member) onclick="javascript:window.open('{{ route('bg.playGame') }}','','width=1450,height=768')"
                               @else onclick="return layer.msg('请先登录!',{icon:6})" @endif>进入游戏</a></span>
					</li>
                @endif
                @if(in_array('OG', $_api_list))
					<li game-box="og"><div class="text">OG娱乐场</div><span class="enter"><a href="javascript:void(0);" title="OG"
                               @if($_member) onclick="javascript:window.open('{{ route('og.playGame') }}','','width=1450,height=768')"
                               @else onclick="return layer.msg('请先登录!',{icon:6})" @endif>进入游戏</a></span>
					</li>
                @endif
                @if(in_array('CG', $_api_list))
					<li game-box="cg"><div class="text">CG娱乐场</div><span class="enter"><a href="javascript:void(0);" title="CG"
                               @if($_member) onclick="javascript:window.open('{{ route('cg.playGame') }}','','width=1450,height=768')"
                               @else onclick="return layer.msg('请先登录!',{icon:6})" @endif>进入游戏</a></span>
					</li>
                @endif
                @if(in_array('SA', $_api_list))
					<li game-box="sa"><div class="text">SA娱乐场</div><span class="enter"><a href="javascript:void(0);" title="SA"
                               @if($_member) onclick="javascript:window.open('{{ route('sa.playGame') }}','','width=1450,height=768')"
                               @else onclick="return layer.msg('请先登录!',{icon:6})" @endif>进入游戏</a></span>
					</li>
                @endif
                @if(in_array('SUNBET', $_api_list))
					<li game-box="sunbet"><div class="text">申博娱乐场</div><span class="enter"><a href="javascript:void(0);" title="SUNBET"
                               @if($_member) onclick="javascript:window.open('{{ route('sunbet.playGame') }}','','width=1450,height=768')"
                               @else onclick="return layer.msg('请先登录!',{icon:6})" @endif>进入游戏</a></span>
					</li>
                @endif
                @if(in_array('PT', $_api_list))
          <li game-box="pt"><div class="text">PT娱乐场</div><span class="enter"><a href="javascript:void(0);" title="PT"
                               @if($_member) onclick="javascript:window.open('{{ route('pt.playGame') }}?gametype=vbal','','width=1450,height=768')"
                               @else onclick="return layer.msg('请先登录!',{icon:6})" @endif>进入游戏</a></span>
          </li>
               @endif			
							
			</ul>
		</section>
    </div>
@endsection