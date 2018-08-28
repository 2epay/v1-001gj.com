$(function() {



	//tab 切换
	$(".J-nav-tab").each(function() {
		$(this).find("a").mouseenter(function() {
			var $this = $(this);
			var $obj = $this.attr("href");
			var $obj2=$this.attr("href")+"Txt";
			$(".J-nav-tab a").removeClass("on")
			$this.addClass("on");
			$($obj).show().siblings().hide()
			$($obj2).show().siblings().hide()
			return false;
		})
	})
	//	nav
	$(".nav").slide({
		type: "menu",
		titCell: "li",
		targetCell: "dl",
		effect: "slideDown",
		delayTime: 300,
		triggerTime: 100,
		returnDefault: true
	});

	//	notice
	$(".noticeBox").slide({
		mainCell:".bd2 ul",
		autoPage:"<span></span>",
		autoPlay:true,
		effect:"topLoop",
		vis:1,
		scroll:1
	})


	$(".list_lh").slide({
		mainCell:"ul",autoPlay:true,effect:"topMarquee",interTime:50,vis:5});

	//	close

	$(".closeBtn").click(function () {
		$(this).parents(".fix-left,.fix-right").hide();
	})

})



function ChangeSlotgame(num){
    $(".slot_nav li").removeClass("currentTab").eq(num).attr("class","currentTab");
    $(".slot_list ul").removeClass("block").eq(num).attr("class","block");
}

$(function(){
    //PT老虎机鼠标按钮
    $(".slot_game").mouseenter(function(){
        $(this).children(".slot_hover").stop(true,true);
        $(this).children(".gamelogin01").stop(true,true);
        $(this).children(".slot_image").children("a").children("img").stop(true,true);
        $(this).children(".slot_image").children(".slot_hover").stop(true,true);
        $(this).children(".slot_image").children(".hover_title").stop(true,true);
        $(this).children(".slot_image").children(".hover_title").animate({opacity:"0",top:"-20px"},200);
        $(this).children(".slot_image").children(".slot_hover").css("left","0px").css("top","0px").css("width","176px").css("height","234px").show();
        $(this).children(".slot_image").children(".slot_hover").animate({left:"-13px",top:"-18px",width:"204px",height:"272px"},200);
        $(this).children(".gamelogin01").css("top","100px").show();
        $(this).children(".gamelogin01").animate({opacity:"1",top:"90px"});
        $(this).children(".gamelogin02").css("top","150px").show();
        $(this).children(".gamelogin02").animate({opacity:"1",top:"140px"});
        $(this).children(".slot_image").children("img").animate({width:"202px",height:"270px",left:"-13px",top:"-18px"},200);
    });
    $(".slot_game").mouseleave(function(){
        $(this).children(".slot_hover").stop(true,true);
        $(this).children(".gamelogin01").stop(true,true);
        $(this).children(".slot_image").children("a").children("img").stop(true,true);
        $(this).children(".slot_image").children(".slot_hover").stop(true,true);
        $(this).children(".slot_image").children(".hover_title").stop(true,true);
        $(this).children(".gamelogin01").hide();
        $(this).children(".gamelogin02").hide();
        $(this).children(".slot_image").children(".hover_title").animate({opacity:"1",top:"1px"},200);
        $(this).children(".slot_image").children(".slot_hover").hide();
        $(this).children(".slot_image").children("img").animate({width:"176px",height:"234px",left:"0px",top:"0px"},200);
        $(".hover_title").show();
    });



    $(".slot_game").mouseenter(function(){
        $(this).children(".slot_hover").stop(true,true);
        $(this).children(".gamelogin01").stop(true,true);
        $(this).children(".slot_image").children("a").children("img").stop(true,true);
        $(this).children(".slot_image").children(".slot_hover").stop(true,true);
        $(this).children(".slot_image").children(".hover_title").stop(true,true);
        $(this).children(".slot_image").children(".hover_title").animate({opacity:"0",top:"-20px"},200);
        $(this).children(".slot_image").children(".slot_hover").css("left","0px").css("top","0px").css("width","176px").css("height","234px").show();
        $(this).children(".slot_image").children(".slot_hover").animate({left:"-5px",top:"-18px",width:"202px",height:"272px"},200);
        $(this).children(".gamelogin01").css("top","100px").show();
        $(this).children(".gamelogin01").animate({opacity:"1",top:"90px"});
        $(this).children(".gamelogin02").css("top","150px").show();
        $(this).children(".gamelogin02").animate({opacity:"1",top:"140px"});
        $(this).children(".slot_image").children("img").animate({width:"202px",height:"270px",left:"-5px",top:"-18px"},200);
    });
    $(".slot_game").mouseleave(function(){
        $(this).children(".slot_hover").stop(true,true);
        $(this).children(".gamelogin01").stop(true,true);
        $(this).children(".slot_image").children("a").children("img").stop(true,true);
        $(this).children(".slot_image").children(".slot_hover").stop(true,true);
        $(this).children(".slot_image").children(".hover_title").stop(true,true);
        $(this).children(".gamelogin01").hide();
        $(this).children(".gamelogin02").hide();
        $(this).children(".slot_image").children(".hover_title").animate({opacity:"1",top:"0px"},200);
        $(this).children(".slot_image").children(".slot_hover").hide();
        $(this).children(".slot_image").children("img").animate({width:"176px",height:"234px",left:"0px",top:"0px"},200);
        $(".hover_title").show();
    });
})
