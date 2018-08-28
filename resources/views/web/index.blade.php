@extends('web.layouts.main')
@section('head')
  <script type="text/javascript"src="/cl/tpl/xinweinisi3/ver2/js/csPopup1.js?=679"></script>
@endsection
@section('after.js')
<script language="javascript" type="text/javascript" src="/cl/tpl/xinweinisi3/ver2/js/jquery.touchSlider.js?=679"></script>
<script type="text/javascript">
  $(".main_image").touchSlider({
        flexible : true,
        speed : 400,
        btn_prev : $("#btn_prev"),
        btn_next : $("#btn_next"),
        paging : $(".flicking_con a"),
        counter : function (e){
            $(".flicking_con a").removeClass("on").eq(e.current-1).addClass("on");
        }
    });
    timer = setInterval(function(){
        $("#btn_next").click();
    }, 5000);
    
    $(".main_visual").hover(function(){
        clearInterval(timer);
    },function(){
        timer = setInterval(function(){
            $("#btn_next").click();
        },5000);
    });
    
    $(".main_image").bind("touchstart",function(){
        clearInterval(timer);
    }).bind("touchend", function(){
        timer = setInterval(function(){
            $("#btn_next").click();
        }, 5000);
    });
        
</script>
@endsection
@section('content')
<link rel="stylesheet" href="/cl/tpl/xinweinisi3/css/index.css?=672"/>

    <div class="dd" style="top:525px">
        <div class="dd_z">
            <div style="width:100px; height:40px; background: url(/cl/tpl/xinweinisi3/images/dd_03.png?=672) no-repeat;float:left;margin-top:4px;"></div>
           <marquee id="mar0" onmouseout="this.start()" onmouseover="this.stop()"style="float:left; color:#fff; font-size:14px; line-height:40px;position:relative;left:10px;" scrollAmount=5 width=964>
           @foreach($_system_notices as $v) ~{{ $v->title }}~{{ $v->content }} @endforeach
           </marquee> 
        </div>
    </div>

    

    <div class="index-con w1100 mc rel clearfix">
       <div class="banners mc abs clearfix">
          <div class="main_visual">
            <div class="flicking_con clearfix">
              <a href="#"></a>
              <a href="#"></a>
              <a href="#"></a>
            </div>  
            <div class="main_image">
                <ul>
                <li><span class="img_1"></span></li>
                <li><span class="img_2"></span></li>
                <li><span class="img_3"></span></li>
              </ul>  
              <a href="javascript:;" id="btn_prev"></a>
              <a href="javascript:;" id="btn_next"></a>
            </div>
          </div>  
        </div>  
    </div> 
   
    <div class="sx">
        <div class="sx_z">
            <img src="/cl/tpl/xinweinisi3/images/bt_03.png?=672" style="position: absolute;top:16px; left:350px;" alt=""/>
            <a href="{{  route('web.liveCasino') }}" class="l"></a>
            <a href="javascript://" class="z_s">    
                    <div class="Game_left left-bigNum">
                    <div class="lg">
                        <div class="big-num">16,349,424.00</div>
                    </div>
                    <ul class="cl">
                    </ul>
                </div>
            </a>
            <a href="{{  route('web.lottory') }}"  class="z_x"></a>
            <a href="{{  route('web.esports') }}" class="r"></a>
        </div>
    </div>


<!-- </div> -->

<script>
    $('.slides li').css({ width:$(window).width()});
    $(window).resize(function(){
        $('.slides li').css({ width:$(window).width()});
    })
    $('.slides li .img').css({ width:$(window).width()});
    $(window).resize(function(){
        $('.slides li .img').css({ width:$(window).width()});
    })
    

</script>

<style>
    .slides li{ height:545px;}
    .slides li .img{ height:545px;}
</style>
<!--头部end-->



		<style type="text/css">
  .Game_container ul.cl li.cc {
    width: 215px;
  }
