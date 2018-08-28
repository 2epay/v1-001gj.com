<!--登录模态框-->
    <div class="body-wrap ovh">
    <div class="top">
        <div class="top_z">
            <div class="top_z_s">   <!--{{ $_system_config->site_logo}}-->
                <div class="logo">
                    <a href="{{url('/')}}"><span id="logoId"><img src="/cl/tpl/xinweinisi3/logo.png?=672" alt="" /></span></a>
                </div>
                <div class="wz">
<font size="4" style="position:relative;left:1px;top:70px;color:#FAEB6C;">{{ $_system_config->site_domain }}</font>
                </div>
                <div class="headright">
                    <div class="toplink" style="float:right; margin:4px 0; color:#707070; padding-right:3px;position:relative;">
                        <a class="pzs" href="javascript:void(0)" style="display:none;position:absolute;top:30px;left:0;z-index:9999;left:-150px;"><img src="/cl/tpl/xinweinisi3/images/pzs.png?=672" /> </a>
                        <a style="color:#ff7bfa" href="{{ url('/') }}">设为首页</a> |
                        <a style="color:#ff7150" href="#" rel="sidebar" title="bookmark this page" id="bookmarkme">加入最爱</a> |
                        <a style="color:red" href="javscript:void(0);" class="xs">牌照展示</a> |
                        <a style="color:#fff799" href="{{  route('web.activityList') }}" class="banli">活动办理大厅</a> |
                        <a style="color:#00ff36" href="http://{{ $_system_config->phone2 }}" target="_blank" class="qhb">代理登录</a> |
                        <a style="color:#00e4ff;" @if($_member) href="{{ route('member.apply_agent') }}" @else href="javascript:void(0)" onclick="return layer.msg('您好！请先注册本站会员后注册代理！',{icon:5})" @endif >代理注册</a> |
                        <a class="flag"><img src="/cl/tpl/xinweinisi3/images/aomen.gif?=672"></a>
                        <a class="flag"><img src="/cl/tpl/xinweinisi3/images/china.gif?=672"></a>
                        <a class="flag"><img src="/cl/tpl/xinweinisi3/images/usa.gif?=672"></a>
                    </div>
