<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>扫码支付</title>
    <meta charset="utf-8">
	<script type="text/javascript" src="/js/jquery-1.8.0.js"></script>
	<script type="text/javascript" src="/js/jquery.qrcode.js"></script>
	<script type="text/javascript" src="/js/utf.js"></script>
<style type="text/css">
    	@charset "UTF-8";
html {font-size:62.5%;font-family:'helvetica neue',tahoma,arial,'hiragino sans gb','microsoft yahei','Simsun',sans-serif}
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,code,form,fieldset,legend,input,button,textarea,p,blockquote,th,td,hr {margin:0;padding:0}
body{line-height:1.333;font-size:12px}
h1,h2,h3,h4,h5,h6{font-size:100%;font-family:arial,'hiragino sans gb','microsoft yahei','Simsun',sans-serif}
input,textarea,select,button{font-size:12px;font-weight:normal}
input[type="button"],input[type="submit"],select,button{cursor:pointer}
table {border-collapse:collapse;border-spacing:0}
address,caption,cite,code,dfn,em,th,var {font-style:normal;font-weight:normal}
li {list-style:none}
caption,th {text-align:left}
q:before,q:after {content:''}
abbr,acronym {border:0;font-variant:normal}
sup {vertical-align:text-top}
sub {vertical-align:text-bottom}
fieldset,img,a img,iframe {border-width:0;border-style:none}
img{-ms-interpolation-mode:bicubic}
textarea{overflow-y:auto}
legend {color:#000}
a:link,a:visited {text-decoration:none}
hr{height:0}
label{cursor:pointer}
.clearfix:after {content:"\200B";display:block;height:0;clear:both}
.clearfix {*zoom:1}
a{color:#328CE5}
a:hover{color:#2b8ae8;text-decoration:none}
a.hit{color:#C06C6C}
a:focus {outline:none}
.hit{color:#8DC27E}
.txt_auxiliary{color:#A2A2A2}
.clear {*zoom:1}
.clear:before,.clear:after {content:"";display:table}
.clear:after {clear:both}
body,.body
{background:#f7f7f7;height:100%}
.mod-title
{height:60px;line-height:60px;text-align:center;border-bottom:1px solid #ddd;background:#fff}
.mod-title .ico-wechat
{display:inline-block;width:41px;height:36px;vertical-align:middle;margin-right:7px}
.mod-title .text
{font-size:20px;color:#333;font-weight:normal;vertical-align:middle}
.mod-ct
{width:610px;padding:0 135px;margin:0 auto;margin-top:15px;background:#fff;text-align:center;color:#333;border:1px solid #e5e5e5;border-top:none}
.mod-ct .order
{font-size:20px;padding-top:30px}
.mod-ct .amount
{font-size:48px;margin-top:20px}
.mod-ct .qr-image
{margin-top:30px}
.mod-ct .qr-image img
{width:230px;height:230px}
.mod-ct .detail
{margin-top:60px;padding-top:25px}
.mod-ct .detail .arrow .ico-arrow
{display:inline-block;width:20px;height:11px;}
.mod-ct .detail .detail-ct
{display:none;font-size:14px;text-align:right;line-height:28px}
.mod-ct .detail .detail-ct dt
{float:left}
.mod-ct .detail-open
{border-top:1px solid #e5e5e5}
.mod-ct .detail .arrow
{padding:6px 34px;border:1px solid #e5e5e5}
.mod-ct .detail .arrow .ico-arrow
{display:inline-block;width:20px;height:11px;}
.mod-ct .detail-open .arrow .ico-arrow
{display:inline-block;width:20px;height:11px;}
.mod-ct .detail-open .detail-ct
{display:block}
.mod-ct .tip
{margin-top:40px;border-top:1px dashed #e5e5e5;padding:30px 0;position:relative}
.mod-ct .tip .ico-scan
{display:inline-block;width:56px;height:55px;background:url("/images/wechat-pay.png") 0 0 no-repeat;vertical-align:middle;*display:inline;*zoom:1}
.mod-ct .tip .tip-text
{display:inline-block;vertical-align:middle;text-align:left;margin-left:23px;font-size:16px;line-height:28px;*display:inline;*zoom:1}
.mod-ct .tip .dec
{display:inline-block;width:22px;height:45px;position:absolute;top:-23px}
.mod-ct .tip .dec-left
{background-position:0 -55px;left:-136px}
.mod-ct .tip .dec-right
{background-position:-25px -55px;right:-136px}
.foot
{text-align:center;margin:30px auto;color:#888888;font-size:12px;line-height:20px;font-family:"simsun"}
.foot .link
{color:#0071ce}
    </style></head>


<body>
<div class="body">
	<h1 class="mod-title">
	<span class="text"><?php echo $payway;?>支付</span>
	</h1>
	<div class="mod-ct">
		<div class="order">
		</div>
		<div class="amount">
			<span>￥</span><?php echo sprintf('%.2f', $return_data['order_amt']/100);?>		</div>
		<div class="qr-image" style="">
              
            	<div style="width:230px;height:230px;margin: 0 auto;" id="showqrcode"></div>
		</div>
		<!--detail-open 加上这个类是展示订单信息，不加不展示-->
		<div class="detail detail-open" id="orderDetail" style="">
			<dl class="detail-ct" style="display: block;">				
				
				<dt>交易单号</dt>
				<dd id="billId"><?php echo $return_data['order_id'];?></dd>
				<dt>创建时间</dt>
				<dd id="createTime"><?php echo date("Y-m-d H:i:s");?></dd>
			</dl>			
		</div>
		<div class="tip">
			<span class="dec dec-left"></span>
			<span class="dec dec-right"></span>
			<div class="ico-scan">
			</div>
			<div class="tip-text">
				<p>
					用<?php echo $payway;?>扫一扫
				</p>
				<p>
					扫描二维码完成支付
				</p>
			</div>
		</div>
	</div>
	<div class="foot">
		<div class="inner">
			<p>
				
			</p>
			
		</div>
	</div>
</div>
<script>

function sQrcode(qdata){

	$("#showqrcode").empty().qrcode({		// 调用qQcode生成二维码
			render : "canvas",    			// 设置渲染方式，有table和canvas，使用canvas方式渲染性能相对来说比较好
			text : qdata,    				// 扫描了二维码后的内容显示,在这里也可以直接填一个网址或支付链接
			width : "200",              	// 二维码的宽度
			height : "200",             	// 二维码的高度
			background : "#ffffff",     	// 二维码的后景色
			foreground : "#000000",     	// 二维码的前景色
			src: ""    						// 二维码中间的图片
		});	
		
}	
	
$(document).ready(function(){
	sQrcode('<?php echo $return_data['pay_url'];?>');
});
var d=$("#billId").html();
setInterval(function(){
  $.ajax({
	url:'/pay/houtai',
	type: "post", 		 
	//dataType: "json",  
	data: {out_trade_no:d},  				
	async : true,
	success: function(res){
		if(res=='2'){
			//alert('支付成功！');
			window.location.href='/member/customer_report?type=0';
		}
	}			  
  });			
},5000);
</script>
</body></html>