</style>
<div class="Game_container"> 
   <div class="Game_centet"> 
    <div class="Game_left"> 
     <div class="zf"></div> 
     <ul class="cl" style="height:70px;"> 
      <li class="cc"> <a href="{{  route('web.eGame') }}"> 
        <div class="Game_title" tyle="width:215px;"> 
         <p style="margin-left:25px;"><img src="/cl/tpl/xinweinisi3/images/game_pt.png"></p> 
         <span>PT电子</span> 
         <font>PTGAME</font> 
         <div class="fig" style="top: -20px;right: 20px;">
          <img src="/cl/tpl/xinweinisi3/images/hh.gif">
         </div> 
        </div> </a> 
      </li> 
      <li > 
        <a href="{{  route('web.eGame') }}"> 
        <div class="Game_title" style="width:211px;"> 
         <p><img src="/cl/tpl/xinweinisi3/images/game_dz.png"></p> 
         <span>MG电子</span> 
         <font style="left:-2px;">MICROGAMING</font> 
         <div class="fig">
          <img src="/cl/tpl/xinweinisi3/images/hots.gif">
         </div> 
        </div> </a> 
      </li> 

      <li class=""> <a href="{{  route('web.eGame') }}"> 
        <div class="Game_title" tyle="width:215px;"> 
         <p><img src="/cl/tpl/xinweinisi3/images/game_ag1.png"></p> 
         <span>AG电子</span> 
         <font>AGGAME</font> 
        </div> </a> </li> 
      <li class="cur"> <a href="{{  route('web.eGame') }}"> 
        <div class="Game_title" tyle="width:215px;"> 
         <p style="margin-left:32px;margin-top: 15px;"><img src="/cl/tpl/xinweinisi3/images/game_bbin.png"></p> 
         <span>BB电子</span> 
         <font style="left:2px;">BBINGAMING</font> 
        </div> </a> </li> 
      <li class=""> <a href="{{  route('web.eGame') }}"> 
        <div class="Game_title" tyle="width:215px;"> 
         <p><img src="/cl/tpl/xinweinisi3/images/game_mw.png"></p> 
         <span>MW电子</span> 
         <font>MWGAME</font> 
        </div> </a> 
      </li> 
     </ul> 
     <div class="Game_xx"> 
      <div class="Game_g1" style="display: none; opacity: 0;"> 
       <div class="buyc"> 
        <ul ng-if="game=='pt'">
           <a href="{{  route('web.eGame') }}">  <li><img src="/cl/tpl/xinweinisi3/images/pt1.png"> 湛蓝深海</li>
            <li><img src="/cl/tpl/xinweinisi3/images/pt2.png"> 古怪猴子</li>
            <li><img src="/cl/tpl/xinweinisi3/images/pt3.png"> 招财童子</li>
            <li><img src="/cl/tpl/xinweinisi3/images/pt4.png"> 生命女神</li>
            <li><img src="/cl/tpl/xinweinisi3/images/pt5.png"> 青春之泉</li>
            <li><img src="/cl/tpl/xinweinisi3/images/pt6.png"> 中式厨房</li>
            <li><img src="/cl/tpl/xinweinisi3/images/pt7.png"> 圣诞奇迹</li>
           <li><img src="/cl/tpl/xinweinisi3/images/pt8.png"> 疯狂底特律七</li>
            <li><img src="/cl/tpl/xinweinisi3/images/pt9.png"> 疯狂乐透</li>
            <li><img src="/cl/tpl/xinweinisi3/images/pt10.png">公路王国 </li></a> 
            
        </ul>
 
       </div> 
      </div> 
      <div class="Game_g1" style="display: none; opacity: 0;"> 
       <div class="buyc"> 
          <ul ng-if="game=='mg'">
          <a href="{{  route('web.eGame') }}">   <li><img src="/cl/tpl/xinweinisi3/images/mg1.jpg?=672">摆脱</li>
            <li><img src="/cl/tpl/xinweinisi3/images/mg2.jpg?=672">抢劫银行</li>
            <li><img src="/cl/tpl/xinweinisi3/images/mg3.jpg?=672">伴娘我最大</li>
            <li><img src="/cl/tpl/xinweinisi3/images/mg4.jpg?=672">阿瓦隆</li>
            <li><img src="/cl/tpl/xinweinisi3/images/mg5.jpg?=672">狂欢节</li>
            <li>><img src="/cl/tpl/xinweinisi3/images/mg6.jpg?=672">黄金工厂</li>
            <li><img src="/cl/tpl/xinweinisi3/images/mg7.jpg?=672">空手道猪</li>
            <li><img src="/cl/tpl/xinweinisi3/images/mg8.jpg?=672">不朽爱情</li>
						<li><img src="/cl/tpl/xinweinisi3/images/mg9.png?=672">宝石连线</li>
						<li><img src="/cl/tpl/xinweinisi3/images/mg10.png?=672">淑女派对</li></a> 
          </ul>
 
       </div> 
      </div> 
	   
	  
      <div class="Game_g1" style="display: none; opacity: 0;"> 
       <div class="buyc"> 
        <ul ng-if="game=='ag'">
         <a href="{{  route('web.eGame') }}">  <li><img src="/cl/tpl/xinweinisi3/images/ag1.jpg">水果拉霸</li>
          <li><img src="/cl/tpl/xinweinisi3/images/ag2.jpg">灵猴献瑞</li>
          <li><img src="/cl/tpl/xinweinisi3/images/ag3.jpg">欧洲列强争霸</li>
          <li><img src="/cl/tpl/xinweinisi3/images/ag4.jpg">复古花园</li>
          <li><img src="/cl/tpl/xinweinisi3/images/ag5.jpg">太空漫游</li>
          <li><img src="/cl/tpl/xinweinisi3/images/ag6.jpg">杰克高手</li>
          <li><img src="/cl/tpl/xinweinisi3/images/ag7.jpg">日本武士</li>
          <li><img src="/cl/tpl/xinweinisi3/images/ag8.jpg">性感女仆</li>
		  <li><img src="/cl/tpl/xinweinisi3/images/ag9.png">冰河世界</li>
          <li><img src="/cl/tpl/xinweinisi3/images/ag10.png">麻将老虎机</li></a>
                </ul>
 
       </div> 
      </div> 
      
      <div class="Game_g1" style="display: block; opacity: 1;"> 
       <div class="buyc"> 
        <ul ng-if="game=='bb'">
        <a href="{{  route('web.eGame') }}">  <li><img src="/cl/tpl/xinweinisi3/images/bb1.jpg">糖果派对</li>
          <li><img src="/cl/tpl/xinweinisi3/images/bb2.jpg">连环夺宝</li>
          <li><img src="/cl/tpl/xinweinisi3/images/bb3.jpg">疯狂水果盘</li>
          <li><img src="/cl/tpl/xinweinisi3/images/bb4.jpg">幸运财神</li>
          <li><img src="/cl/tpl/xinweinisi3/images/bb5.jpg">热带风情</li>
          <li><img src="/cl/tpl/xinweinisi3/images/bb6.jpg">沙滩排球</li>
          <li><img src="/cl/tpl/xinweinisi3/images/bb7.jpg">钻石水果盘</li>
          <li><img src="/cl/tpl/xinweinisi3/images/bb8.jpg">鱼虾蟹</li>
		      <li><img src="/cl/tpl/xinweinisi3/images/bb9.png">大话西游</li>
          <li><img src="/cl/tpl/xinweinisi3/images/bb10.png">金鸡报喜</li></a>
        </ul>
       </div> 
      </div>
	    <div class="Game_g1" style="display: none; opacity: 0;"> 
       <div class="buyc"> 
        <ul ng-if="game=='mw'">
          <a href="{{  route('web.eGame') }}">   <li><img src="/cl/tpl/xinweinisi3/images/mw1.png">超级斗地主 </li>
            <li><img src="/cl/tpl/xinweinisi3/images/mw2.png">洪福齐天 </li>
            <li><img src="/cl/tpl/xinweinisi3/images/mw3.png">百乐牛牛 </li>
            <li><img src="/cl/tpl/xinweinisi3/images/mw4.png">千炮捕鱼 </li>
            <li><img src="/cl/tpl/xinweinisi3/images/mw5.png">五龙争霸 </li>
            <li><img src="/cl/tpl/xinweinisi3/images/mw6.png">HUGA </li>
            <li><img src="/cl/tpl/xinweinisi3/images/mw7.png">水浒传 </li>
            <li><img src="/cl/tpl/xinweinisi3/images/mw8.png">好运5扑克 </li>
            <li><img src="/cl/tpl/xinweinisi3/images/mw9.png">黄金777 </li>
            <li><img src="/cl/tpl/xinweinisi3/images/mw10.png">黄金777 </li></a>
             
          </ul>

       </div> 
      </div> 
  
      
      
     </div> 
     <div class="scrolls" id="demo"> 
      <ul id="demo1"> 
       <li><p><span class="address">深圳</span><font>wjsb***86</font></p><p style="width:165px; margin-left:20px;"><span>冰上曲棍球</span><font>580.00元</font></p></li> 
       <li><p><span class="address">北京</span><font>75****sc</font></p><p style="width:165px; margin-left:20px;"><span>水果老虎机</span><font>680.00元 </font></p></li> 
       <li><p><span class="address">黑龙江</span><font>boj***6</font></p><p style="width:165px; margin-left:20px;"><span>阿瓦隆2</span><font>3,600.00元</font></p></li> 
       <li><p><span class="address">北京</span><font>yul****gh</font></p><p style="width:165px; margin-left:20px;"><span>不朽的浪漫</span><font>480.00元 </font></p></li> 
       <li><p><span class="address">广西</span><font>tgh**40</font></p><p style="width:165px; margin-left:20px;"><span>银行抢匪2</span><font>8,000.00元</font></p></li> 
       <li><p><span class="address">江苏</span><font>fsc***l</font></p><p style="width:165px; margin-left:20px;"><span>雷神</span><font>670.00元</font></p></li> 
       <li><p><span class="address">辽宁</span><font>mhj***14</font></p><p style="width:165px; margin-left:20px;"><span>抢银行</span><font>2,200.00元</font></p></li> 
       <li><p><span class="address">河北 </span><font>kae***8</font></p><p style="width:165px; margin-left:20px;"><span>黄金工厂</span><font>2,000.00元</font></p></li> 
       <li><p><span class="address">安徽</span><font>klk***i</font></p><p style="width:165px; margin-left:20px;"><span>侏儸纪公园</span><font>1,300.00元</font></p></li> 
       <li><p><span class="address">广西</span><font>fgds***m</font></p><p style="width:165px; margin-left:20px;"><span>银行抢匪2</span><font>480.00元</font></p></li> 
       <li><p><span class="address">重庆</span><font>gin**32</font></p><p style="width:165px; margin-left:20px;"><span>阿瓦隆2</span><font>560.00元</font></p></li> 
       <li><p><span class="address">云南</span><font>58***y</font></p><p style="width:165px; margin-left:20px;"><span>狂欢节</span><font>850.00元</font></p></li> 
       <li><p><span class="address">四川</span><font>oi***65</font></p><p style="width:165px; margin-left:20px;"><span>空手道猪</span><font>680.00元 </font></p></li> 
       <li><p><span class="address">江苏</span><font>yi****</font></p><p style="width:165px; margin-left:20px;"><span>丛林快讯</span><font>980.00元</font></p></li> 
       <li><p><span class="address">四川</span><font>gg***5</font></p><p style="width:165px; margin-left:20px;"><span>太空漫游</span><font>560.00元</font></p></li> 
       <li><p><span class="address">安徽</span><font>qyt****</font></p><p style="width:165px; margin-left:20px;"><span>宝石之轮</span><font>1,200.00元</font></p></li> 
       <li><p><span class="address">安徽</span><font>64y****</font></p><p style="width:165px; margin-left:20px;"><span>糖果派对</span><font>460.00元</font></p></li> 
       <li><p><span class="address">广西</span><font>ffc**66</font></p><p style="width:165px; margin-left:20px;"><span>疯狂马戏团</span><font>5,000.00元</font></p></li> 
       <li><p><span class="address">江苏 </span><font>fr**25</font></p><p style="width:165px; margin-left:20px;"><span>黄金工厂</span><font>5,000.00元</font></p></li> 
       <li><p><span class="address">陕西</span><font>gg**451</font></p><p style="width:165px; margin-left:20px;"><span>连环夺宝</span><font>930.00元</font></p></li> 
       <li><p><span class="address">河北</span><font>yui***5</font></p><p style="width:165px; margin-left:20px;"><span>糖果派对</span><font>990.00元</font></p></li> 
       <li><p><span class="address">福建</span><font>puj***qs</font></p><p style="width:165px; margin-left:20px;"><span>糖果派对</span><font>800.00元</font></p></li> 
       <li><p><span class="address">四川</span><font>jji***20</font></p><p style="width:165px; margin-left:20px;"><span> 雷神</span><font>3,000.00元</font></p></li> 
       <li><p><span class="address">贵州</span><font>uot**96</font></p><p style="width:165px; margin-left:20px;"><span>宝石之轮</span><font>700.00元 </font></p></li> 
       <li><p><span class="address">广东</span><font>weg**951</font></p><p style="width:165px; margin-left:20px;"><span>连环夺宝</span><font>220.00元 </font></p></li> 
       <li><p><span class="address">福建</span><font>79**ey </font></p><p style="width:165px; margin-left:20px;"><span>女皇之心</span><font>790.00元</font></p></li> 
       <li><p><span class="address">辽宁</span><font> ddc***7</font></p><p style="width:165px; margin-left:20px;"><span>银行抢匪2</span><font>590.00元</font></p></li> 
       <li><p><span class="address">河北</span><font>dfv***80</font></p><p style="width:165px; margin-left:20px;"><span>疯狂马戏团</span><font>48,000.00元</font></p></li> 
       <li><p><span class="address">陕西</span><font>low***yt</font></p><p style="width:165px; margin-left:20px;"><span>明星97</span><font>600.00元 </font></p></li> 
       <li><p><span class="address">天津</span><font>hin***tt</font></p><p style="width:165px; margin-left:20px;"><span>不朽的浪漫</span><font>5.300.00元</font></p></li> 
       <li><p><span class="address">吉林</span><font>89***tf</font></p><p style="width:165px; margin-left:20px;"><span>明星97</span><font>680.00元</font></p></li> 
       <li><p><span class="address">河南</span><font>ji***88</font></p><p style="width:165px; margin-left:20px;"><span>冰上曲棍球</span><font>782.00元</font></p></li> 
       <li><p><span class="address">河北</span><font>uhg****</font></p><p style="width:165px; margin-left:20px;"><span>太空漫游</span><font>888.00元</font></p></li> 
       <li><p><span class="address">河南</span><font>sa**666</font></p><p style="width:165px; margin-left:20px;"><span>侏儸纪公园</span><font>2,500.00元</font></p></li> 
       <li><p><span class="address">黑龙江</span><font>asx**uo </font></p><p style="width:165px; margin-left:20px;"><span>抢银行</span><font>600.00元</font></p></li> 
       <li><p><span class="address">重庆</span><font>ws**742</font></p><p style="width:165px; margin-left:20px;"><span>女皇之心</span><font>3,200.00元</font></p></li> 
       <li><p><span class="address">天津</span><font>52**qq</font></p><p style="width:165px; margin-left:20px;"><span>狂欢节</span><font>840.00元</font></p></li> 
       <li><p><span class="address">吉林</span><font>65***s</font></p><p style="width:165px; margin-left:20px;"><span>空手道猪</span><font>4.200.00元</font></p></li> 
       <li><p><span class="address">黑龙江</span><font>yjh***l</font></p><p style="width:165px; margin-left:20px;"><span>狂欢节</span><font>480.00元</font></p></li> 
       <li><p><span class="address">云南</span><font>ko***6</font></p><p style="width:165px; margin-left:20px;"><span>花花公子</span><font>700.00元</font></p></li> 
       <li><p><span class="address">广东</span><font>sxi**68</font></p><p style="width:165px; margin-left:20px;"><span>黄金工厂</span><font>880.00元</font></p></li> 
       <li><p><span class="address">云南</span><font>752****</font></p><p style="width:165px; margin-left:20px;"><span>丛林快讯</span><font>580.00元</font></p></li> 
       <li><p><span class="address">深圳</span><font>tin**52</font></p><p style="width:165px; margin-left:20px;"><span>抢银行</span><font>2,200.00元</font></p></li> 
       <li><p><span class="address">重庆</span><font>gi**45</font></p><p style="width:165px; margin-left:20px;"><span>连环夺宝</span><font>2.000.00元</font></p></li> 
       <li><p><span class="address">陕西</span><font>bux***66</font></p><p style="width:165px; margin-left:20px;"><span>侏儸纪公园</span><font>3,200.00元 </font></p></li> 
       <li><p><span class="address">江苏</span><font>cc**yi</font></p><p style="width:165px; margin-left:20px;"><span>不朽的浪漫</span><font>530.00元</font></p></li> 
       <li><p><span class="address">福建 </span><font>hin**qw</font></p><p style="width:165px; margin-left:20px;"><span>明星97</span><font>560.00元</font></p></li> 
       <li><p><span class="address">贵州</span><font>jhw****3</font></p><p style="width:165px; margin-left:20px;"><span>水果老虎机</span><font>660.00元</font></p></li> 
       <li><p><span class="address">辽宁</span><font>668**io</font></p><p style="width:165px; margin-left:20px;"><span>宝石之轮</span><font>900.00元</font></p></li> 
       <li><p><span class="address">广西</span><font>52s**o</font></p><p style="width:165px; margin-left:20px;"><span>女皇之心</span><font>900.00元</font></p></li> 
       <li><p><span class="address">河南</span><font>pln***tg</font></p><p style="width:165px; margin-left:20px;"><span>雷神</span><font>988.00元</font></p></li> 
       <li><p><span class="address">深圳</span><font>df**lp5</font></p><p style="width:165px; margin-left:20px;"><span>空手道猪</span><font>2,200.00元</font></p></li> 
       <li><p><span class="address">四川</span><font>vvi**i</font></p><p style="width:165px; margin-left:20px;"><span>丛林快讯</span><font>3.000.00元</font></p></li> 
       <li><p><span class="address">天津</span><font>395****rf</font></p><p style="width:165px; margin-left:20px;"><span>花花公子</span><font>38,000.00元</font></p></li> 
       <li><p><span class="address">江苏</span><font>fc***88</font></p><p style="width:165px; margin-left:20px;"><span>冰上曲棍球</span><font>680.00元 </font></p></li> 
       <li><p><span class="address">云南</span><font>632**us</font></p><p style="width:165px; margin-left:20px;"><span>水果老虎机</span><font>500.00元</font></p></li> 
       <li><p><span class="address">深圳</span><font>qs****jn</font></p><p style="width:165px; margin-left:20px;"><span>阿瓦隆2</span><font>798.00元</font></p></li> 
       <li><p><span class="address">福建</span><font>63***ui</font></p><p style="width:165px; margin-left:20px;"><span>疯狂马戏团</span><font>6,000.00元</font></p></li> 
       <li><p><span class="address">北京</span><font>eon**t7</font></p><p style="width:165px; margin-left:20px;"><span>花花公子</span><font>6,000.00元</font></p></li> 
       
      </ul> 
      <ul id="demo2"> 
      
       <li><p><span>河北</span><font>wns1****</font></p><p style="width:165px; margin-left:20px;"><span>亚洲风情</span><font>2300元</font></p></li>
                    <li><p><span>成都</span><font>xjd9****</font></p><p style="width:165px; margin-left:20px;"><span>森林之王</span><font>970元</font></p></li>
                    <li><p><span>云南</span><font>934****</font></p><p style="width:165px; margin-left:20px;"><span>泡泡矿坑</span><font>2600元</font></p></li>
                    <li><p><span>浙江</span><font>ld3*****</font></p><p style="width:165px; margin-left:20px;"><span>黄金版百家乐</span><font>13000元</font></p></li>
                    <li><p><span>江苏</span><font>gyw****</font></p><p style="width:165px; margin-left:20px;"><span>太空堡垒</span><font>6493元</font></p></li>
                    <li><p><span>辽宁</span><font>1fr****</font></p><p style="width:165px; margin-left:20px;"><span>新娘瑞拉</span><font>9000元</font></p></li>
                    <li><p><span>河南</span><font>pyw****</font></p><p style="width:165px; margin-left:20px;"><span>航海时代</span><font>22943元</font></p></li>
                    <li><p><span>贵州</span><font>a34*****</font></p><p style="width:165px; margin-left:20px;"><span>篮球巨星</span><font>49500元</font></p></li>
                    <li><p><span>湖南</span><font>xh2*****</font></p><p style="width:165px; margin-left:20px;"><span>喜福猴年</span><font>5000元</font></p></li>
                    <li><p><span>成都</span><font>xjd9****</font></p><p style="width:165px; margin-left:20px;"><span>奇幻花园</span><font>9970元</font></p></li>
                    <li><p><span>云南</span><font>834****</font></p><p style="width:165px; margin-left:20px;"><span>泡泡矿坑</span><font>32600元</font></p></li>
                    <li><p><span>浙江</span><font>cd3*****</font></p><p style="width:165px; margin-left:20px;"><span>沙滩排球</span><font>53000元</font></p></li>
                    <li><p><span>江苏</span><font>gyw****</font></p><p style="width:165px; margin-left:20px;"><span>舞龙</span><font>16493元</font></p></li>
                    <li><p><span>深圳</span><font>hhd****</font></p><p style="width:165px; margin-left:20px;"><span>杰克高手</span><font>31200元</font></p></li>
                    <li><p><span>广州</span><font>dso*****</font></p><p style="width:165px; margin-left:20px;"><span>牧场咖啡</span><font>94600元</font></p></li>
                    <li><p><span>重庆</span><font>xx3*****</font></p><p style="width:165px; margin-left:20px;"><span>星际争霸战</span><font>43300元</font></p></li>
                    <li><p><span>长沙</span><font>qq65***</font></p><p style="width:165px; margin-left:20px;"><span>疯狂圣诞老人</span><font>21900元</font></p></li>
                    <li><p><span>江苏</span><font>zyl***</font></p><p style="width:165px; margin-left:20px;"><span>太空漫游</span><font>9830元</font></p></li>
                    <li><p><span>常州</span><font>a78***</font></p><p style="width:165px; margin-left:20px;"><span>圣诞大镖客</span><font>11680元</font></p></li>
                    <li><p><span>江西</span><font>up9****</font></p><p style="width:165px; margin-left:20px;"><span>淑女派对</span><font>9430元</font></p></li>
                    <li><p><span>北京</span><font>hjd3*****</font></p><p style="width:165px; margin-left:20px;"><span>糖果大战</span><font>500元</font></p></li>
                    <li><p><span>天津</span><font>6824******</font></p><p style="width:165px; margin-left:20px;"><span>摇滚航道</span><font>200元</font></p></li>
                    <li><p><span>四川</span><font>yuan*****</font></p><p style="width:165px; margin-left:20px;"><span>杰克和吉尔</span><font>1000元</font></p></li>
                    <li><p><span>上海</span><font>cj7*****</font></p><p style="width:165px; margin-left:20px;"><span>哈维斯的晚餐</span><font>600元</font></p></li>
                    <li><p><span>南京</span><font>xjd*****</font></p><p style="width:165px; margin-left:20px;"><span>钱海遨游</span><font>700元</font></p></li>
                    <li><p><span>贵州</span><font>853****</font></p><p style="width:165px; margin-left:20px;"><span>皇家赛马</span><font>860元</font></p></li>
                    <li><p><span>深圳</span><font>hhd*****</font></p><p style="width:165px; margin-left:20px;"><span>暑假时光</span><font>1200元</font></p></li>
                    <li><p><span>广州</span><font>dso*****</font></p><p style="width:165px; margin-left:20px;"><span>大航海时代</span><font>600元</font></p></li>
                    <li><p><span>重庆</span><font>xx3*****</font></p><p style="width:165px; margin-left:20px;"><span>星际争霸战</span><font>300元</font></p></li>
                    <li><p><span>长沙</span><font>qq65***</font></p><p style="width:165px; margin-left:20px;"><span>疯狂圣诞老人</span><font>900元</font></p></li>
                    <li><p><span>江苏</span><font>zyl***</font></p><p style="width:165px; margin-left:20px;"><span>华丽剧场</span><font>830元</font></p></li>
                    <li><p><span>常州</span><font>a78***</font></p><p style="width:165px; margin-left:20px;"><span>圣诞大镖客</span><font>680元</font></p></li>
                    <li><p><span>江西</span><font>em7***</font></p><p style="width:165px; margin-left:20px;"><span>疯狂变色龙</span><font>1000元</font></p></li>
                    <li><p><span>河北</span><font>wns1****</font></p><p style="width:165px; margin-left:20px;"><span>亚洲风情</span><font>2300元</font></p></li>
                    <li><p><span>成都</span><font>xjd9****</font></p><p style="width:165px; margin-left:20px;"><span>森林之王</span><font>970元</font></p></li>
                    <li><p><span>云南</span><font>834****</font></p><p style="width:165px; margin-left:20px;"><span>泡泡矿坑</span><font>2600元</font></p></li>
                    <li><p><span>浙江</span><font>cd3*****</font></p><p style="width:165px; margin-left:20px;"><span>黄金版百家乐</span><font>3000元</font></p></li>
                    <li><p><span>江苏</span><font>gyw****</font></p><p style="width:165px; margin-left:20px;"><span>开心点心</span><font>6493元</font></p></li>
                    <li><p><span>辽宁</span><font>sfr****</font></p><p style="width:165px; margin-left:20px;"><span>新娘瑞拉</span><font>9000元</font></p></li>
                    <li><p><span>河南</span><font>uyw****</font></p><p style="width:165px; margin-left:20px;"><span>航海时代</span><font>943元</font></p></li>
                    <li><p><span>贵州</span><font>a34*****</font></p><p style="width:165px; margin-left:20px;"><span>大丰收</span><font>49500元</font></p></li>
                    <li><p><span>湖南</span><font>xh2*****</font></p><p style="width:165px; margin-left:20px;"><span>喜福猴年</span><font>5000元</font></p></li>
                    <li><p><span>辽宁</span><font>oy6****</font></p><p style="width:165px; margin-left:20px;"><span>金瓶梅</span><font>6934元</font></p></li>
                    <li><p><span>天津</span><font>pin***</font></p><p style="width:165px; margin-left:20px;"><span>特务危机</span><font>3000元</font></p></li>
                    <li><p><span>山东</span><font>754***</font></p><p style="width:165px; margin-left:20px;"><span>太空堡垒</span><font>8000元</font></p></li>
                    <li><p><span>广州</span><font>li1***</font></p><p style="width:165px; margin-left:20px;"><span>星际争霸战</span><font>15364元</font></p></li>
                    <li><p><span>深圳</span><font>hhd*****</font></p><p style="width:165px; margin-left:20px;"><span>暑假时光</span><font>31200元</font></p></li>
                    <li><p><span>广州</span><font>dso*****</font></p><p style="width:165px; margin-left:20px;"><span>春假时光</span><font>11600元</font></p></li>
                    <li><p><span>重庆</span><font>xx3*****</font></p><p style="width:165px; margin-left:20px;"><span>星际争霸战</span><font>6300元</font></p></li>
                    <li><p><span>长沙</span><font>qq65***</font></p><p style="width:165px; margin-left:20px;"><span>异国之夜</span><font>5900元</font></p></li>
                    <li><p><span>江苏</span><font>zyl***</font></p><p style="width:165px; margin-left:20px;"><span>华丽剧场</span><font>36830元</font></p></li>
                    <li><p><span>常州</span><font>a78***</font></p><p style="width:165px; margin-left:20px;"><span>圣诞大镖客</span><font>9680元</font></p></li>
                    <li><p><span>江西</span><font>em7***</font></p><p style="width:165px; margin-left:20px;"><span>疯狂变色龙</span><font>41000元</font></p></li>
                    <li><p><span>河北</span><font>wns1****</font></p><p style="width:165px; margin-left:20px;"><span>亚洲风情</span><font>12300元</font></p></li>
                    <li><p><span>成都</span><font>xjd9****</font></p><p style="width:165px; margin-left:20px;"><span>奇幻花园</span><font>9970元</font></p></li>
                    <li><p><span>云南</span><font>834****</font></p><p style="width:165px; margin-left:20px;"><span>泡泡矿坑</span><font>32600元</font></p></li>
                    <li><p><span>浙江</span><font>cd3*****</font></p><p style="width:165px; margin-left:20px;"><span>沙滩排球</span><font>53000元</font></p></li>
                    <li><p><span>江苏</span><font>gyw****</font></p><p style="width:165px; margin-left:20px;"><span>太空堡垒</span><font>16493元</font></p></li>
                    <li><p><span>深圳</span><font>hhd*****</font></p><p style="width:165px; margin-left:20px;"><span>杰克高手</span><font>31200元</font></p></li>
                    <li><p><span>广州</span><font>dso*****</font></p><p style="width:165px; margin-left:20px;"><span>牧场咖啡</span><font>94600元</font></p></li>
                    <li><p><span>重庆</span><font>xx3*****</font></p><p style="width:165px; margin-left:20px;"><span>星际争霸战</span><font>43300元</font></p></li>
                    <li><p><span>长沙</span><font>qq65***</font></p><p style="width:165px; margin-left:20px;"><span>疯狂圣诞老人</span><font>21900元</font></p></li>
                    <li><p><span>江苏</span><font>zyl***</font></p><p style="width:165px; margin-left:20px;"><span>太空漫游</span><font>9830元</font></p></li>
                    <li><p><span>常州</span><font>a78***</font></p><p style="width:165px; margin-left:20px;"><span>圣诞大镖客</span><font>11680元</font></p></li>
                    <li><p><span>江西</span><font>up9****</font></p><p style="width:165px; margin-left:20px;"><span>淑女派对</span><font>9430元</font></p></li>--&gt; *}&gt;
      </ul> 
     </div> 
     <div style="width:1px; height:77px; position: absolute; left:390px; top:375px; background: #4c1604;float:left;"></div> 
     <div class="scrolls1" id="demo0"> 
      <ul id="demo10"> 
      
                    <li><p><span>成都</span><font>xjd9****</font></p><p style="width:165px; margin-left:20px;"><span>森林之王</span><font>970元</font></p></li>
                    <li><p><span>云南</span><font>934****</font></p><p style="width:165px; margin-left:20px;"><span>泡泡矿坑</span><font>2600元</font></p></li>
                    <li><p><span>浙江</span><font>ld3*****</font></p><p style="width:165px; margin-left:20px;"><span>黄金版百家乐</span><font>13000元</font></p></li>
                    <li><p><span>江苏</span><font>gyw****</font></p><p style="width:165px; margin-left:20px;"><span>太空堡垒</span><font>6493元</font></p></li>
                    <li><p><span>辽宁</span><font>1fr****</font></p><p style="width:165px; margin-left:20px;"><span>新娘瑞拉</span><font>9000元</font></p></li>
                    <li><p><span>河南</span><font>pyw****</font></p><p style="width:165px; margin-left:20px;"><span>航海时代</span><font>22943元</font></p></li>
                    <li><p><span>贵州</span><font>a34*****</font></p><p style="width:165px; margin-left:20px;"><span>篮球巨星</span><font>49500元</font></p></li>
                    <li><p><span>湖南</span><font>xh2*****</font></p><p style="width:165px; margin-left:20px;"><span>喜福猴年</span><font>5000元</font></p></li>
                    <li><p><span>成都</span><font>xjd9****</font></p><p style="width:165px; margin-left:20px;"><span>奇幻花园</span><font>9970元</font></p></li>
                    <li><p><span>云南</span><font>834****</font></p><p style="width:165px; margin-left:20px;"><span>泡泡矿坑</span><font>32600元</font></p></li>
                    <li><p><span>浙江</span><font>cd3*****</font></p><p style="width:165px; margin-left:20px;"><span>沙滩排球</span><font>53000元</font></p></li>
                    <li><p><span>江苏</span><font>gyw****</font></p><p style="width:165px; margin-left:20px;"><span>舞龙</span><font>16493元</font></p></li>
                    <li><p><span>深圳</span><font>hhd****</font></p><p style="width:165px; margin-left:20px;"><span>杰克高手</span><font>31200元</font></p></li>
                    <li><p><span>广州</span><font>dso*****</font></p><p style="width:165px; margin-left:20px;"><span>牧场咖啡</span><font>94600元</font></p></li>
                    <li><p><span>重庆</span><font>xx3*****</font></p><p style="width:165px; margin-left:20px;"><span>星际争霸战</span><font>43300元</font></p></li>
                    <li><p><span>长沙</span><font>qq65***</font></p><p style="width:165px; margin-left:20px;"><span>疯狂圣诞老人</span><font>21900元</font></p></li>
                    <li><p><span>江苏</span><font>zyl***</font></p><p style="width:165px; margin-left:20px;"><span>太空漫游</span><font>9830元</font></p></li>
                    <li><p><span>常州</span><font>a78***</font></p><p style="width:165px; margin-left:20px;"><span>圣诞大镖客</span><font>11680元</font></p></li>
                    <li><p><span>江西</span><font>up9****</font></p><p style="width:165px; margin-left:20px;"><span>淑女派对</span><font>9430元</font></p></li>
                    <li><p><span>北京</span><font>hjd3*****</font></p><p style="width:165px; margin-left:20px;"><span>糖果大战</span><font>500元</font></p></li>
                    <li><p><span>天津</span><font>6824******</font></p><p style="width:165px; margin-left:20px;"><span>摇滚航道</span><font>200元</font></p></li>
                    <li><p><span>四川</span><font>yuan*****</font></p><p style="width:165px; margin-left:20px;"><span>杰克和吉尔</span><font>1000元</font></p></li>
                    <li><p><span>上海</span><font>cj7*****</font></p><p style="width:165px; margin-left:20px;"><span>哈维斯的晚餐</span><font>600元</font></p></li>
                    <li><p><span>南京</span><font>xjd*****</font></p><p style="width:165px; margin-left:20px;"><span>钱海遨游</span><font>700元</font></p></li>
                    <li><p><span>贵州</span><font>853****</font></p><p style="width:165px; margin-left:20px;"><span>皇家赛马</span><font>860元</font></p></li>
                    <li><p><span>深圳</span><font>hhd*****</font></p><p style="width:165px; margin-left:20px;"><span>暑假时光</span><font>1200元</font></p></li>
                    <li><p><span>广州</span><font>dso*****</font></p><p style="width:165px; margin-left:20px;"><span>大航海时代</span><font>600元</font></p></li>
                    <li><p><span>重庆</span><font>xx3*****</font></p><p style="width:165px; margin-left:20px;"><span>星际争霸战</span><font>300元</font></p></li>
                    <li><p><span>长沙</span><font>qq65***</font></p><p style="width:165px; margin-left:20px;"><span>疯狂圣诞老人</span><font>900元</font></p></li>
                    <li><p><span>江苏</span><font>zyl***</font></p><p style="width:165px; margin-left:20px;"><span>华丽剧场</span><font>830元</font></p></li>
                    <li><p><span>常州</span><font>a78***</font></p><p style="width:165px; margin-left:20px;"><span>圣诞大镖客</span><font>680元</font></p></li>
                    <li><p><span>江西</span><font>em7***</font></p><p style="width:165px; margin-left:20px;"><span>疯狂变色龙</span><font>1000元</font></p></li>
                    <li><p><span>河北</span><font>wns1****</font></p><p style="width:165px; margin-left:20px;"><span>亚洲风情</span><font>2300元</font></p></li>
                    <li><p><span>成都</span><font>xjd9****</font></p><p style="width:165px; margin-left:20px;"><span>森林之王</span><font>970元</font></p></li>
                    <li><p><span>云南</span><font>834****</font></p><p style="width:165px; margin-left:20px;"><span>泡泡矿坑</span><font>2600元</font></p></li>
                    <li><p><span>浙江</span><font>cd3*****</font></p><p style="width:165px; margin-left:20px;"><span>黄金版百家乐</span><font>3000元</font></p></li>
                    <li><p><span>江苏</span><font>gyw****</font></p><p style="width:165px; margin-left:20px;"><span>开心点心</span><font>6493元</font></p></li>
                    <li><p><span>辽宁</span><font>sfr****</font></p><p style="width:165px; margin-left:20px;"><span>新娘瑞拉</span><font>9000元</font></p></li>
                    <li><p><span>河南</span><font>uyw****</font></p><p style="width:165px; margin-left:20px;"><span>航海时代</span><font>943元</font></p></li>
                    <li><p><span>贵州</span><font>a34*****</font></p><p style="width:165px; margin-left:20px;"><span>大丰收</span><font>49500元</font></p></li>
                    <li><p><span>湖南</span><font>xh2*****</font></p><p style="width:165px; margin-left:20px;"><span>喜福猴年</span><font>5000元</font></p></li>
                    <li><p><span>辽宁</span><font>oy6****</font></p><p style="width:165px; margin-left:20px;"><span>金瓶梅</span><font>6934元</font></p></li>
                    <li><p><span>天津</span><font>pin***</font></p><p style="width:165px; margin-left:20px;"><span>特务危机</span><font>3000元</font></p></li>
                    <li><p><span>山东</span><font>754***</font></p><p style="width:165px; margin-left:20px;"><span>太空堡垒</span><font>8000元</font></p></li>
                    <li><p><span>广州</span><font>li1***</font></p><p style="width:165px; margin-left:20px;"><span>星际争霸战</span><font>15364元</font></p></li>
                    <li><p><span>深圳</span><font>hhd*****</font></p><p style="width:165px; margin-left:20px;"><span>暑假时光</span><font>31200元</font></p></li>
                    <li><p><span>广州</span><font>dso*****</font></p><p style="width:165px; margin-left:20px;"><span>春假时光</span><font>11600元</font></p></li>
                    <li><p><span>重庆</span><font>xx3*****</font></p><p style="width:165px; margin-left:20px;"><span>星际争霸战</span><font>6300元</font></p></li>
                    <li><p><span>长沙</span><font>qq65***</font></p><p style="width:165px; margin-left:20px;"><span>异国之夜</span><font>5900元</font></p></li>
                    <li><p><span>江苏</span><font>zyl***</font></p><p style="width:165px; margin-left:20px;"><span>华丽剧场</span><font>36830元</font></p></li>
                    <li><p><span>常州</span><font>a78***</font></p><p style="width:165px; margin-left:20px;"><span>圣诞大镖客</span><font>9680元</font></p></li>
                    <li><p><span>江西</span><font>em7***</font></p><p style="width:165px; margin-left:20px;"><span>疯狂变色龙</span><font>41000元</font></p></li>
                    <li><p><span>河北</span><font>wns1****</font></p><p style="width:165px; margin-left:20px;"><span>亚洲风情</span><font>12300元</font></p></li>
                    <li><p><span>成都</span><font>xjd9****</font></p><p style="width:165px; margin-left:20px;"><span>奇幻花园</span><font>9970元</font></p></li>
                    <li><p><span>云南</span><font>834****</font></p><p style="width:165px; margin-left:20px;"><span>泡泡矿坑</span><font>32600元</font></p></li>
                    <li><p><span>浙江</span><font>cd3*****</font></p><p style="width:165px; margin-left:20px;"><span>沙滩排球</span><font>53000元</font></p></li>
                    <li><p><span>江苏</span><font>gyw****</font></p><p style="width:165px; margin-left:20px;"><span>太空堡垒</span><font>16493元</font></p></li>
                    <li><p><span>深圳</span><font>hhd*****</font></p><p style="width:165px; margin-left:20px;"><span>杰克高手</span><font>31200元</font></p></li>
                    <li><p><span>广州</span><font>dso*****</font></p><p style="width:165px; margin-left:20px;"><span>牧场咖啡</span><font>94600元</font></p></li>
                    <li><p><span>重庆</span><font>xx3*****</font></p><p style="width:165px; margin-left:20px;"><span>星际争霸战</span><font>43300元</font></p></li>
                    <li><p><span>长沙</span><font>qq65***</font></p><p style="width:165px; margin-left:20px;"><span>疯狂圣诞老人</span><font>21900元</font></p></li>
                    <li><p><span>江苏</span><font>zyl***</font></p><p style="width:165px; margin-left:20px;"><span>太空漫游</span><font>9830元</font></p></li>
                    <li><p><span>常州</span><font>a78***</font></p><p style="width:165px; margin-left:20px;"><span>圣诞大镖客</span><font>11680元</font></p></li>
                    <li><p><span>江西</span><font>up9****</font></p><p style="width:165px; margin-left:20px;"><span>淑女派对</span><font>9430元</font></p></li>
      </ul> 
      <ul id="demo20"> 
      
                    <li><p><span>成都</span><font>xjd9****</font></p><p style="width:165px; margin-left:20px;"><span>森林之王</span><font>970元</font></p></li>
                    <li><p><span>云南</span><font>934****</font></p><p style="width:165px; margin-left:20px;"><span>泡泡矿坑</span><font>2600元</font></p></li>
                    <li><p><span>浙江</span><font>ld3*****</font></p><p style="width:165px; margin-left:20px;"><span>黄金版百家乐</span><font>13000元</font></p></li>
                    <li><p><span>江苏</span><font>gyw****</font></p><p style="width:165px; margin-left:20px;"><span>太空堡垒</span><font>6493元</font></p></li>
                    <li><p><span>辽宁</span><font>1fr****</font></p><p style="width:165px; margin-left:20px;"><span>新娘瑞拉</span><font>9000元</font></p></li>
                    <li><p><span>河南</span><font>pyw****</font></p><p style="width:165px; margin-left:20px;"><span>航海时代</span><font>22943元</font></p></li>
                    <li><p><span>贵州</span><font>a34*****</font></p><p style="width:165px; margin-left:20px;"><span>篮球巨星</span><font>49500元</font></p></li>
                    <li><p><span>湖南</span><font>xh2*****</font></p><p style="width:165px; margin-left:20px;"><span>喜福猴年</span><font>5000元</font></p></li>
                    <li><p><span>成都</span><font>xjd9****</font></p><p style="width:165px; margin-left:20px;"><span>奇幻花园</span><font>9970元</font></p></li>
                    <li><p><span>云南</span><font>834****</font></p><p style="width:165px; margin-left:20px;"><span>泡泡矿坑</span><font>32600元</font></p></li>
                    <li><p><span>浙江</span><font>cd3*****</font></p><p style="width:165px; margin-left:20px;"><span>沙滩排球</span><font>53000元</font></p></li>
                    <li><p><span>江苏</span><font>gyw****</font></p><p style="width:165px; margin-left:20px;"><span>舞龙</span><font>16493元</font></p></li>
                    <li><p><span>深圳</span><font>hhd****</font></p><p style="width:165px; margin-left:20px;"><span>杰克高手</span><font>31200元</font></p></li>
                    <li><p><span>广州</span><font>dso*****</font></p><p style="width:165px; margin-left:20px;"><span>牧场咖啡</span><font>94600元</font></p></li>
                    <li><p><span>重庆</span><font>xx3*****</font></p><p style="width:165px; margin-left:20px;"><span>星际争霸战</span><font>43300元</font></p></li>
                    <li><p><span>长沙</span><font>qq65***</font></p><p style="width:165px; margin-left:20px;"><span>疯狂圣诞老人</span><font>21900元</font></p></li>
                    <li><p><span>江苏</span><font>zyl***</font></p><p style="width:165px; margin-left:20px;"><span>太空漫游</span><font>9830元</font></p></li>
                    <li><p><span>常州</span><font>a78***</font></p><p style="width:165px; margin-left:20px;"><span>圣诞大镖客</span><font>11680元</font></p></li>
                    <li><p><span>江西</span><font>up9****</font></p><p style="width:165px; margin-left:20px;"><span>淑女派对</span><font>9430元</font></p></li>
                    <li><p><span>北京</span><font>hjd3*****</font></p><p style="width:165px; margin-left:20px;"><span>糖果大战</span><font>500元</font></p></li>
                    <li><p><span>天津</span><font>6824******</font></p><p style="width:165px; margin-left:20px;"><span>摇滚航道</span><font>200元</font></p></li>
                    <li><p><span>四川</span><font>yuan*****</font></p><p style="width:165px; margin-left:20px;"><span>杰克和吉尔</span><font>1000元</font></p></li>
                    <li><p><span>上海</span><font>cj7*****</font></p><p style="width:165px; margin-left:20px;"><span>哈维斯的晚餐</span><font>600元</font></p></li>
                    <li><p><span>南京</span><font>xjd*****</font></p><p style="width:165px; margin-left:20px;"><span>钱海遨游</span><font>700元</font></p></li>
                    <li><p><span>贵州</span><font>853****</font></p><p style="width:165px; margin-left:20px;"><span>皇家赛马</span><font>860元</font></p></li>
                    <li><p><span>深圳</span><font>hhd*****</font></p><p style="width:165px; margin-left:20px;"><span>暑假时光</span><font>1200元</font></p></li>
                    <li><p><span>广州</span><font>dso*****</font></p><p style="width:165px; margin-left:20px;"><span>大航海时代</span><font>600元</font></p></li>
                    <li><p><span>重庆</span><font>xx3*****</font></p><p style="width:165px; margin-left:20px;"><span>星际争霸战</span><font>300元</font></p></li>
                    <li><p><span>长沙</span><font>qq65***</font></p><p style="width:165px; margin-left:20px;"><span>疯狂圣诞老人</span><font>900元</font></p></li>
                    <li><p><span>江苏</span><font>zyl***</font></p><p style="width:165px; margin-left:20px;"><span>华丽剧场</span><font>830元</font></p></li>
                    <li><p><span>常州</span><font>a78***</font></p><p style="width:165px; margin-left:20px;"><span>圣诞大镖客</span><font>680元</font></p></li>
                    <li><p><span>江西</span><font>em7***</font></p><p style="width:165px; margin-left:20px;"><span>疯狂变色龙</span><font>1000元</font></p></li>
                    <li><p><span>河北</span><font>wns1****</font></p><p style="width:165px; margin-left:20px;"><span>亚洲风情</span><font>2300元</font></p></li>
                    <li><p><span>成都</span><font>xjd9****</font></p><p style="width:165px; margin-left:20px;"><span>森林之王</span><font>970元</font></p></li>
                    <li><p><span>云南</span><font>834****</font></p><p style="width:165px; margin-left:20px;"><span>泡泡矿坑</span><font>2600元</font></p></li>
                    <li><p><span>浙江</span><font>cd3*****</font></p><p style="width:165px; margin-left:20px;"><span>黄金版百家乐</span><font>3000元</font></p></li>
                    <li><p><span>江苏</span><font>gyw****</font></p><p style="width:165px; margin-left:20px;"><span>开心点心</span><font>6493元</font></p></li>
                    <li><p><span>辽宁</span><font>sfr****</font></p><p style="width:165px; margin-left:20px;"><span>新娘瑞拉</span><font>9000元</font></p></li>
                    <li><p><span>河南</span><font>uyw****</font></p><p style="width:165px; margin-left:20px;"><span>航海时代</span><font>943元</font></p></li>
                    <li><p><span>贵州</span><font>a34*****</font></p><p style="width:165px; margin-left:20px;"><span>大丰收</span><font>49500元</font></p></li>
                    <li><p><span>湖南</span><font>xh2*****</font></p><p style="width:165px; margin-left:20px;"><span>喜福猴年</span><font>5000元</font></p></li>
                    <li><p><span>辽宁</span><font>oy6****</font></p><p style="width:165px; margin-left:20px;"><span>金瓶梅</span><font>6934元</font></p></li>
                    <li><p><span>天津</span><font>pin***</font></p><p style="width:165px; margin-left:20px;"><span>特务危机</span><font>3000元</font></p></li>
                    <li><p><span>山东</span><font>754***</font></p><p style="width:165px; margin-left:20px;"><span>太空堡垒</span><font>8000元</font></p></li>
                    <li><p><span>广州</span><font>li1***</font></p><p style="width:165px; margin-left:20px;"><span>星际争霸战</span><font>15364元</font></p></li>
                    <li><p><span>深圳</span><font>hhd*****</font></p><p style="width:165px; margin-left:20px;"><span>暑假时光</span><font>31200元</font></p></li>
                    <li><p><span>广州</span><font>dso*****</font></p><p style="width:165px; margin-left:20px;"><span>春假时光</span><font>11600元</font></p></li>
                    <li><p><span>重庆</span><font>xx3*****</font></p><p style="width:165px; margin-left:20px;"><span>星际争霸战</span><font>6300元</font></p></li>
                    <li><p><span>长沙</span><font>qq65***</font></p><p style="width:165px; margin-left:20px;"><span>异国之夜</span><font>5900元</font></p></li>
                    <li><p><span>江苏</span><font>zyl***</font></p><p style="width:165px; margin-left:20px;"><span>华丽剧场</span><font>36830元</font></p></li>
                    <li><p><span>常州</span><font>a78***</font></p><p style="width:165px; margin-left:20px;"><span>圣诞大镖客</span><font>9680元</font></p></li>
                    <li><p><span>江西</span><font>em7***</font></p><p style="width:165px; margin-left:20px;"><span>疯狂变色龙</span><font>41000元</font></p></li>
                    <li><p><span>河北</span><font>wns1****</font></p><p style="width:165px; margin-left:20px;"><span>亚洲风情</span><font>12300元</font></p></li>
                    <li><p><span>成都</span><font>xjd9****</font></p><p style="width:165px; margin-left:20px;"><span>奇幻花园</span><font>9970元</font></p></li>
                    <li><p><span>云南</span><font>834****</font></p><p style="width:165px; margin-left:20px;"><span>泡泡矿坑</span><font>32600元</font></p></li>
                    <li><p><span>浙江</span><font>cd3*****</font></p><p style="width:165px; margin-left:20px;"><span>沙滩排球</span><font>53000元</font></p></li>
                    <li><p><span>江苏</span><font>gyw****</font></p><p style="width:165px; margin-left:20px;"><span>太空堡垒</span><font>16493元</font></p></li>
                    <li><p><span>深圳</span><font>hhd*****</font></p><p style="width:165px; margin-left:20px;"><span>杰克高手</span><font>31200元</font></p></li>
                    <li><p><span>广州</span><font>dso*****</font></p><p style="width:165px; margin-left:20px;"><span>牧场咖啡</span><font>94600元</font></p></li>
                    <li><p><span>重庆</span><font>xx3*****</font></p><p style="width:165px; margin-left:20px;"><span>星际争霸战</span><font>43300元</font></p></li>
                    <li><p><span>长沙</span><font>qq65***</font></p><p style="width:165px; margin-left:20px;"><span>疯狂圣诞老人</span><font>21900元</font></p></li>
                    <li><p><span>江苏</span><font>zyl***</font></p><p style="width:165px; margin-left:20px;"><span>太空漫游</span><font>9830元</font></p></li>
                    <li><p><span>常州</span><font>a78***</font></p><p style="width:165px; margin-left:20px;"><span>圣诞大镖客</span><font>11680元</font></p></li>
                    <li><p><span>江西</span><font>up9****</font></p><p style="width:165px; margin-left:20px;"><span>淑女派对</span><font>9430元</font></p></li>
      </ul> 
     </div> 
     <div style="position: absolute; top:368px;  left:0;">
      <img src="/cl/tpl/xinweinisi3/images/ccx_10.png" alt="">
     </div> 
    </div> 
    <div class="Game_people"> 
     <img class="rww" style="opacity: 0;" src="/cl/tpl/xinweinisi3/images/rw.png"> 
     <img class="buy_pic" src="/cl/tpl/xinweinisi3/images/rw.png" style="opacity: 0;"> 
     <img class="buy_pics" src="/cl/tpl/xinweinisi3/images/rw.png" style="opacity: 0;"> 
     <img class="rw_pics" src="/cl/tpl/xinweinisi3/images/rw.png" style="opacity: 1;"> 
     <img class="buy_pics" src="/cl/tpl/xinweinisi3/images/rw.png" style="opacity: 0;"> 
     <img class="buy_pics" src="/cl/tpl/xinweinisi3/images/rw.png" style="opacity: 0;"> 
    </div> 
   </div> 
  </div>