<!---------------------------------------------------------------------------------------------------------------------------------------------->
@if (Auth::guard('member')->guest())
                    <div class="login" style="margin-top:15px;">
                       <form name="LoginForm" id="LoginForm" action="{{ route('member.login.post') }}" method="POST">
                        <input type="hidden" value="zh-cn" id="langx" name="langx">
                        <input type="hidden" value="FIRST" id="gtype" name="gtype">
                            <div style="  height:60px;width:456px;">

                                <ul style="width:192px; float:left;">
                                    <li style=" height:28px;"><input type="text"   tabindex="1" onblur="if ($('#username').val()==='') $('#username').val('会员账户:')" onfocus="if ($('#username').val()==='会员账户:') $('#username').val('')" value="会员账户:" maxlength="12" name="name" id="username"   style="width:133px;padding-left:5px; color:#fff799; float:left; border:0;height:28px; background: url(/cl/tpl/xinweinisi3/images/ff_10.png?=679) no-repeat"/>
                                        <input  type="button" style="width:45px; float:left; padding-bottom:1px;height:26px; background: url(/cl/tpl/xinweinisi3/images/ff_13.png?=679); border:1px solid #ffc000;" onclick="MM_openBrWindow('{{ $_system_config->service_link }}','forgetPassword','width=420,height=380,top=0,left=0,status=no,toolbar=no,scrollbars=yes,resizable=no,personalbar=no');"/></li>
                                    <li style="margin-top:4px; height:28px;">
                                        
                                        
                                        <input type="text" onfocus="$('#passwd').val('');$('#txtFacade').css('display', 'none');$('#passwd').css('display', '');$('#passwd').focus();" tabindex="2" readonly="readonly" value="密码:" class="input-bg input-attr" id="txtFacade"  style="width:133px;padding-left:5px; color:#fff799; float:left; border:0;height:28px; background: url(/cl/tpl/xinweinisi3/images/ff_10.png?=679) no-repeat">
                                        <input type="password" tabindex="2" onblur="if ($('#passwd').val() === ''){$('#txtFacade').css('display', '');$('#passwd').css('display', 'none');}"  maxlength="12" value="********" name="password" id="passwd"  size="12"  style="display:none;width:133px;padding-left:5px; color:#fff799; float:left; border:0;height:28px; background: url(/cl/tpl/xinweinisi3/images/ff_10.png?=679) no-repeat">
                                        
                                        <input  type="button" style="width:45px; float:left; padding-bottom:1px;height:26px; background: url(/cl/tpl/xinweinisi3/images/ff_13.png?=679); border:1px solid #ffc000;" onclick="MM_openBrWindow('{{ $_system_config->service_link }}','forgetPassword','width=420,height=380,top=0,left=0,status=no,toolbar=no,scrollbars=yes,resizable=no,personalbar=no');"/></li>
                                </ul>
                                <ul style="width:143px; float:left; position:relative;">

                                    <li style=" height:28px;">
                                        <input type="text"  title="( 点选此处产生新验证码 )" tabindex="3" maxlength="4"  size="4" placeholder="验证码" name="captcha" id="vImg" style="width:137px;padding-left:5px; color:#fff799; float:left; border:0;height:28px; background: url(/cl/tpl/xinweinisi3/images/ff_10.png) no-repeat"/>
                                       <a onclick="javascript:re_captcha();"><img src="/zhucereg/yzm.jpg" onfocus="getKey();" pattern="\d{4}" alt="点击更换" id="c2c98f0de5a04167a9e427d883690ff6" style="width:60px; position: absolute; right:8px;top:3px; float:left; padding-bottom:1px;height:20px;border:0" /></a>
                                    </li>

                                    <li style="margin-top:4px; height:28px;"><input type="submit" value="立即登入" class="login-submit modal-login_submit ajax-submit-btn" name="Submit" onclick="aLeftForm1Sub();" style="color:#fff799; width:142px;padding-left:5px;text-align:center; float:left; border:0;height:28px; background: url(/cl/tpl/xinweinisi3/images/ff_10.png?=679) no-repeat"/>

                                   </li>

                                </ul>
                                <ul style=" width:118px;margin-left:3px;  float:left;">

                                    <li style=" height:28px;">
                                        <a  style="width:117px; color:#fff799; float:left; border:0;height:57px; background: url(/cl/tpl/xinweinisi3/images/ff_03.png?=679) no-repeat" href="{{  route('web.register_one') }}"></a>
                                    </li>

                                </ul>

                            </div>
                        </form>
                    </div>
                                <script>
                                    function re_captcha() {
                                        $url = "{{ URL('kit/captcha') }}";
                                        $url = $url + "/" + Math.random();
                                        document.getElementById('c2c98f0de5a04167a9e427d883690ff6').src = $url;
                                        $("#c2c98f0de5a04167a9e427d883690ff6").css("display", "inline");
                                        $("#crPic").css("display", "inline");
                                        $("input[name='captcha']").val("");
                                    }
                                    re_captcha();
                                </script>

                      @else
        <!------------------------------------------------------------------------------------------------------------------------------------------------>  
                        <div class="login" style="margin-top:15px;">

                            <div style="  height:60px;width:456px;">

                                <ul style="float:right">
                                    <span style="color:#fff; float:left; font-size:14px; margin-right:4px;">欢迎您</span>
                                    <span style="color:#fff; float:left; font-size:14px; margin-right:4px;">{{ $_member->name }}</span>
                                    <span style="color:#fff; float:left; font-size:14px; margin-right:4px;">余额：</span>
                                    <span style="color:#fff; float:left; font-size:14px; margin-right:4px;" id="user_money">￥{{ $_member->money }}</span>
                                    <span style="color:#fff; float:left; font-size:14px; margin-right:4px;"><a href="{{ route('member.message_list') }}" style="color:#fff;">站内信</a></span>
                                    <span style="color:#fff; float:left; font-size:14px; margin-right:4px;" id="">{{ $_not_read_message_num }}</span>
                                </ul>
                                <ul style=" float:right; margin-top:10px;">
                                    <a href="{{ route('member.userCenter') }}" style="float:left; color:#fff; font-size:14px;">会员中心</a><span style="float:left; color:#fff; font-size:10px; margin:0 8px;">|</span>
                                    <a href="{{ route('member.indoor_transfer') }}" style="float:left; color:#fff; font-size:14px;">额度转换</a><span style="float:left; color:#fff; font-size:10px; margin:0 8px;">|</span>
                                    <a  href="{{ route('member.qq_pay') }}" style="float:left; color:#fff; font-size:14px;">在线存款</a><span style="float:left; color:#fff; font-size:10px; margin:0 8px;">|</span>
                                    <a href="{{ route('member.member_drawing') }}" style="float:left; color:#fff; font-size:14px;">在线取款</a><span style="float:left; color:#fff; font-size:10px; margin:0 8px;">|</span>
                                    <a href="{{ route('member.logout') }}"
                               onclick="event.preventDefault();document.getElementById('logout-form').submit();"
                               class="quit" title="登出" style="float:left; color:#fff; font-size:14px;">登出</a>
                               <form id="logout-form" action="{{ route('member.logout') }}" method="POST"
                                  style="display: none;">
                                {{ csrf_field() }}
                            </form>

                                </ul>
                            </div>

                    </div>
                        <!-- <script type="text/javascript">
                            function user_money(){
                            $.getJSON("../app/member/getdata.php?callback=?", function (json) {
                                console.log('hksfjs' + json);
                                if (json.close == 1) {
                                        parent.location.href = '/close.php';
                                    }
                                    $("#user_money").html(json.user_money);
                                });
                            }
                            user_money();
                        </script> -->
                    
  @endif
                </div>
            </div>
             <div class="top_z_x container">
                <ul class="menu">
                    <li style="text-align: center;  border-bottom:2px solid #fff799;float:left; margin-right:65px;"><a href="/" id="index"  style="font-size:14px; text-align: center;display: block; padding:5px 0 5px 0; line-height: 18px;"><span style="text-align: center; color:#fff799;">网站首页</span><br/><span style="text-align: center;font-size:12px; color:#fff799;">Home</span></a></li>
                    <li class="hover1" style="text-align: center;  float:left; margin-right:65px;"><a href="{{  route('web.eGame') }}" style="font-size:14px; text-align: center;display: block; padding:5px 0 5px 0; line-height: 18px;"><span style="text-align: center; color:#e60012;">电子游艺</span><br/><span style="text-align: center;font-size:12px; color:#e60012;">Slots</span></a>
                        <ul class="submenu">
                            <li><a  href="{{  route('web.eGame') }}" ><img src="/cl/tpl/xinweinisi3/images/xia/dh_10.png?=672" alt=""/></a></li>
                            <li><a href="{{  route('web.eGame') }}"><img src="/cl/tpl/xinweinisi3/images/xia/dh_03.png?=672" alt=""/></a></li>
                            <li><a href="{{  route('web.eGame') }}"><img src="/cl/tpl/xinweinisi3/images/xia/dh_12.png?=672" alt=""/></a></li>
                            <li><a href="{{  route('web.eGame') }}"><img src="/cl/tpl/xinweinisi3/images/xia/dh_15.png?=672" alt=""/></a></li>
                            <li><a href="{{  route('web.eGame') }}"><img src="/cl/tpl/xinweinisi3/images/xia/dh_17.png?=672" alt=""/></a></li>
                            <li><a href="{{  route('web.eGame') }}"><img src="/cl/tpl/xinweinisi3/images/xia/dh_19.png?=672" alt=""/></a></li>
                            
                            
                        </ul>
                    </li>
                    <li class="hover1" style="text-align: center;  float:left; margin-right:65px;">
                    <a  href="{{  route('web.catchFish') }}" tppabs="G_Link"  style="font-size:14px; text-align: center;display: block; padding:5px 0 5px 0; line-height: 18px;"><span style="text-align: center; color:#e60012;">千炮捕鱼</span><br/><span style="text-align: center;font-size:12px; color:#e60012;">Fishing</span></a>
                    <ul class="submenu" > 
                     <li><a href="{{  route('web.catchFish') }}"><img src="/cl/tpl/xinweinisi3/images/xia/rm_01.png?=672" alt="千炮捕鱼"></a></li> 
                     <li><a href="{{  route('web.catchFish') }}"><img src="/cl/tpl/xinweinisi3/images/xia/rm_02.png?=672" alt="连环夺宝"></a></li> 
                     <li><a href="{{  route('web.catchFish') }}"><img src="/cl/tpl/xinweinisi3/images/xia/rm_03.png?=672" alt="银行抢匪"></a></li> 
                      <li><a href="{{  route('web.catchFish') }}"><img src="/cl/tpl/xinweinisi3/images/xia/rm_04.png?=672" alt="糖果派对"></a></li>
                      
                      <li><a href="{{  route('web.catchFish') }}"><img src="/cl/tpl/xinweinisi3/images/xia/rm_08.png?=672" alt="水果拉霸"></a></li>
                   </ul>
                    </li>
                    <li class="hover1" style="text-align: center;  float:left; margin-right:65px;"><a href="{{  route('web.liveCasino') }}"  style="font-size:14px; text-align: center;display: block; padding:5px 0 5px 0; line-height: 18px;"><span style="text-align: center; color:#fff799;">真人视讯</span><br/><span style="text-align: center;font-size:12px; color:#fff799;">Live casino</span></a>
                        <ul class="submenu"  >
                            <li><a href="{{  route('web.liveCasino') }}" ><img src="/cl/tpl/xinweinisi3/images/xia/dh_11.png?=672" alt=""/></a></li>
                            <li><a href="{{  route('web.liveCasino') }}" ><img src="/cl/tpl/xinweinisi3/images/xia/dh_13.png?=672" alt=""/></a></li>
                            <li><a href="{{  route('web.liveCasino') }}" ><img src="/cl/tpl/xinweinisi3/images/xia/dh_16.png?=672" alt=""/></a></li>
                            <li><a href="{{  route('web.liveCasino') }}" ><img src="/cl/tpl/xinweinisi3/images/xia/dh_18.png?=672" alt=""/></a></li>
                            <li><a href="{{  route('web.liveCasino') }}" ><img src="/cl/tpl/xinweinisi3/images/xia/dh_20.png?=672" alt=""/></a></li>
                            <li><a href="{{  route('web.liveCasino') }}" ><img src="/cl/tpl/xinweinisi3/images/xia/dh_21.png?=672" alt=""/></a></li>
                            <li><a href="{{  route('web.liveCasino') }}" ><img src="/cl/tpl/xinweinisi3/images/xia/dh_26.png?=672" alt=""/></a></li>
                        </ul>
                    </li>
                    <li class="hover1" style="text-align: center;  float:left; margin-right:65px;"><a  href="{{  route('web.esports') }}"  style="font-size:14px; text-align: center;display: block; padding:5px 0 5px 0; line-height: 18px;"><span style="text-align: center; color:#fff799;">体育赛事</span><br/><span style="text-align: center;font-size:12px; color:#fff799;">Sports</span></a>
                        <ul class="submenu" >
                            <li><a href="{{  route('web.esports') }}" style="float:left;"><img src="/cl/tpl/xinweinisi3/images/xia/dh_07.png?=672" alt=""/></a></li>
                            <li><a href="{{  route('web.esports') }}" style="float:left;"><img src="/cl/tpl/xinweinisi3/images/xia/dh_27.png?=672" alt=""/></a></li>
                            <li><a href="{{  route('web.esports') }}" style="float:left;"><img src="/cl/tpl/xinweinisi3/images/xia/dh_09.png?=672" alt=""/></a></li>

                        </ul>
                    </li>
                    <li class="hover1" style="text-align: center;  float:left; margin-right:65px;"><a href="{{  route('web.lottory') }}" style="font-size:14px; text-align: center;display: block; padding:5px 0 5px 0; line-height: 18px;"><span style="text-align: center; color:#fff799;">彩票游戏</span><br/><span style="text-align: center;font-size:12px; color:#fff799;">Lottery</span></a>
                       <ul class="submenu" >
                            <li><a href="{{  route('web.lottory') }}" ><img src="/cl/tpl/xinweinisi3/images/xia/xl_14.png?=672" alt=""/></a></li>
                            <li><a href="{{  route('web.lottory') }}" ><img src="/cl/tpl/xinweinisi3/images/xia/xl_09.png?=672" alt=""/></a></li>
                            <li><a href="{{  route('web.lottory') }}" ><img src="/cl/tpl/xinweinisi3/images/xia/xl_18.png?=672" alt=""/></a></li>
                        </ul>
                    </li>
                    <li class="hover1" style="text-align: center;  float:left; margin-right:65px;"><a href="{{  route('web.activityList') }}" style="font-size:14px; text-align: center;display: block; padding:5px 0 5px 0; line-height: 18px;"><span style="text-align: center; color:#e60012;">优惠活动</span><br/><span style="text-align: center;font-size:12px; color:#e60012;">Promotions</span></a></li>
                    <li class="hover1" style="text-align: center;  float:left; margin-right:65px;" ><a href="{{ route('web.AppXz') }}"   style="font-size:14px; text-align: center;display: block; padding:5px 0 5px 0; line-height: 18px;"><span style="text-align: center; color:#fff799;">APP下载</span><br/><span style="text-align: center;font-size:12px; color:#fff799;">Download</span></a></li>
                    <li class="hover1" style="text-align: center;  float:left;"><a href="javascript:;"  title="在线客服"
                               onclick="javascript:window.open('{{ $_system_config->service_link }}','','width=1024,height=768')" style="font-size:14px; text-align: center;display: block; padding:5px 0 5px 0; line-height: 18px;"><span style="text-align: center; color:#fff799;">在线客服</span><br/><span style="text-align: center;font-size:12px; color:#fff799;">Service</span></a></li>
                </ul>
            </div>
            
            
        </div>
    </div>

<script type="text/javascript">
    $(".xs").mouseover(function(){
        $(".pzs").stop().slideDown();
    });
    $(".xs").mouseout(function(){
        $(".pzs").stop().slideUp();
    });
</script>