var serviceUrl;

function urlparent(url){
	window.open(url,"newFrame");
}

function game_ok(){
	if($(document).find("#username").length){ //没有登录
		alert("登录后才能进行此操作");
		return ;
	}else{
		alert("本游戏需联系客服");
	}
}

function lottery_ok(url){
	//if($(window.parent.document).find("#username").length){ //没有登录
		//alert("登录后才能进行此操作");
		//return ;
	//}else{
		window.location.href=url+'.php';
	//}
}

function url_bb(url){
	window.open(url,"iframepage"); 
}

function t_url(url){
    window.open(url,"iframepage"); 
}

function memberUrl(url) {
    var offsetTop = (parseInt($(window).height())-551)/2;
    var offsetLeft = (parseInt($(window).width())-976)/2;
    if(offsetTop<0){
        offsetTop = 0;
    }
    if(offsetLeft<0){
        offsetLeft = 0;
    }
	$.layer({
		type : 2,
		shadeClose : false,
		fix : false,
		title : "会员中心",
		offset : [offsetTop+'px' , offsetLeft+'px'],
		closeBtn : [0, true],
		iframe : { src : url },
		area : ['960px' , '535px']
	});
}