<script>
    $(function(){
        function nav(btn,div,pic){
            this.btn=btn;
            this.div=div;
            this.pic=pic;
        }
        nav.prototype.pn=function(){
            var s=$(this.btn);
            var d=$(this.div);
            var c=$(this.pic);
            s.mouseenter(function(){
                i=$(this).index();
                s.removeClass('cur');
                $(this).addClass('cur');
                if(i<5){
                    d.css({
                        display:'none'
                    });
                    d.css({
                        opacity:0
                    });
                    d.eq(i).css({
                        display:'block'
                    });
                    setTimeout(function(){
                        d.eq(i).css({
                            opacity:1
                        });
                    },10);
                    c.css({
                        opacity:0
                    });
                    c.eq(i).css({
                        opacity:1
                    });
                    $('.btn_c').removeClass('a-fadeinT');
                    if(i==1){
                        $('.btn_c').addClass('a-fadeinT');
                    }
                }
            })
        }
        var p1=new nav('.Game_left .cl li','.Game_xx .Game_g1','.Game_people img');
        p1.pn();
        var demo0=document.getElementById('demo0');
        var demo10=document.getElementById('demo10');
        var demo20=document.getElementById('demo20');
        var speed=50
        demo20.innerHTML=demo10.innerHTML;

        function Marquee(){
            if(demo20.offsetHeight-demo0.scrollTop<=0)
                demo0.scrollTop-=demo10.offsetHeight
            else{
                demo0.scrollTop++
            }
        }
        var MyMar=setInterval(Marquee,speed)
        demo0.onmouseover=function() {
            clearInterval(MyMar)
        }
        demo0.onmouseout=function() {
            MyMar=setInterval(Marquee,speed)
        }
        Marquee();
    })
