<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>优云宝支付测试</title>
<link href="{{ asset('web/css/member/css/member.css') }}" rel="stylesheet" />
<link href="/web/css/vendor.css" rel="stylesheet">
<link rel="stylesheet" href="/cl/tpl/xinweinisi3/ver2/js/aomenbaliren.css?=672"/>
<link rel="stylesheet" href="/cl/tpl/xinweinisi3/css/index.css?=672"/>
<script type="text/javascript" src="/web/js/jquery-1.8.3.min.js"></script>
<style type="text/css">
html,body {
	width: 100%;
	min-width: 100%;
	max-width: 100%;
}
* {
	box-sizing: border-box;
	text-align: left;
}
#main-container-in-iframe {
    width: 700px;
    margin: auto;
}
.hide-border{
	border: 0;
}
.bg-ali{
	width: 40%;
	background: url(/images/bg-alipay.png) no-repeat;
	float: left;
	border: 1px solid #80C5FF;
	padding: 6px;
	background-size: cover;
}
.bg-wc{
	width: 40%;
	background: url(/images/bg-wechat.png) no-repeat;
	float: right;
	border: 1px solid #80C5FF;
	padding: 6px;
    background-size: cover;	
}
</style>
</head>

<body>
<div id="main-container-in-iframe">
	<div class="module-main" style="height: 630px; overflow: auto;margin-top:20px">
		<form class="form-horizontal" name="myform" action="http://pay1.youyunnet.com/pay/" method="post">
		<!-- <form name="myform" action="{ { route('member.post_payment') }}" method="post"> -->
			<div class="form-group">
				<label class="col-xs-2 control-label">支付金额:</label>
				<div class="col-xs-10">
					<input class="form-control" type="number" name="money" id="money">
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-2  control-label">支付类型:</label>
				<div class="col-xs-10">
					<div class="bg-ali col-md-4">
				  		<input name="lb" type="radio" value="1" checked="checked" />支付宝
			    	</div>
			    	<div class="bg-wc col-md-4">
			      		<input type="radio" name="lb" value="3" />微信
			    	</div>
				</div>
			</div>
		<table width="524" border="0" align="center" cellpadding="10" cellspacing="0">
		  <tr>
		    <!-- <td>商户APPID</td> -->
		    <td><label>
		      <input name="pid" type="hidden" id="pid" value="{{ $_SystemConfig->payment_id }}" /> <!-- 3065859557  -->
		      <!-- 请先<a href="http://www.youyunnet.com?reg=ok" target="_blank">申请开户</a>    </label></td> -->
		  </tr>
		  <!-- <tr>
		      <td>
		      	支付金额: 
		      </td>
		      <td>
		  		<input type="number" name="money">
		      </td>
		  </tr> -->
		  <tr>
		    <!-- <td>支付订单号</td> -->
		    <td><input name="data" type="hidden" id="data" value="888522211221455" />
		    <!-- 50个字符</td> -->
		  </tr>
		  <tr>
		    <!-- <td>支付成功后跳转</td> -->
		    <!-- <td><label> -->
		      <input name="url" type="hidden" id="url" value="http://001gj.com/member/payment_response" />
		    <!-- </label></td> -->
		  </tr>
		  <!-- <tr>
		    <td>支付类型</td>
		    <td>
		    	<div class="bg-ali">
			  		<input name="hidden" type="radio" value="1" checked="checked" />支付宝
		    	</div>
		    	<div class="bg-wc">
		      		<input type="radio" name="lb" value="3" />微信
		    	</div>
		    　</td>
		  </tr> -->
		  <!-- <tr>
		    <td>&nbsp;</td>
		    <td><label>
		      <input type="submit" name="Submit" value="确认" />
		    </label></td>
		  </tr> -->
		</table>
			<div class="form-group">
				<label class="col-xs-2 control-label">&nbsp;</label>
				<div class="col-xs-10">
					<button type="submit" class="btn btn-primary form-control ajax-submit-without-confirm-btn">提交</button>
				</div>
			</div>
		</form>
	</div>
</div>
<script>
// $.ajax({
//   type: "POST",
//   url: 'http://pay1.youyunnet.com/pay/',
//   data: data,
//   success: success,
//   dataType: dataType
// });
</script>
<!-- /pay/?pid=2931935146&amp;data=15060386573&amp;money=0.1&amp;url=/demo.html
<iframe src="http://pay1.youyunnet.com/pay/get.php?pid=3065859557&data=4321232" 
width="100%" height="330" frameborder="no" border="0" scrolling="no" allowtransparency="yes">
</iframe> -->
</body>
</html>
