@extends('web.layouts.main')
@section('content')
<div class="dd" style="top:390px;">
        <div class="dd_z">
            <div id="banner_img" style="width:100px; height:40px; background: url(/cl/tpl/xinweinisi3/images/dd_03.png?=679) no-repeat;float:left;margin-top:4px;"></div>
             @foreach($_system_notices as $v) <marquee id="mar0" onmouseout="this.start()" onmouseover="this.stop()"style="float:left; color:#fff; font-size:14px; line-height:40px;position:relative;left:10px;" scrollAmount=5 width=964>~{{ $v->title }}~{{ $v->content }}</marquee>  @endforeach
        </div>
    </div>
  <div id="banner_tabs" class="flexslider" style="height:413px; background: url(/cl/tpl/xinweinisi3/images/nr_1.jpg) center">

    </div>
    <style type="text/css">
        .lb {
            height: 415px;
        }
    </style>
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
    
<div class="rr">
    <div class="rr_z">
        <div class="left_z" style="width:232px;height:990px;background:#391002;">
           <ul style="margin-top:30px;">
              <li><a href="/S/gywm" class="dd1"></a></li>
              <li><a href="/S/LXWM" class="dd2"></a></li>
              <li><a href="/S/DLHZ" class="dd3"></a></li>
              <li><a href="/S/CKBZ" class="dd4"></a></li>
              <li><a href="/S/QKBZ" class="dd5"></a></li>
              <li><a href="/S/CJWT" class="dd6"></a></li>
              <li><a href="" class="dd7"></a></li>
          </ul>
          
          <img src="/cl/tpl/xinweinisi3/images/wa_05.png" style=" margin-top:50px">
          
        </div>
        <div class="right_z" style="margin:0;">
            <!-- <div class="top_32">
                <ul>
                    <li style="float:left;  "><a href="javascript:f_com.getPager('-','MAdvertis','AT1');" class="hover_1">关于我们</a></li>
                    <li style="float:left;  "><a href="javascript:f_com.getPager('-','MAdvertis','AT9');" class="hover_1">规则条款</a></li>
                    <li style="float:left;  "><a href="javascript:f_com.getPager('-','MAdvertis','AT4');" class="hover_1" style="background: url(/cl/tpl/xinweinisi3/images/hover1_03.jpg); color:#5f3f18;">合作伙伴</a></li>
                    <li style="float:left;  "><a href="javascript:f_com.getPager('-','MAdvertis','AT2');" class="hover_1">存款帮助</a></li>
                    <li style="float:left;  "><a href="javascript:f_com.getPager('-','MAdvertis','AT3');" class="hover_1">取款帮助</a></li>
                    <li style="float:left;  "><a href="javascript:f_com.getPager('-','MAdvertis','AT6');" class="hover_1">常见问题</a></li>
                </ul>
            </div> -->
            <div class="right xq ">
<div class="right_22" style="height:940px;background:none;border:none">

<div style="margin-left:-40px;">


         <!---------------------------------注册------------------------------------------->
      
      <article id="articles">

