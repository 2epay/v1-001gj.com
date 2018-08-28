
﻿﻿﻿﻿<!doctype html>
<html class="no-js" lang="zh-cmn-Hans">
<head>
<meta charset="utf-8">
<title>{{ $company_info->site_name }}下载中心</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<meta name="viewport" content="initial-scale=1.0, user-scalable=yes" />

<link rel="stylesheet" href="/app/style.css">

<script src="/app/jquery.min.js"></script>
<script src="/app/jquery.carouFredSel-6.1.0.js"></script>
<script src="/app/jquery.easing.min.js"></script>
<script src="/app/jquery.fullPage.min.js"></script>
<script src="/app/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript">
$(function(){
	
})
</script>
</head>
<body>
<div style="margin-top:140px"></div>
<div id="dowebok" style="margin-top:-20px;">
	<div class="section section1">
    	<div style="height:340px;  margin-top:120px;" class="sectioncon">
        	<img src="/app/01img02.png" class="s01img02 show1">
			<p class="text show2">01.及时更新最新最快网址，无需牢记众多域名，点击进入游戏即可登入手机版游戏<br>
02.优惠活动开启时手机 APP 第一时间发送到您的手机了解{{ $company_info->site_name }}场最新优惠<br>
03.打开手机公告即可查看{{ $company_info->site_name }}最新优惠活动</p>
			<ul class="ulList">
			<li class="li01 show3"><img src="/app/01img03.png" alt=""><span>适用于ios6.0以上及以上</span><img src="/app/01img05.png" alt=""></li>
			<li class="li01 show4"><img src="/app/01img04.png" alt=""><span>适用4.0以上,仅限UC浏览器扫码</span><img src="/app/01img06.png" alt=""></li>
			</ul>

        </div>
	</div>


	
      
</div>

<script>
$(function () {
	$('#dowebok').fullpage({
	   anchors: ['page0','page1', 'page2', 'page3', 'page4'],
	   menu: '#menu',
		fitToSection: true,
		css3: true,
		scrollingSpeed: 700,
		verticalCentered: true,
		navigation: true,
		afterLoad: function(anchorLink, index){
			$('.show1,.show2,.show3,.show4,.show5').show();	
			if(index == 1){
			
				$('.section0 .s00img01').addClass('animated bounceIn');
				$('.section0 .s00img02').addClass('animated bounceInLeft');
				$('.section0 .s00img03').addClass('animated zoomIn');
				$('.section0 .s00link').addClass('animated flipInY');
			}       
			if(index == 2){
				$('.section1 .s01img02').addClass('animated flipInY');
				$('.section1 .text').addClass('animated lightSpeedIn');
				$('.section1 .ulList .li01').addClass('animated fadeInUp');
				$('.section1 .ulList .li02').addClass('animated fadeInUp');
			}       
			if(index == 3){		
				$('.section2 .s02img01').addClass('animated bounceIn');
				$('.section2 .s02img02').addClass('animated lightSpeedIn');
				$('.section2 .s02img03').addClass('animated rotateInDownRight');
				$('.section2 .text02').addClass('animated fadeInUp');
				$('.section2 .s02link').addClass('animated fadeInUp');
			}
			if(index == 4){
				$('.section3 .s03img01').addClass('animated fadeInUp');
				$('.section3 .s03img02').addClass('animated fadeInUp');
				$('.section3 .s03img03').addClass('animated rotateInDownRight');
				$('.section3 .text03').addClass('animated bounceInLeft');				
				$('.section3 .s03link').addClass('animated bounceInLeft');				
			}
			if(index == 5){		
				$('.section4 .s04img01').addClass('animated bounceInUp');
				$('.section4 .sliderBox').addClass('animated bounceInUp');
				$('.section4 .foopage').addClass('animated bounceInUp');
				$('.section4 .linkUl').carouFredSel({
		auto: 3000,
		width: '100%',
		items: {
			visible: {
				min: 5,
				max: 5
			},	
			minimum: 1,
			width: 'variable',
			height: 'variable'
		},
		scroll: {
			items: 1,
			onBefore: function(data,res){
				data.items.old.eq(2).removeClass('liSpecial');
				data.items.visible.eq(2).addClass('liSpecial');
			},
			duration: 500
		},
		pagination: '.section4 .foopage'
		
	});

			}
		},
		onLeave: function(index, direction){
			$('.show1,.show2,.show3,.show4,.show5').hide();
			if(index == 1){
			
				$('.section0 .s00img01').addClass('animated bounceIn');
				$('.section0 .s00img02').addClass('animated bounceInLeft');
				$('.section0 .s00img03').addClass('animated zoomIn');
				$('.section0 .s00link').addClass('animated flipInY');
			}       
			if(index == 2){
				$('.section1 .s01img02').addClass('animated flipInY');
				$('.section1 .text').addClass('animated lightSpeedIn');
				$('.section1 .ulList .li01').addClass('animated fadeInUp');
				$('.section1 .ulList .li02').addClass('animated fadeInUp');
			}       
			if(index == 3){		
				$('.section2 .s02img01').addClass('animated bounceIn');
				$('.section2 .s02img02').addClass('animated lightSpeedIn');
				$('.section2 .s02img03').addClass('animated rotateInDownRight');
				$('.section2 .text02').addClass('animated fadeInUp');
				$('.section2 .s02link').addClass('animated fadeInUp');
			}
			if(index == 4){
				$('.section3 .s03img01').addClass('animated fadeInUp');
				$('.section3 .s03img02').addClass('animated fadeInUp');
				$('.section3 .s03img03').addClass('animated rotateInDownRight');
				$('.section3 .text03').addClass('animated bounceInLeft');				
				$('.section3 .s03link').addClass('animated bounceInLeft');				
			}
			if(index == 5){		
				$('.section4 .s04img01').addClass('animated bounceInUp');
				$('.section4 .sliderBox').addClass('animated bounceInUp');
				$('.section4 .foopage').addClass('animated bounceInUp');
					$('.section4 .linkUl').carouFredSel({
		auto: 3000,
		width: '100%',
		items: {
			visible: {
				min: 5,
				max: 5
			},	
			minimum: 1,
			width: 'variable',
			height: 'variable'
		},
		scroll: {
			items: 1,
			onBefore: function(data,res){
				data.items.old.eq(2).removeClass('liSpecial');
				data.items.visible.eq(2).addClass('liSpecial');
			},
			duration: 500
		},
		pagination: '.section4 .foopage'
		
	});

			}
		}
	});
});
</script>
</body>
</html>
