var mobile = {
	init: function() {
		var str = '';
		mobile.byelectronicsFocus()
		for(var i = 0; i < ectronicsType.length; i++) {
			var cla = i == 0 ? 'active' : '';
			str += '<li type="' + ectronicsType[i].type + '" class="' + cla + '" onclick="mobile.clickTitle(this)" config="' + ectronicsType[i].config + '">' + ectronicsType[i].title + '</li>'
		}
		$("#navtitlelist").html(str);
		$("#navtitlelist li").eq(0).click();
	},
	clickTitle: function(obj) { //点击I级电子类型
		$("#navtitlelist li").removeClass('active');
		$(obj).addClass('active')
		var type = $(obj).attr('type');
		$("#byelectronicsLogo").attr('src','img/logo/'+type+'.png');
		$(".mobilecomputer-header-bottom select").hide();
		$(".mobilecomputer-header-bottom select").each(function(x, y) {
			if($(y).attr('type') == type) $(y).show();
		})
		$(".mobilecomputer-navtitle").slideUp(); 
		mobile.filterGame($(obj).attr('config'), '1');
	},
	filterGameOne:function(obj){
		mobile.filterGame($('#navtitlelist li.active').attr('config'),$(obj).find("option:selected").attr('type'));
	},
	filterGame: function(type, childredType) { //根据游戏类型筛选
		$("#byelectronicsTitlelist .byelectronics-list").each(function(x, y) {
			if(!$(y).is(':hidden')) {
				$(y).find('span').removeClass('active');
				$(y).find('span').eq(index).addClass('active');
			}
		})
		mobile.filterGameContent(eval('(' + type + ')'), childredType);
	},
	filterGameContent: function(arr, childredType, val) {
		var str = '';
		if(val != undefined){
			for(var i = 0; i < arr.length; i++) {
                if (arr[i].gameName.indexOf(val) > -1) str += '<li gameType="' + arr[i].gameType + '" gameId="' + arr[i].gameId + '" gameNameEng="' + arr[i].gameNameEng + '" onclick="mobile.goOutGame(this)"><div class="mobilecomputer-wrap-img"><img src="' + arr[i].src + '" /></div><span>' + arr[i].gameName + '</span></li>';				
			}
		}else{
			for(var i = 0; i < arr.length; i++) {
                if (arr[i].type == childredType) str += '<li gameType="' + arr[i].gameType + '" gameId="' + arr[i].gameId + '" gameNameEng="' + arr[i].gameNameEng + '" onclick="mobile.goOutGame(this)"><div class="mobilecomputer-wrap-img"><img src="' + arr[i].src + '" /></div><span>' + arr[i].gameName + '</span></li>';				
			}
		}
		$("#mobilecomputerwrap").html(str);
	},
	byelectronicsFocus: function() {
		$('#byelectronicsFocus').keypress(function(event) {
			var keycode = (event.keyCode ? event.keyCode : event.which);
			if(keycode == '13') {
				mobile.search();
			}
		});
	},
	search: function() {
		if($("#byelectronicsFocus").val() != '') {
			mobile.filterGameContent(eval('(' + $("#navtitlelist li.active").attr('config') + ')'),0,$("#byelectronicsFocus").val());
		}
	},
	slideToggle:function(){
		$(".mobilecomputer-navtitle").slideToggle();
    },
    goOutGame: function (obj) {
        var gametype = $(obj).attr('gametype');
        var type = $("#navtitlelist li.active").attr('type');
        var gamenameeng = $(obj).attr('gamenameeng');
        var gameId = $(obj).attr('gameId');
        //进入游戏
        window.location.href = "/WebApi/LoginGame?gamePlatform=" + type + "&gametype=" + gametype + "&gameName=" + gamenameeng + "&gameId=" + gameId +"&devices=1";
    }
}
var mobile2 = {
	init: function() {
		var str = '';
		mobile2.byelectronicsFocus()
		for(var i = 0; i < ectronicsType.length; i++) {
			str += '<option type="' + ectronicsType[i].type + '" config="' + ectronicsType[i].config + '">' + ectronicsType[i].title + '</option>'
		}
		$("#navtitlelist").html(str);
		$("#navtitlelist").change()
	},
	clickTitle: function(obj) { //点击I级电子类型
		var type = $(obj).find("option:selected").attr('type');
		$(".mobiles-select-two select").hide();
		$(".mobiles-select-two select").each(function(x, y) {
			if($(y).attr('type') == type) {
				$(y).show();
				mobile2.filterGame($(obj).find("option:selected").attr('config'), '1');
			}
		})
	},
	filterGameOne:function(obj){
		mobile2.filterGame($("#navtitlelist").find("option:selected").attr('config'),$(obj).find("option:selected").attr('type'));
	},
	filterGame: function(type, childredType) { //根据游戏类型筛选
		mobile2.filterGameContent(eval('(' + type + ')'), childredType);
	},
	filterGameContent: function(arr, childredType, val) {
		var str = '';
		if(val != undefined){
			for(var i = 0; i < arr.length; i++) {
                if (arr[i].gameName.indexOf(val) > -1) str += '<li gameType="' + arr[i].gameType + '" gameId="' + arr[i].gameId + '" gameNameEng="' + arr[i].gameNameEng + '" onclick="mobile2.goOutGame(this)"><img src="' + arr[i].src + '" /><span>' + arr[i].gameName + '</span><i>'+arr[i].platformCode+'</i></li>';				
			}
		}else{
			for(var i = 0; i < arr.length; i++) {
                if (arr[i].type == childredType) str += '<li gameType="' + arr[i].gameType + '" gameId="' + arr[i].gameId + '" gameNameEng="' + arr[i].gameNameEng + '" onclick="mobile2.goOutGame(this)"><img src="' + arr[i].src + '" /><span>' + arr[i].gameName + '</span><i>'+arr[i].platformCode+'</i></li>';				
			}
		}
		$("#mobilecomputerwrap").html(str);
	},
	byelectronicsFocus: function() {
		$('#byelectronicsFocus').keypress(function(event) {
			var keycode = (event.keyCode ? event.keyCode : event.which);
			if(keycode == '13') {
				mobile2.search();
			}
		});
	},
	search: function() {
		if($("#byelectronicsFocus").val() != '') {
			mobile2.filterGameContent(eval('(' + $("#navtitlelist").find("option:selected").attr('config') + ')'),0,$("#byelectronicsFocus").val());
		}
	},
	toTop:function(){
		 $('body,html').animate({ scrollTop: 0 }, 300);
    },
    goOutGame: function (obj) {
        var gametype = $(obj).attr('gametype');
        var type = $("#navtitlelist option:selected").attr('type');
        var gamenameeng = $(obj).attr('gamenameeng');
        var gameId = $(obj).attr('gameId');
        //进入游戏
        window.location.href = "/WebApi/LoginGame?gamePlatform=" + type + "&gametype=" + gametype + "&gameName=" + gamenameeng + "&gameId=" + gameId + "&devices=1";
    }
}