<div style="font-size:24px;color:#fefb85;font-weight:bold;padding-bottom:12px;margin-left: 60px;">
        &nbsp;&nbsp;欢迎光临 {{ $_system_config->site_title or 'motoo' }}
      </div> 

      <ul class="highlight02" style="color: white;font-size: 14px;margin-bottom: 5px;margin-left: 60px;"> 
       <li>★2017年下载手机APP，即可参与亿万抢红包彩金。</li> 
       <li>★1元存款 1元取款，MG电子返水1.71%起，最高3.0%！</li> 
       <li>★【独家】支持支付宝、微信、银联在线、在线充值、点卡支付存款(多种支付方式)！</li> 
      </ul> 
      <style>
            #articles tr th{background:#f00;color:#fff;border:2px solid #ff0;padding:0!important;}
            #articles tr td{padding:0!important;border:1px solid #ff0;color:#ff0;line-height:15px;}
          </style> 
          <link rel="stylesheet" type="text/css" href="/zhucereg/registerMember.css" />
      <link rel="stylesheet" type="text/css" href="/zhucereg/registermember1.css" /> 
      <style>.submit-box a.yo-sub-but:hover{ background-color: #d4ad29; }</style> 
      <script type="text/javascript" src="/zhucereg/registermember.js"></script> 
      <script type="text/javascript" src="/zhucereg/wdatepicker.js"></script> 
      <script type="text/javascript">
//从cookie中获取选中的菜单
//var menuId = getCookie();
var pset = new Array();
pset.push({"valid":"1","result":0});
pset.push({"valid":"3","result":0});
pset.push({"valid":"3","result":0});
pset.push({"valid":"0","result":0});
pset.push({"valid":"0","result":0});
pset.push({"valid":"0","result":0});
pset.push({"valid":"0","result":0});
pset.push({"valid":"0","result":0});
pset.push({"valid":"3","result":0});
pset.push({"valid":"3","result":0});
pset.push({"valid":"0","result":0});
pset.push({"valid":"0","result":0});
pset.push({"valid":"0","result":0});
pset.push({"valid":"7","result":0});
pset.push({"valid":"7","result":0});
</script> 
      <div class="yo-register yo-sm-reg" id="registerMemberYoReg"> 
       <script type="text/javascript">if(!(typeof registerMemberYoRegVal == 'undefined')){$("#registerMemberYoReg").removeClass("yo-sm-reg").addClass("yo-md-reg");}</script> 
       <div class="yo-reg-center"> 
        <div class="yo-r-main"> 
        <form method="POST" action="{{ route('web.post_register_one') }}">  
     <input type="hidden" name="i_code" value="{{ $i_code }}">
           <legend class="r-zhzc">注册账号</legend> 
           <div class="yo-rbox-cen"> 
            <div class="reg-box"> 
             <span class="joinus-label">介绍人：</span> 
             <input class="joinus-input"type="text" readonly="readonly" name="t_name" value=""  size="15" maxlength="20" />
             
            </div> 
            <div class="reg-box"> 
             <span class="joinus-label"><span class="red-sign">*</span>登录账号：</span> 
             <input class="joinus-input" type="text" name="name" value="{{ $register_name }}" id="account2" onkeyup="value=value.replace(/[^0-9a-z]/ig,'')" onblur="commomCheckAndValidate(this,13,ACCOUNT_WORDS.WORD,ACCOUNT_WORDS.WORDSREQ.REQ2,ACCOUNT_WORDS.WORDSREQ.REQ2,ACCOUNT_WORDS.WORDSCORRECT);" maxlength="12" placeholder="请输入您的账号" /> 
             <p class="y-warn-msg t-tipmsg" style="margin-left:15px">帐号为字母开头，6-12位的字母与数字组合！</p> 
            </div> 
            <div class="reg-box"> 
             <span class="joinus-label"><span class="red-sign">*</span>登录密码：</span> 
             <div class="yo-pass-box"> 
              <input class="joinus-input" type="password" name="password" id="password2" onkeyup="value=value.replace(/[^0-9a-zA-Z]/ig,'')" onblur="check_password(this)" onpaste="return false" onselectstart="return false" maxlength="12" placeholder="请输入您的密码" /> 
              <a class="yo-mm-yc" href="javascript:;"></a> 
             </div> 
             <p class="y-warn-msg t-tipmsg" style="margin-left:15px">密码为6-12位字母与数字的组合！</p> 
            </div> 
            <div class="reg-box"> 
             <span class="joinus-label"><span class="red-sign">*</span>确认密码：</span> 
             <div class="yo-pass-box"> 
              <input class="joinus-input" type="password" name="password_confirmation" id="qurenPasswrod" value="" onkeyup="value=value.replace(/[^0-9a-zA-Z]/ig,'')" onblur="check_qurenPasswrod(this)" onpaste="return false" onselectstart="return false" maxlength="12" placeholder="请确认您的密码" /> 
              <a class="yo-mm-yc" href="javascript:;"></a> 
             </div> 
             <p class="y-warn-msg t-tipmsg" style="margin-left:15px">请确认您的密码!</p> 
            </div> 
           </div> 
          </fieldset> 
          <fieldset> 
           <legend class="r-hyzl">会员资料</legend> 
           <div class="yo-rbox-cen"> 
            <div class="reg-box"> 
             <span class="joinus-label"> <span class="red-sign">*</span>真实姓名： </span> 
             <input class="joinus-input" type="text" name="real_name" id="realName" onblur="commomCheckAndValidate(this,2,REALNAME_WORDS.WORD,REALNAME_WORDS.WORDSREQ.REQ1,REALNAME_WORDS.WORDSREQ.REQ3,REALNAME_WORDS.WORDSCORRECT);" maxlength="30" placeholder="请输入您的真实姓名" /> 
             <p class="y-warn-msg t-tipmsg" style="margin-left:15px">必须与您的银行账户名称相同，否则不能出款！</p> 
            </div> 
            <div class="reg-box"> 
             <span class="joinus-label"> <span class="red-sign">*</span>手机号码： </span> 
             <input class="joinus-input" type="text" name="phone" id="phone" onkeyup="value=value.replace(/[^0-9]/ig,'')" onblur="commomCheckAndValidate(this,8,PHONE_WORDS.WORD,PHONE_WORDS.WORDSREQ.REQ1,PHONE_WORDS.WORDSREQ.REQ3,PHONE_WORDS.WORDSCORRECT);" maxlength="11" placeholder="请输入您的手机号码" /> 
             <p class="y-warn-msg t-tipmsg" style="margin-left:15px">取回登入密码的唯一途径，请务必真实！</p> 
            </div> 
            <div class="reg-box"> 
             <span class="joinus-label"> <span class="red-sign">*</span>取款密码： </span> 
             <div class="yo-pass-box"> 
              <input class="joinus-input yo-qkmm" type="password" name="qk_pwd" value="" id="HiddenInput"  autocomplete="off" unselectable="on" onpaste="return false" onselectstart="return false" maxlength="6" placeholder="请您输入6位纯数字取款密码" /> 
              <a class="yo-mm-yc" href="javascript:;"></a> 
              <!--div class="yo-keyboard"> 
               <div class="yo-shur"> 
                <input type="text" name="drawMoneyPwd1" id="drawMoneyPwd1" value="" readonly="readonly" /> 
                <input type="text" name="drawMoneyPwd2" id="drawMoneyPwd2" value="" readonly="readonly" /> 
                <input type="text" name="drawMoneyPwd3" id="drawMoneyPwd3" value="" readonly="readonly" /> 
                <input type="text" name="drawMoneyPwd4" id="drawMoneyPwd4" value="" readonly="readonly" /> 
        <input type="text" name="drawMoneyPwd5" id="drawMoneyPwd5" value="" readonly="readonly" /> 
                <input type="text" name="drawMoneyPwd6" id="drawMoneyPwd6" value="" readonly="readonly" /> 
               </div> 
               <div class="yo-number"> 
                <span value="6">6</span> 
                <span value="7">7</span> 
                <span value="8">8</span> 
                <span value="9">9</span> 
                <span value="2">2</span> 
                <span value="3">3</span> 
                <span value="4">4</span> 
                <span value="5">5</span> 
                <span value="0">0</span> 
                <span value="1">1</span> 
                <span class="yo-k-qc" value="-1">重置</span> 
               </div> 
              </div--> 
             </div> 
             <!--p class="y-warn-msg  t-tipmsg" style="margin-left:15px">取款时要用到的密码，非常重要，请务必牢记！</p--> 
            </div> 
           </div> 
          </fieldset> 
          <fieldset> 
           <legend class="r-aqjc">安全检查</legend> 
           <div class="yo-rbox-cen"> 
           <div class="reg-box">

              <span class="joinus-label"><span class="red-sign">*</span>验证码：</span>
              <div class="yo-yzmbox">
                <input class="joinus-input" type="text" 
                  name="captcha"  id="zhuceYm" 
                   maxlength="5" placeholder="请输入验证码">
                <img id='c2c98f0de5a04167a9e427d883690ff68' src="/zhucereg/yzm.jpg" 
                     align="absmiddle" onclick="javascript:re_captcha_re();"
                     alt="( 点选此处产生新验证码 )">
              </div>
                            <p class="t-tipmsg"></p>
            
 </div>
            <script>
                function re_captcha_re() {
                    $url = "{{ URL('kit/captcha') }}";
                    $url = $url + "/" + Math.random();
                    document.getElementById('c2c98f0de5a04167a9e427d883690ff68').src=$url;
                }
                re_captcha_re();
            </script>
            <div class="reg-box yo-agreement"> 
      
                           
             <span class="joinus-label"> <input type="checkbox" name="check1" id="check1" checked="checked" value="Y" onclick="check_agree(this);" /> </span> 
             <h6>我确定所提供的信息准确，并已满18周岁，我已阅读并接受（<a class="yo-c-link yo-tkxy" href="javascript:;">相关条款和隐私协议</a>）。</h6> 
            </div>   <input type="checkbox" class="checkbox" checked="checked" name="check2" value="2"  style="width:0px;height=0px;">
            <div class="reg-box submit-box"> 
             <a class="yo-sub-but ajax-submit-without-confirm-btn-reg account_save" href="javascript:;" >提交信息</a> 
             <p>已有账号，<a class="yo-c-link" href="javascript:;" onclick="javascript:window.location.href = '#';">直接登录</a></p>
            </div> 
           </div> 
          </fieldset> 
         </form> 
        </div> 
      <div class="yo-r-bot" style="background:#3F2123;">
        <h6>备注：</h6>
        <ol>
          <li>标记有<span class="red-sign">*</span>者为必填项目。</li>
          <li>取款密码为取款金额时的凭证，请会员务必填写牢记。</li>
          <li>温馨提示：注册时如遇到同名或注册不了等其它问题请联系在线客服，我们会第一时间为您解决好！</li>
        </ol>
      </div>
       </div> 
      </div> 
      <!--协议弹框 begin--> 
      <div id="UserAgree" class="yo-tc-body"> 
       <div class="yo-tc-yhxy"> 
        <div class="yo-t-title"> 
         <h1>用户协议</h1> 
         <a class="yo-tc-cloes" href="javascript:;">关闭</a> 
        </div> 
        <div class="yo-t-center"> 
         <div class="yhxy-c-text"> 
          <span style="font-size:18px;color:#FF3300">&nbsp;&nbsp;立即开通本公司游戏账户，享受最优惠的各项红利！</span>
          <ul> 
           <li>本公司只接受年龄已满18岁的客户申请，同时我们保留客户提供其年龄证明的权利。</li> 
           <li>在公司进行注册时所提供的全部信息必须准确无误，在使用借记卡或信用卡时，持卡人的姓名必须与在网站上注册时的一致。</li> 
           <li>在开户后进行一次有效存款，即成为本公司永久有效会员！</li> 
           <li>成为本站有效会员后，客户可随时通过电邮、联系在线客服、或在本公司站点上留言、联系客服等方式，随时向本公司提供最新的个人资料。</li> 
           <li>本公司如发现个别会员有重复申请账号行为时，本公司有权将这些账户视为一个联合账户。本公司保留取消、收回会员所有优惠红利，以及优惠红利所产生的盈利之权利。本公司系统严格要求玩家、住址、电邮、电话号码、支付卡/信用卡均为唯一性，任何共享计算机环境 (例如:网吧、其他公共用计算机等)只能够拥有一个会员账号，各项优惠只适用于每位客户在本公司站点唯一的账户。</li> 
           <li>本公司是提供互联网投注服务的机构。请会员在注册前参考当地政府的法律，在博彩不被允许的地区，如有会员在本公司注册、投注，均为会员个人行为，本公司不负责、承担任何相关联带责任。</li> 
           <li>无论是个人或是团体，如有任何威胁、滥用本公司优惠的行为，本公司将保留权利取消、收回由优惠产生的红利，并保留权利追讨最高50%手续费。</li> 
           <li>所有本公司游戏娱乐站点的优惠是特别为玩家而设，在玩家注册信息有争议时，为确保双方利益、杜绝身份盗用行为，本公司保留权利要求客户向我们提供充足有效的文件， 并以各种方式辨别客户是否符合资格享有我们的任何优惠。</li> 
           <li>客户一经注册开户，将被视为接受所有颁布在本以公司互联网投注网站上的规则与条例。</li> 
          </ul> 
          <p class="star">本公司是使用富赢网络（www.fywl8.com）所提供的在线娱乐软件，如发现个别会员在同系统的多个娱乐城上开设多个会员账户，并进行套利下注,经核实后,本公司将冻结参与的会员账号并将所有下注盈利取消！</p> 
         </div> 
        </div> 
        <div class="yo-t-bot"> 
         <a href="javascript:;" class="yo-tc-cloes">我已届满合法博彩年龄，且同意各项开户条约。</a> 
        </div> 
       </div> 
      </div> 
      <!--协议弹框 end--> 
















  <script type="text/javascript">
  $(".yo-qkmm,yo-shur,.yo-number").click(function(ev){
    ev.stopPropagation();
    $(".yo-keyboard").show();
    $(document).unbind("keyup");
    commonCheckName($("#HiddenInput")[0],9,QKPASS_WORDS.WORD,QKPASS_WORDS.WORDSREQ.REQ2,QKPASS_WORDS.WORDSERROR,QKPASS_WORDS.WORDSCORRECT);//校验密码
    $(document).keyup(function(event){  
      var event = event || window.event || arguments.callee.caller.arguments[0];
      var numberArr ={"48":0,"49":1,"50":2,"51":3,"52":4,"53":5,"54":6,"55":7,"56":8,"57":9,"96":0,"97":1,"98":2,"99":3,"100":4,"101":5,"102":6,"103":7,"104":8,"105":9};     
            if(numberArr[event.keyCode] == 0 || numberArr[event.keyCode]){
              $(".yo-shur input").each(function(i){
          if($(this).val() == ""){
          $(this).val(numberArr[event.keyCode]);  
              if(i == 3){
              $("#HiddenInput").val($(".yo-shur input")[0].value+$(".yo-shur input")[1].value+$(".yo-shur input")[2].value+$(".yo-shur input")[3].value);
        $(".yo-shur input").val('');
          $(".yo-keyboard").hide();
          commonCheckName($("#HiddenInput")[0],9,QKPASS_WORDS.WORD,QKPASS_WORDS.WORDSREQ.REQ2,QKPASS_WORDS.WORDSERROR,QKPASS_WORDS.WORDSCORRECT);//校验密码
          $(document).unbind("keyup");
              }
              return false;
          }                   
          });
            }
       });  
  })
  $(".yo-tkxy").click(function(){
    $("#UserAgree").show();
  })
  $(".yo-tc-cloes").click(function(){
    $(this).parents("#UserAgree").hide();
  })
  $(".yo-number span").click(function(e){
  e.stopPropagation();
  if($(this).attr("value") == "-1"){
    $(".yo-shur input,#HiddenInput").val('');
    commonCheckName($("#HiddenInput")[0],9,QKPASS_WORDS.WORD,QKPASS_WORDS.WORDSREQ.REQ2,QKPASS_WORDS.WORDSERROR,QKPASS_WORDS.WORDSCORRECT);//校验密码
  }else{
    var  value = $(this).attr("value");
      $(".yo-shur input").each(function(i){
        if($(this).val() == ""){
        $(this).val(value); 
            if(i == 3){
            $("#HiddenInput").val($(".yo-shur input")[0].value+$(".yo-shur input")[1].value+$(".yo-shur input")[2].value+$(".yo-shur input")[3].value);
      $(".yo-shur input").val('');
        $(".yo-keyboard").hide();
        commonCheckName($("#HiddenInput")[0],9,QKPASS_WORDS.WORD,QKPASS_WORDS.WORDSREQ.REQ2,QKPASS_WORDS.WORDSERROR,QKPASS_WORDS.WORDSCORRECT);//校验密码
        $(document).unbind("keyup");
            }
            return false;
        }                   
      });     
  }
  });
  $(document).on('click',function(e){
    $(".yo-shur input").val('');
    $(".yo-keyboard").hide(); 
    $(document).unbind("keyup");
    });
    $(".yo-mm-xs,.yo-mm-yc").click(function(){
      if($(this).prev().attr("type") == "password"){
        $(this).prev()[0].type = "text";
        $(this).removeClass().addClass("yo-mm-xs");
        return false;
      }else{
        $(this).prev()[0].type = "password";
        $(this).removeClass().addClass("yo-mm-yc");
        return false;
      }
    });
    $("input[name='idPassportNoType']").click(function(){
      commomCheckAndValidate($("#idPassportNo")[0],7,PAPSSPORT_WORDS.WORD,PAPSSPORT_WORDS.WORDSREQ.REQ1,PAPSSPORT_WORDS.WORDSREQ.REQ3,PAPSSPORT_WORDS.WORDSCORRECT);
    });
</script> 
</article>


      
      
      <!--------------------------------结束-------------------------------------------->
    
    </div>


 </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript" src="/cl/tpl/commonFile/js/pluging/jquery.validate.min.js?=679"></script>
<script type="text/javascript" src="/cl/tpl/commonFile/js/tools/password_strength.js?=679"></script>

@endsection