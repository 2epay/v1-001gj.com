<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>红包活动</title>
<meta name="csrf-token" content="{{ csrf_token() }}">
<link href="{{ asset('/web/css/hongbao/bao.css') }}" rel="stylesheet" type="text/css" />
<script src="{{ asset('/web/css/hongbao/jquery.js') }}"></script>
<script src="{{ asset('/web/css/hongbao/loadhb.js') }}"></script>
    <link rel="stylesheet" type="text/css" href="/hb/css/global.css">
    <link rel="stylesheet" type="text/css" href="/hb/css/layout.css">
    <link rel="stylesheet" type="text/css" href="/hb/css/menu_sideslide.css" media="all and (max-width: 999px)">
    <link rel="stylesheet" type="text/css" href="/hb/css/phone.css" media="all and (max-width: 999px)">
</head>
<body>

<body id="element">
<div id="msg">
<dl>
<dd>×</dd>
<dt><img src="{{ asset('/web/css/hongbao/bighongbao.png') }}" width="150" height="215" /></dt>
</dl>
<span></span>
</div>
<div class="hongbao"></div>
    <div class="content-wrap">
        <!-- ==========banner begin========== -->
        <div class="banner">
           
               <form id="form_envelope" action="" method="">
              
                <br>
                <button type="submit" class="gradient-yellow"><i class="icon icon-envelopes-s"></i>刷新壹拨红包</button>
                <img class="fortuna" src="/hb/images/fortuna.png" alt="">
            </form>
        </div>
        <!-- ==========banner end========== -->
        <!-- ==========main begin========== -->
        <div class="main introduction">
            <div class="main-container">
                <div class="main-top">
                    <div class="clearfix">
                        <div class="winners fr">
                            <div class="text-center">
                                <h3 class="gradient-yellow">中奖会员</h3>
                            </div>

							 <div id="marquee">
                                <div id="marquee1"class="banner1"style="min-height:490px;">
                                  <ul id="scrollobj" onmouseover="_stop()" onmouseout="_start()"></ul>
                                </div>
                            </div>


                        </div>
                        <div class="fl">
                            <div class="title title-small text-left">
                                <h3>活动详情</h3>
                            </div>
                            <p>活动对象：{{ $_system_config->site_name }}全体有效会员。</p>
                            <p>活动时间：<span class="yellow">北京时间长期。</span></p>
                            <p>结束时间：<span class="yellow">等待官网发布。</span></p>
                            <p>活动内容：即日起凡是在{{ $_system_config->site_name }}每天总存款达到<span class="yellow">100</span>元以上，且达到总有效投注500以上。会员皆可在 次日向24小时在线客服申请参与抢红包活动。 千万现金红包将于(北京时间12：00至次日中午12:00限时开抢！)，单包最高<span class="yellow">8888</span>元,参与此活动。快来试试您的运气吧！更多给力现金回馈活动筹备中,敬请关注<span class="yellow">{{ $_system_config->site_name }}</span></p>
                        </div>
                    </div>
                    <table>
                        <thead>
                            <tr>
                                 <th>当日存款</th>
                                <th>参与次数</th>
								 <th>流水限制</th>
                                <th>抽奖时间</th>
                            </tr>
                        </thead>
                        <tbody>
						  @foreach($data as $key => $item)
  <tr>
    <td>{{ $item->min_num }}-{{ $item->max_num }}</td>
    <td>{{ $item->times }}</td>
	@if($key == 0)
    <td rowspan="9">1倍流水</td>
    <td rowspan="9">即抢即送（自动到帐）</td>		
	@endif
  </tr>
  @endforeach
						
						
						
						
						
                        </tbody>
                    </table>
                    <p><span class="yellow">【注意】</span>如果您当日达到参与条件，次日请联系在线客服申请参与抢红包（北京时间00：00至次日23:59）逾期次数清零。</p>
                    <p><span class="yellow">【声明】</span>所有红包礼金由系统自动统计，若有任何异议，以系统派送金额为准，部分套利、违反公司条例会员不在赠送名单之内！</p>
                    <p><span class="yellow">【例如】</span>会员在当天存款满足条件，会员在将获得抢红包的资格，抽中红包后，系统将在30分钟内为您添加</p>
                </div>
                <div>
                    <div class="title">
                        <h3>优惠规则与条款</h3>
                    </div>
                    <p>1.所赠送的红包礼金无需流水，即可提款。</p>
                    <p>2.抢红包采用的是<span class="yellow">北京时间00：00至次日23:59。</span></p>
                    <p>3.如您忘记会员账号/密码，请您联系24小时在线客服协助您取回您的账号信息。</p>
                    <p>4.{{ $_system_config->site_name }}保留对活动的最终解释权；以及在无通知的情况下修改、终止活动的权利；适用于所有优惠。</p>
                </div>
            </div>
        </div>
        <!-- ==========main end========== -->
        <!-- ==========footer begin========== -->
        <div class="footer">
            Copyright&nbsp;&nbsp;&copy;&nbsp;&nbsp;{{ $_system_config->site_name }}&nbsp;&nbsp;Reserved
        </div>
        <!-- ==========footer end========== -->
		<div id="TplFloatPic_0" class="TplFloatSet" style="position: absolute; cursor: pointer; z-index: 1000; top: 150px; left: 5px;" picfloat="left">
        <a href="{{ route('web.activityList') }}" class="a1"></a>
        <a href="javascript: void(0)" onclick="FloatClose(this)" class="a2"></a>
    </div>

    <div id="TplFloatPic_1" class="TplFloatSet" style="position: absolute; cursor: pointer; z-index: 1000; top: 150px; right: 5px;" picfloat="right">
        <a href="{{ $_system_config->service_link }}" target="_blank" class="a1"></a>
        <a href="javascript: void(0)" onclick="FloatClose1(this)" class="a2"></a>
    </div>

    </div>
    <script src="/hb/js/jquery-1.12.4.min.js"></script>
    <script src="/hb/js/jquery.SuperSlide.2.1.1.js"></script>
    <script src="/hb/js/snowfall.jquery.js"></script>
    <script src="/hb/js/float.js"></script>
    <script src="/hb/js/scroll.js"></script>
    <script src="/hb/js/customize.js"></script>
    <script src="/hb/js/classie.js"></script>
    <script src="/hb/js/main.js"></script>

<div class="hidebox"></div>
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
</script>
</body>
</html>