</script>





@if($_system_config->is_alert_on == 0)
<script type="text/javascript">
    CsPopup.init(1);
</script>
@endif	
<script>
    $(function(){
        function nav(btn,div,pic){
            this.btn=btn;
            this.div=div;
            this.pic=pic;
        }
        nav.prototype.pn=function(){
            var s=$(this.btn);
            var d=$(this.div);
            var c=$(this.pic);
            s.mouseenter(function(){
                i=$(this).index();
                s.removeClass('cur');
                $(this).addClass('cur');
                if(i<5){
                    d.css({
                        display:'none'
                    });
                    d.css({
                        opacity:0
                    });
                    d.eq(i).css({
                        display:'block'
                    });
                    setTimeout(function(){
                        d.eq(i).css({
                            opacity:1
                        });
                    },10);
                    c.css({
                        opacity:0
                    });
                    c.eq(i).css({
                        opacity:1
                    });
                    $('.btn_c').removeClass('a-fadeinT');
                    if(i==1){
                        $('.btn_c').addClass('a-fadeinT');
                    }
                }
            })
        }
        var p1=new nav('.Game_left .cl li','.Game_xx .Game_g1','.Game_people img');
        p1.pn();
        var demo=document.getElementById('demo');
        var demo1=document.getElementById('demo1');
        var demo2=document.getElementById('demo2');
        var speed=50
        demo2.innerHTML=demo1.innerHTML;

        function Marquee(){
            if(demo2.offsetHeight-demo.scrollTop<=0)
                demo.scrollTop-=demo1.offsetHeight
            else{
                demo.scrollTop++
            }
        }
        var MyMar=setInterval(Marquee,speed)
        demo.onmouseover=function() {
            clearInterval(MyMar)
        }
        demo.onmouseout=function() {
            MyMar=setInterval(Marquee,speed)
        }
        Marquee();
    })
