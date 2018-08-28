var byelectronics = {
	nextscroll: function() {
		var vcon = $(".v_cont ");
		var offset = ($(".v_cont li").width()) * -1;
		vcon.stop().animate({
			left: offset
		}, "slow", function() {
			var firstItem = $(".v_cont ul li").first();
			vcon.find("ul").append(firstItem);
			$(this).css("left", "0px");
		});
		$(".prev a").click(function() {
			var vcon = $(".v_cont ");
			var offset = ($(".v_cont li").width() * -1);
			var lastItem = $(".v_cont ul li").last();
			vcon.find("ul").prepend(lastItem);
			vcon.css("left", offset);
			vcon.animate({
				left: "0px"
			}, "slow");
		});
	},
	init: function() {
		var str = '';
		for(var i = 0; i < ectronicsType.length; i++) {
			var cla = i == 0 ? 'active' : '';
			str += '<li type="' + ectronicsType[i].type + '" class="' + cla + '" onclick="byelectronics.clickTitle(this)" config="' + ectronicsType[i].config + '">' + ectronicsType[i].title + '</li>'
		}
		$("#byelectronicsTitle").html(str);
		byelectronics.filterGame('electronicgameBB', '1', 0);
		byelectronics.byelectronicsFocus();
	},
	clickTitle: function(obj) { //点击I级电子类型
		$("#byelectronicsTitle li").removeClass('active');
		$(obj).addClass('active')
		var type = $(obj).attr('type');
		$("#byelectronicsLogo").attr('src','img/logo/'+type+'.png');
		$("#byelectronicsTitlelist .byelectronics-list").hide();
		$("#byelectronicsTitlelist .byelectronics-list").each(function(x, y) {
			if($(y).attr('type') == type) $(y).show();
		})
		byelectronics.filterGame($(obj).attr('config'), '1', 0);
	},
	filterGame: function(type, childredType, index) { //根据游戏类型筛选
		$("#byelectronicsTitlelist .byelectronics-list").each(function(x, y) {
			if(!$(y).is(':hidden')) {
				$(y).find('span').removeClass('active');
				$(y).find('span').eq(index).addClass('active');
			}
		})
		byelectronics.filterGameContent(eval('(' + type + ')'), childredType);
	},
	filterGameContent: function(arr, childredType, val) {
		var str = '';
		if(val != undefined){
			for(var i = 0; i < arr.length; i++) {
                if (arr[i].gameName.indexOf(val) > -1) str += '<li gameType="' + arr[i].gameType + '" gameId="' + arr[i].gameId + '" gameNameEng="' + arr[i].gameNameEng + '"><div class="byelectronics-lists-img"><img src="' + arr[i].src + '" /></div><span>' + arr[i].gameName + '</span><div class="byelectronics-lists-opcity"><button gameType="' + arr[i].gameType + '" gameId="' + arr[i].gameId + '" gameNameEng="' + arr[i].gameNameEng + '" onclick="byelectronics.goOutGame(this)">进入游戏</button></div></li>';				
			}
		}else{
			for(var i = 0; i < arr.length; i++) {
                if (arr[i].type == childredType) str += '<li gameType="' + arr[i].gameType + '" gameId="' + arr[i].gameId + '" gameNameEng="' + arr[i].gameNameEng + '"><div class="byelectronics-lists-img"><img src="' + arr[i].src + '" /></div><span>' + arr[i].gameName + '</span><div class="byelectronics-lists-opcity"><button gameType="' + arr[i].gameType + '" gameId="' + arr[i].gameId + '" gameNameEng="' + arr[i].gameNameEng + '" onclick="byelectronics.goOutGame(this)">进入游戏</button></div></li>';				
			}
		}
		$("#byelectronicsLists").html(str);
	},
	byelectronicsFocus: function() {
		$('#byelectronicsFocus').keypress(function(event) {
			var keycode = (event.keyCode ? event.keyCode : event.which);
			if(keycode == '13') {
				byelectronics.search();
			}
		});
	},
	search: function() {
		if($("#byelectronicsFocus").val() != '') {
			byelectronics.filterGameContent(eval('(' + $("#byelectronicsTitle li.active").attr('config') + ')'),0,$("#byelectronicsFocus").val());
		}
    },
    goOutGame: function (obj) {
        var gametype = $(obj).attr('gametype');
        var type = $("#byelectronicsTitle li.active").attr('type');
        var gamenameeng = $(obj).attr('gamenameeng'); 
        var gameId = $(obj).attr('gameId');
				//进入游戏
        window.open( "/" + type + "/playGame?gametype=" + gametype+ "&gameName=" + gamenameeng + "&gameId=" + gameId,'newwindow', 'height=768, width=1450,  toolbar=no, menubar=no, scrollbars=no, resizable=no,location=n o, status=no');
    }
}