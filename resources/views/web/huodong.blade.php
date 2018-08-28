
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit">
<title>新葡京娱乐场-优惠活动办理大厅</title>
<link rel="shortcut icon" href="./favicon.ico" type="image/x-icon">
<link type="text/css" rel="stylesheet" href="/hd/css/reset.css"  />
<link type="text/css" rel="stylesheet" href="/hd/css/style.css"  />
<script type="text/javascript" src="/hd/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/hd/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="/hd/js/jeDate/jedate.min.js"></script>
<script type="text/javascript" src="/hd/js/joker.js"></script>
<script type="text/javascript" src="/hd/js/layer.js"></script>
<script type="text/javascript" src="/hd/js/uaredirect.js"></script>
</head>
<body>
<div class="header">
	<div class="headercon w1000">
		<a class="logo" href="#"></a>
		<div class="headtitle"></div>
		@if($_member)
		<a href="{{ route('member.FuYinghdzx') }}"class="query"></a>
	    @else
		<a href="javascript:void(0)" class="query"></a>
	   @endif
	</div>
</div>

<div class="main">
	<div class="itemlist">
        <ul>
            <li>
				<form action="{{ route('member.apply_activity') }}" method="post">
								<input type="hidden" name="activity_id" value="25">
			<a href='javascript:;' class="yh yh20 applybtn"><img src='/hd/editor/attached/20170603161638_46092.png' width='180' height='180'  alt=''/><span></span><em>注册即送88元彩金</em></a>
			<button class="applybtn ajax-submit-without-confirm-btn">申请活动</button>
							</form>
			</li>
			
			<li><a href='javascript:;' class='yh yh5'><img src='/hd/editor/attached/dz.png' width='180' height='180'  alt=''/><span></span><em>电子游艺天天得意彩金</em></a></li>
			
			<li><a href='javascript:;' class='yh yh6'><img src='/hd/editor/attached/dz.png' width='180' height='180'  alt=''/><span></span><em>电子游艺周周亏损彩金</em></a></li>
			
			<li><a href='javascript:;' class='yh yh15'><img src='/hd/editor/attached/20161102150217_88497.png' width='180' height='180'  alt=''/><span></span><em>电子游艺返水加码</em></a></li>
			
			<li><a href='javascript:;' class='yh yh16'><img src='/hd/editor/attached/20161102150405_65961.png' width='180' height='180'  alt=''/><span></span><em>电子游艺组队彩金</em></a></li>
			
			<li><a href='javascript:;' class='yh yh17'><img src='/hd/editor/attached/20161102150437_89137.png' width='180' height='180'  alt=''/><span></span><em>电子游艺超级奖上奖</em></a></li>
			
			<li><a href='javascript:;' class='yh yh1'><img src='/hd/editor/attached/sc.png' width='180' height='180'  alt=''/><span></span><em>新开户首存礼金</em></a></li>
			
			<li><a href='javascript:;' class='yh yh3'><img src='/hd/editor/attached/ty.png' width='180' height='180'  alt=''/><span></span><em>投注体育周周有奖</em></a></li>
			
			<li><a href='javascript:;' class='yh yh2'><img src='/hd/editor/attached/bjl.png' width='180' height='180'  alt=''/><span></span><em>月月大返利</em></a></li>
			
			
            <li><a href="http://messenger.providesupport.com/messenger/xpj77com.html" target=_blank><img src="/hd/images/more.png" height="180" width="180"><span></span></a></li>
		
        </ul>
        <div class="clear"></div>
    </div>
    <div class="tips">温馨提示：请点击对应活动类别申请，提交申请后专员将于10~30分钟内审核办理，提交申请后可以点击审核进度查询！程序最后更新2016/11/2 00:10</div>
    <div class="clear"></div>
</div>

<div class="bottom">
	<div class="w1000">
		<div class="link">
			<ul>
				<li><a href="http://www.xpj77.com/cn/Register" target="_blank" class="l1"></a></li>
                		<li><a href="http://www.xpj77.net/" target="_blank" class="l2"></a></li>				
				<li><a href="http://www-xpj77.com/zh-cn/" target="_blank" class="l3"></a></li>
				<li><a href="http://www.xpj77.com/cn/Mobile" target="_blank" class="l4"></a></li>
				<li><a href="http://www.xpj77.com/cn/youhui/" target="_blank" class="l5"></a></li>
				<li><a href="https://www.google.com.tw/chrome/browser/desktop/" target="_blank" class="l6"></a></li>
			</ul>
		</div>
		<div class="list">
			<div class="bd">
				<ul class="infoList">
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="footer">
	<div class="footerimg w1000"></div>
	<div class="copyright">Copyright © 新葡京娱乐场 Reserved</div>
</div>
@if($_member)
	@else
<div class="modal tccon" id="querycon">
	<a class="layui-layer-close closebtn"></a>
	<a class="tclogo"></a>
    <div class="fg"></div>
	<h2>您好！请登录后查询！</h2>	
</div>
@endif
</body>
</html>