</script>
<script type="text/javascript">
    $(".dzdl").mouseover(function(){
        $(".electronic-down").css({
            "display":"block"
        })
    })
    $(".dzdl").mouseout(function(){
        $(".electronic-down").css({
            "display":"none"
        })
    })
    $(".electronic-down").mouseover(function(){
        $(".electronic-down").css({
            "display":"block"
        })
    })
    $(".electronic-down").mouseout(function(){
        $(".electronic-down").css({
            "display":"none"
        })
    })


</script>

  <style>
    .slides li{ height:545px;}
    .slides li .img{ height:545px;}
    .buyc 
    .buyc ul  {width:630px;height:259px;font-size:0;display:inline-block;margin:0 auto;padding:0;list-style:none}
    .buyc ul li{display: inline-block;
    position: relative;
    margin: 10px 0 0 10px;
    width: 146px;
    height: 115px;
    background: #3a170c;
    color: #ccc;
    font-size: 14px;
    line-height: 20px;
    text-align: center;}
    .buyc ul li:hover:after {
    filter: alpha(opacity=100);
    opacity: 1;
}
    .buyc ul li:before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: transparent;}
    .buyc ul li:after {
    content: '开始游戏';
    position: absolute;
    top: 41px;
    left: 21px;
    width: 110px;
    height: 33px;
    color: #fff;
    background: #e51d2f;
    -webkit-border-radius: 15px;
    -moz-border-radius: 15px;
    border-radius: 15px;
    font-size: 14px;
    line-height: 33px;
    filter: alpha(opacity=0);
    opacity: 0;
    -webkit-transition: all .4s;
    -o-transition: all .4s;
    -moz-transition: all .4s;
    transition: all .4s;}
    .buyc ul li:hover:before {
    background-color: rgba(0,0,0,.8);
    
}
</style> 
<div class="xiam">
    <div class="xiam1">
        <a href="#" class="ckxq">查看详情</a>
        <a href="#" class="qqq">{{ $_system_config->site_domain }} 登入</a>
        <a href="#" class="www">{{ $_system_config->site_domain }} 登入</a>
    </div>
</div>
@endsection
