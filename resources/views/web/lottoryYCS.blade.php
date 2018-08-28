@extends('web.layouts.main')
@section('content')
<link type="text/css" rel="stylesheet" href="/dzyxcss/newindex/zb.css">
<link rel="stylesheet" type="text/css" href="/dzyxcss/jsp/member/css/jquery-ui-1.9.1.custom.min.css">
<!-- 会员登录后刷新余额和展示各个api的余额 -->
<link href="/dzyxcss/jsp/member/css/refreshBalance.css" rel="stylesheet" type="text/css" />
<!-- 新版本设计替换js css -->

<script type="text/javascript" src="/dzyxcss/jsp/member/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="/dzyxcss/jsp/member/js/index.js"></script>
	    <script type="text/javascript">
        if (window.location.host != top.location.host) {
            top.location = window.location;
        }
        function urlOnclick(url){
            window.open(url,"gameFrame");
        }
    </script>
    <div class="body"
         style="">
        <!--banner-->
       
        <!-- #EndLibraryItem -->
        <div class="banner">            
            <div class="subBox" style="display:none">
                <div class="infoBox">
                    <p class="title">超级彩金</p>
                    <p class="num" id="n1">CNY 5,804,765.50</p>
                    <p class="ttl"><img src="/cl/tpl/jhg/images/slots/img01.png" alt="">超级赢家榜</p>
                    <ul class="ttlUl clearfix">
                        <li>客户ID</li>
                        <li>金额</li>
                        <li>游戏名称</li>
                    </ul>
                    <div class="bd">
                        <ul class="textUl">
                            <li><span>djvv1</span>         <span>82658.00</span>         <span>摆脱</span></li>
                            <li><span>Evan523</span>         <span>874896.00</span>         <span>斗鸡</span></li>
                            <li><span>joke</span>         <span>18234.00</span>         <span>抢劫银行</span></li>
                            <li><span>lee</span>         <span>21547.00</span>         <span>伴娘</span></li>
                            <li><span>vvse25</span>         <span>2586.00</span>         <span>狂欢夜</span></li>
                            <li><span>Down</span>         <span>14758.00</span>         <span>古怪猴子</span></li>
                            <li><span>zhaoK14</span>         <span>35789.00</span>         <span>捕鱼王</span></li>
                            <li><span>xij45</span>         <span>25896.00</span>         <span>斗鸡</span></li>
                            <li><span>qweq</span>         <span>12548.00</span>         <span>抢劫银行</span></li>
                            <li><span>Asdf</span>         <span>13458.00</span>         <span>伴娘</span></li>
                            <li><span>Dfde</span>         <span>36952.00</span>         <span>性感女仆</span></li>
                            <li><span>Down</span>         <span>45621.00</span>         <span>幸运8</span></li>
                            <li><span>fwtd1</span>         <span>18268.00</span>         <span>摆脱</span></li>
                            <li><span>Efda</span>         <span>274896.00</span>         <span>杰克高手</span></li>
                            <li><span>baek</span>         <span>38568.00</span>         <span>三国</span></li>
                            <li><span>lee</span>         <span>35841.00</span>         <span>夜市人生</span></li>
                            <li><span>bbm</span>         <span>15923.00</span>         <span>幸运8</span></li>
                            <li><span>Upup</span>         <span>59874.00</span>         <span>狂欢夜</span></li>
                            <li><span>ppo</span>         <span>45871.00</span>         <span>伴娘</span></li>
                            <li><span>Uup</span>         <span>56324.00</span>         <span>斗鸡</span></li>
                            <li><span>joke</span>         <span>78952.00</span>         <span>抢劫银行</span></li>
                            <li><span>lee</span>         <span>23658.00</span>         <span>捕鱼王</span></li>
                            <li><span>vvse</span>         <span>89652.00</span>         <span>水果拉霸</span></li>
                            <li><span>jack</span>         <span>95263.00</span>         <span>杰克高手</span></li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>

        <div class="newSection">
            <div class="newsBox">
                <dl>
                    <dt>最新消息 / <span>News</span></dt>
                    <dd class="bd on">
                        <ul class="infoList">
                              @foreach($_system_notices as $v)  <li><a href="javascript:void(0)"><marquee scrollamount="3" scrolldelay="100" direction="left" id="mar0" onmouseout="this.start()" onmouseover="this.stop()">~{{ $v->title }}~{{ $v->content }} </marquee></a></li>@endforeach
                        </ul>
                    </dd>
                </dl>
            </div>
        </div>
        <div id="main">
            <div>

                
<script type="text/javascript">
    $(function () {
        $("body").attr("id", "lottery");
    })
</script>
	 	 <div class="about_con">	
            <div class="sx-box">
                <div class="game_con">
@if($_member)
   <iframe name="main" id="gameFrame" scrolling="NO" frameborder="0" src="{{ route('yc.playGame') }}?gametype=Cash" allowtransparency="true"height="1024px"></iframe>
   @else
   <iframe name="main" id="gameFrame" scrolling="NO" frameborder="0" src="http://ycpc.gebbs.net/Home/Index" allowtransparency="true"height="1024px"></iframe>
@endif
</div>
            </div>
            <script type="text/javascript">
                $(".linkUl li").click(function() {
                    $(this).addClass("on").siblings().removeClass("on");
                });
            </script>
    <p style="clear:both;"></p>
</div>

</div></div>
@endsection