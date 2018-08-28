/**
 * Created by Administrator on 2016/7/20.
 */
$(function(){
	$(".mainImg .foo").backstretch([
		"/web/images/home/banner01.jpg",
		"/web/images/home/banner02.jpg",
		"/web/images/home/banner03.jpg"
	], {fade: 750, duration: 4000});
		
	$(".mainImg .foo").on("backstretch.before", function (e, instance, index) {
		$('.mainImg .foopage a:eq('+index+')').addClass('selected').siblings('a').removeClass('selected');
	});
	$('.mainImg .foopage a').click(function(){
		var index = $(this).index();
		$(".mainImg .foo").backstretch('show',index);
		return false;
	});
	$('.mainImg .prev a').click(function(){
		$(".mainImg .foo").backstretch("prev");
		return false;
	});
	$('.mainImg .next a').click(function(){
		$(".mainImg .foo").backstretch("next");
		return false;
	});
	
		//tab切换
	var ind = 0;
	$('.section01 .tabBox').hide();
	$('.section01 .tabBox').eq(0).show();
	$('.section01 .tab').hide();
	$('.section01 .tab').eq(0).show();
	$('.section01 .menuUl li a').hover(function(){
		var ind=$(this).parent('li').index();
		$(this).parent('li').addClass('on').siblings().removeClass('on');
		$('.section01 .tabBox').hide();
		$('.section01 .tabBox:eq('+ind+')').show();
		$('.section01 .tab').hide();
		$('.section01 .tab:eq('+ind+')').show();
		return false;
	});
	$('.section01 .next a').click(function(){
		ind++;
		if(ind == $('.section01 .tabBox').length){
			ind = 0;
		}
		$('.section01 .tabBox').hide();
		$('.section01 .tabBox:eq('+ind+')').show();
		$('.section01 .tab').hide();
		$('.section01 .tab:eq('+ind+')').show();
		$('.section01 .menuUl li:eq('+ind+')').addClass('on').siblings().removeClass('on');
		return false;
	});
	$('.section01 .prev a').click(function(){
		ind--;
		if(ind < 0){
			ind = $('.section01 .tabBox').length-1;
		}
		$('.section01 .tabBox').hide();
		$('.section01 .tabBox:eq('+ind+')').show();
		$('.section01 .tab').hide();
		$('.section01 .tab:eq('+ind+')').show();
		$('.section01 .menuUl li:eq('+ind+')').addClass('on').siblings().removeClass('on');
		return false;
	});
	$('#main .jsBox .ulList').carouFredSel({
		auto: 3000,
		width: '100%',
		items: {
			visible: {
				min: 3,
				max: 3
			},
			minimum: 1,
			width: 'variable',
			height: 'variable'
		},
		scroll: {
			items: 1,
			onBefore: function(data,res){
				data.items.old.eq(1).removeClass('liSpecial');
				data.items.visible.eq(1).addClass('liSpecial');
				var ind = data.items.visible.eq(1).attr('data-id');
				$('.infoText').eq(ind).addClass('selected').siblings('.infoText').removeClass('selected');
			},
			duration: 500
		},
		pagination: '.jsBox .btmpage'
	});	
});
jQuery(".wininfo").slide({mainCell:".inbd ul",autoPlay:true,effect:"topMarquee",vis:6,interTime:50,trigger:"click"});
jQuery("#gNavi").slide({ type:"menu", titCell:".nLi", targetCell:".naviBox",effect:"slideDown",delayTime:300,triggerTime:0,returnDefault:true});