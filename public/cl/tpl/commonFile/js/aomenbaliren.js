
$(".dzdl").mouseover(function(){
        $(".electronic-down").css({
                "display":"block"
        })
})
$(".dzdl").mouseout(function(){
    $(".electronic-down").css({
            "display":"none"
    })
})
$(".electronic-down").mouseover(function(){
    $(".electronic-down").css({
            "display":"block"
    })
})
$(".electronic-down").mouseout(function(){  
    $(".electronic-down").css({
            "display":"none"
    })
})
var aomenbaliren = aomenbaliren || {}; 
(function($) {
  /**
   * Utilities
   */
  aomenbaliren.utils = {
		init: function() {
			
		},
		addImgHover: function(cls) {
			$(cls).css("opacity","0.8").hover(
				function(){
					$(this).stop().animate({'opacity': 1}, 350);
				}, function(){
					$(this).stop().animate({'opacity': 0.8}, 350);
				}
			);

		}
		
		
	};

  aomenbaliren.utils.addImgHover(".img-Fx");
}(jQuery));

// 設為首頁
function setFirst(sURL) {
	try {
		document.body.style.behavior = 'url(#default#homepage)';  
		document.body.setHomePage(sURL);  
	} catch(e) {
		if (window.netscape) {
			try {
				netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
			} catch(e) {

				alert("抱歉，此操作被瀏覽器拒絕！\n\r請在瀏覽器地址欄輸入“about:config”并回車\n\r然后將 [signed.applets.codebase_principal_support]的值設置為'true',雙擊即可。");
			}
		} else {
			alert("抱歉，您的瀏覽器不支持，請按照下面步驟操作：\n\r1.打開瀏覽器設置。\n\r2.點擊設置網頁。\n\r3.輸入：" + sURL + "點擊確定。");
		}
	}
}
// 加入最愛
function bookMarksite(sURL, sTitle) {
	try {
		window.external.addFavorite(sURL, sTitle);
	} catch(e) {
		try {
			window.sidebar.addPanel(sTitle, sURL, "");
		} catch(e) {
			alert("抱歉，您所使用的瀏覽器無法完成此操作。\n\r加入收藏失敗，請使用Ctrl+D進行添加");
		}
	}
}
function cancelMouse() {
    return false;
}

document.oncontextmenu = cancelMouse;

function mover(A) {
    A.style.backgroundPosition = "0 bottom"
}
function mout(A) {
    A.style.backgroundPosition = "0 top"
}
function MM_openBrWindow(C, B, A) {
    window.open(C, B, A)
}
function subWin(A) {
    window.open(A, "gameOpen", "width=1024,height=768")
}
function subWinRule(A) {
    window.open(A, "gameOpenRule", "width=1024,height=768,scrollbars=yes")
};
function winOpen(url,width,height,left,top,name)
{
	var temp = "menubar=no,toolbar=no,directories=no,scrollbars=yes,resizable=no,location=no";
	if (parseInt(width)>0) {
	temp += ',width=' + width;
	} else {
	width = window.screen.availWidth;
	}
	if (parseInt(height)>0) {
	temp += ',height=' + height;
	} else {
	height = window.screen.availHeight;
	}
	if (parseInt(left)>0) {
	temp += ',left=' + left;
	} else {
	temp += ',left='
	+ Math.round((window.screen.availWidth - parseInt(width)) / 2);
	}
	if (parseInt(top)>0) {
	temp += ',top=' + top;
	} else {
	temp += ',top='
	+ Math.round((window.screen.availHeight - parseInt(height)) / 2);
	}
	if(typeof(name)=="undefined"){
		name="";
	}
	if(name=="game")
	{
		//alert(temp);
		var obj=window.open (url,name,temp);
		obj.moveTo(0,0);
		obj.resizeTo(window.screen.availWidth,window.screen.availHeight);	
		//window.setTimeout("obj.document.location=url",3000);
	}
	else{
		window.open (url,name,temp);
	}
}

