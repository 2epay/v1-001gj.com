var yule = yule || {}; 
(function($) {
  /**
   * Utilities
   */
  yule.utils = {
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
  yule.utils.addImgHover(".mmtx-index-content-right div a");
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
				alert("抱歉，此操作被浏览器拒绝！\n\r请在浏览器地址栏输入“about:config”并回车\n\r然后将 [signed.applets.codebase_principal_support]的值设置为'true',双击即可。");
			}
		} else {
			alert("抱歉，您的浏览器不支持，请按照下面步骤操作：\n\r1.打开浏览器设置。\n\r2.点击设置网页。\n\r3.输入：" + sURL + "点击确定。");
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
			alert("抱歉，您所使用的浏览器无法完成此操作。\n\r加入收藏失败，请使用Ctrl+D进行添加");
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
/**
 * [MM_openBrWindow2 打开窗口]
 * @param {[type]} C [转向网页的地址]
 * @param {[type]} B [网页名称]
 * @param {[type]} A [description]
 */
function MM_openBrWindow2(C, B, A) {
   
	
	       var url=C;                             //转向网页的地址; 
           var name=B;                            //网页名称，可为空; 
           var iWidth=320;                          //弹出窗口的宽度; 
           var iHeight=280;                         //弹出窗口的高度; 
           //获得窗口的垂直位置 
           var iTop = (window.screen.availHeight - 30 - iHeight) / 2; 
           //获得窗口的水平位置 
           var iLeft = (window.screen.availWidth - 10 - iWidth) / 2; 
           window.open(url, name, 'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth=' + iWidth + ',top=' + iTop + ',left=' + iLeft + ',status=no,toolbar=no,menubar=no,location=no,resizable=no,scrollbars=0,titlebar=no'); 
          // window.open("AddScfj.aspx", "newWindows", 'height=100,width=400,top=0,left=0,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no'); 
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
/**
 * [change_zc_yzm 切换验证码]
 * @param  {[type]} id [图片id]
 * @return {[type]}    [无返回值]
 */
function change_zc_yzm(id){

	document.getElementById(id).src = "../app/member/yzm.php?"+Math.random();	
	
}	
function showMoreMsg() {
	//parent.mainFrame.location='./scroll_history.php?uid='+top.uid+'&langx='+top.langx;
	MM_openBrWindow('./scroll_history.php?uid=' + top.uid + '&langx=' + top.langx, "History", "width=617,height=500,top=0,left=0,status=no,toolbar=no,scrollbars=yes,resizable=no,personalbar=no");
}
$.fn.mtab3 = function(){
    var area = this;
    $.each(area.find('li[id^=#]'),function(i){
    	if(i!=0){
    		area.find(this.id)[0].style.display = 'none';
    	}
    });
    area.find('li[id^=#]').click(function(){
        var self = this;
        $.each(area.find('li[id^=#]'),function(i){
            if(self.id != this.id){
                area.find(this.id)[0].style.display = 'none';
                $(this)[0].style.backgroundPosition = 'top';
                $(this).removeClass('mtab');
            }else{
                area.find(this.id)[0].style.display = 'block';
                $(this)[0].style.backgroundPosition = 'top';
                $(this).addClass('mtab');
            }
        });
    });
};
//新增代码
	jQuery.zabsuper = {
		buttonEffect : function(option) { 
			var defaults = {    
			   theme: 'default' ,
				bgColor:{flag:false,from:'#000',to:'#f60'},
				fontColor:{flag:false,from:'#f60',to:'#fff'},
				duration:500,
				easing:'easeOutQuint'
			};   
			var opts = $.extend(defaults, option); 
			if(!opts.selector)return false;
			$(opts.selector).each(function(){
				$(opts.selector).addClass('myeffect');
				var that = $(this);
				var thisH = $(this).height();
				var htmls = $(this).html();
				$(this).html('');
				var effectbox=$('<div class=effectbox style="width:100%;height:100%;position:relative;overflow:hidden;"></div>');
				effectbox.addClass(opts.theme).append('<div class=up style="width:100%;height:100%;position:absolute;top:-'+thisH+'px;">'+htmls+'</div><div class=down style="width:100%;height:100%;position:absolute;top:0px;">'+htmls+'</div>');
				effectbox.appendTo(this);
				if(opts.bgColor.flag){
					effectbox.css('background-color',opts.bgColor.from);
				}
				if(opts.fontColor.flag){
					effectbox.find('.up>*').css('color',opts.fontColor.to);
					effectbox.find('.down>*').css('color',opts.fontColor.from);
				}

				effectbox.hover(function(){
					if(opts.bgColor.flag){
						$(this).stop(true,false).animate({backgroundColor:opts.bgColor.to},opts.duration);
					}
					if(opts.fontColor.flag){
						$(this).find('.up>*').stop(true,false).animate({color:opts.fontColor.to},opts.duration,opts.easing);
						$(this).find('.down>*').stop(true,false).animate({color:opts.fontColor.to},opts.duration,opts.easing);
					}
					$(this).find('.up').stop(true,false).animate({top:'0px',opacity:1},opts.duration,opts.easing);
					$(this).find('.down').stop(true,false).animate({top:thisH,opacity:0},opts.duration,opts.easing);
					
				},function(){
					if(opts.bgColor.flag){
						$(this).stop(true,false).animate({backgroundColor:opts.bgColor.from},opts.duration);
					}
					if(opts.fontColor.flag){
						$(this).find('.up>*').stop(true,false).animate({color:opts.fontColor.from},opts.duration,opts.easing);
						$(this).find('.down>*').stop(true,false).animate({color:opts.fontColor.from},opts.duration,opts.easing);
					}
					$(this).find('.up').stop(true,false).animate({top:-thisH,opacity:0},opts.duration,opts.easing);
					$(this).find('.down').stop(true,false).animate({top:'0px',opacity:1},opts.duration,opts.easing);
					
				});
			});
		}	
	};
	$(document).ready(function(){
	

	   	$.zabsuper.buttonEffect({
			selector:'.submit',
			bgColor:{flag:true,from:'#ff8500',to:'#b9171c'}
		});

	    $.zabsuper.buttonEffect({
			selector:'.reg',
			bgColor:{flag:true,from:'#c06400',to:'#b9171c'}
		});

        $.zabsuper.buttonEffect({
            selector:'.pic-list-btn'
        });

        $.zabsuper.buttonEffect({
            selector:'.register-sub'
        });

        $.zabsuper.buttonEffect({
            selector:'.online-sub'
        });

        $.zabsuper.buttonEffect({
			selector:'.button2',
			bgColor:{flag:true,from:'#ededed',to:'#a51111'}
		});
		$.zabsuper.buttonEffect({
			selector:'.button3',
			bgColor:{flag:true,from:'#ededed',to:'#a51111'}
		});

	});
	