function change_zc_yzm(id){

	document.getElementById(id).src = "../app/member/yzm.php?"+Math.random();	
	
}	
function showMoreMsg() {
	//parent.mainFrame.location='./scroll_history.php?uid='+top.uid+'&langx='+top.langx;
	MM_openBrWindow('./scroll_history.php?uid=' + top.uid + '&langx=' + top.langx, "History", "width=617,height=500,top=0,left=0,status=no,toolbar=no,scrollbars=yes,resizable=no,personalbar=no");
}

window.onerror=function(){return true;} 
	 
window.onload = function (){
	
    function ShowCurrentTime(){
        var date = new Date();
        var now="";
        now += date.getFullYear()+"-";
        now += (date.getMonth()+1)+"-";
        now += date.getDate()+"-";
        now += date.getHours()+":";
        now += date.getMinutes()+":";
        now += date.getSeconds()+""; 
        var timeDom = document.getElementById("time");
        if(timeDom){
        	         timeDom.innerHTML = now;
                     setTimeout(ShowCurrentTime,1000);
        }

    }
    ShowCurrentTime();
	
	
}

	 
	

window.onload = function (){
	
	$(".hs").click(function(){
		var sd=$(this).index();
		$(".hs").removeClass("curs");
		$(this).addClass("curs");
		$(".gys").css({display:"none"})
	$(".gys").eq(sd).css({display:"block"})
	})
	$(".reveal-modal-bg").css({
			height:$(document).height()
	})

	/*打开*/
	//  $(".pzc").click(function(){ 
	// 	 $(".kaishi1").css("display","block");
	// 	 $(".kaishi1").css("z-index","101");
	// 	 $(".reveal-modal-bg").css("display","block");
	// 	 $(".kaishi1").addClass("a-bouncein");
	// });

	/*关闭*/
	$(".kaishi1 span").click(function(){
		$(".reveal-modal-bg").css("display","none");
		$(".kaishi1").css("display","none");
		$(".kaishi1").removeClass("a-bouncein"); 
	  }); 

	$(".reveal-modal-bg").click(function(){
		$(".reveal-modal-bg").css("display","none");
		$(".kaishi1").css("display","none");
		$(".kaishi1").removeClass("a-bouncein"); 
	});
	
	$(".xd").click(function(){
		
		if(this.className==("xd ft")){
			$(".xd").removeClass("ft"); 
			$(".zh.ss").css({display:"block"});
			return false
		}
		$(".zh.ss").css({display:"none"});
		
		
		$(".xd").addClass("ft");
	})
	/*首页_时间*/	
    function ShowCurrentTime(){
        var date = new Date();
        var now="";
        now += date.getFullYear()+"-";
        now += (date.getMonth()+1)+"-";
        now += date.getDate()+"-";
        now += date.getHours()+":";
        now += date.getMinutes()+":";
        now += date.getSeconds()+""; 
        document.getElementById("time").innerHTML = now;
        setTimeout(ShowCurrentTime,1000);
    }
    ShowCurrentTime();
}
$(document).ready(function(){
    
//     function resizeFixed(){
//        var _w = $('.banner').width();
//        console.log(_w);
//        $('.flicker-example').width(_w).css('margin-left',-(_w/2));
//     }
//     resizeFixed();
//     $(window).resize(resizeFixed);
    
    if(navigator.userAgent.match(/(iPhone|iPod|Android|ios)/i)){
	    $('.zhuc').css({
	         "right":"140px"
	    }) 
        $('html,body,.top,.xia,.banner,.flick-content').css({
			'min-width':'1200px'
		});		
        $('#w-code1').css({
			top:'168px'
		});		
    }

      var totNum = parseInt(16343210);
      var $totNum = $('.big-num');

      function milliFormat(s) {//添加千位符
          if (/[^0-9\.]/.test(s)) return "invalid value";
          s = s.replace(/^(\d*)$/, "$1.");
          s = (s + "00").replace(/(\d*\.\d\d)\d*/, "$1");
          s = s.replace(".", ",");
          var re = /(\d)(\d{3},)/;
          while (re.test(s)) {
              s = s.replace(re, "$1,$2");
          }
          s = s.replace(/,(\d\d)$/, ".$1");
          return s.replace(/^\./, "0.")
      }

      setInterval(function () {
          totNum += parseInt(Math.random() * 100);
          $totNum.html(milliFormat(totNum + ""));
      }, 1000);

   
});
//本站特例(左右浮動圖)
$.fn.floatMenu = function(options) {
    var conf = {
    'showSpd' : 400, //顯示速度 單位ms
    'btnW' : 45, //按鈕寬度 單位px
    'boxW' : 120, //內容寬度 單位px
    'floatSide': 'left', //顯示位置 left/right
    'autoClose': 1, //自動關閉
    'autoCloseTimer' : 5000, //自動關閉閒置時間
    'defaultShow' : 0 //預設顯示
};
$.extend(conf, options);
return this.each(function() {
    var _box = $(this),
        boxId = $(this).attr('id'),
        isShow = conf.defaultShow,
        _btn = _box.find('.float-btn'),
        boxSpd = conf.showSpd,
        timer_is_on = 0,
        timeoutID;
        
   function slideOut()  {
        if(conf.floatSide == 'left'){
            _box.stop().animate({'left': '0px'},conf.showSpd);
        }else{
            _box.stop().animate({'right': '0px'},conf.showSpd);

        }
        isShow = 1;
    };
    function slideIn() {
        if(conf.floatSide == 'left'){
            _box.stop().animate({'left': conf.boxW*(-1)+'px'},conf.showSpd);
        }else{
            _box.stop().animate({'right':conf.boxW*(-1)+'px'},conf.showSpd);
        }
        isShow = 0;
    }; 

    //視窗自動閉合
   function autoClose() {
        if (!timer_is_on && conf.autoClose == 1){
            timer_is_on=1;
            timeoutID = window.setTimeout( function(){slideIn();}, conf.autoCloseTimer );
        }
    }
    //停止計時 
    function stopCount(){
        clearTimeout(timeoutID);
        timer_is_on=0;
    }

    //點擊縮放視窗
   _box.hover(
        function() {
            slideOut();
            stopCount();
			
        },function(){    
            slideIn();

        }
    );
    // 初始化,預設開啟
    if (conf.defaultShow == 1) {
        slideOut();
        stopCount();
        autoClose();
    } else {
        slideIn();
    }

});
}
$(function() {
    $('#float-left-wrap').floatMenu({
        'btnW' : 45, //按鈕寬度
        'boxW' : 142, //內容寬度
    });
    $('#float-right-wrap').floatMenu({
        'floatSide': 'right',
        'btnW' : 45, //按鈕寬度
        'boxW' : 145, //內容寬度
    });
	$(window).scroll(function(){
		var sc = $(window).scrollTop();
		$('.float-wrap').stop().animate({
			top: 160
		},150)
	})
	$("#float-left-close").click(function () {
    $("#float-left-wrap").remove();
	});
	$("#float-right-close").click(function () {
		$("#float-right-wrap").remove();
	});
});


	function inputCheck(){
		if(document.LoginForm.username.value == "" || document.LoginForm.username.value == "帐号"){
		  alert('请输入帐号!!');
		  document.LoginForm.username.focus();
		  return false;
		}else if(document.LoginForm.passwd.value == "" || document.LoginForm.passwd.value == "xx@x@x.x"){
		  alert('请输入密码!!');
		  document.LoginForm.passwd.focus();
		  return false;
		}else if(document.LoginForm.passwd.value.length > 0 && document.LoginForm.passwd.value.length < 6){
		  alert('密码长度不能少于6个字元');
		  document.LoginForm.passwd.focus();
		  return false;
		}else if(document.LoginForm.vlcodes.value == "" || document.LoginForm.vlcodes.value == "验证码"){
		  alert('请输入验证码!!');
		  document.LoginForm.vlcodes.focus();
		  return false;
		}
		return true;
	}