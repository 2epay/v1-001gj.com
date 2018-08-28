function orderSubmit(){
	$("#submit").html('提交中...请稍等');
	/*var gold = $("#orderForm .gold").val();
	if( gold<20 || gold>100000){
		alert("请填写正确的金额");
		$("#orderForm .gold").focus();
		return false;
	}*/
}
function tab(current,arr){
	$.each( arr,function(i,n){
		if( current == n){
			$("#"+n).show();
		}else{
			$("#"+n).hide();
		}				
	})
	
	//$("#zhudan").css('height', $("#middle").height()-70);
}
function selectMatch( match_id,stype,type,btype){
	tab('zhudan',['menu','zhudan']);
	if( type =='zhgg'){
		$("#orderFrame").attr("src","/order/zhgg/"+match_id+"?stype="+stype+"&type="+type+"&btype="+btype);
	}else{
		$("#orderFrame").attr("src","/order/order/"+match_id+"?stype="+stype+"&type="+type+"&btype="+btype);
	}
}
function showMatch( match){
	$("#orderForm .win").text(match.match_id);
}
function clickRate( match_id,stype,type,btype){
	parent.selectMatch( match_id,stype,type,btype);
}
function changeWin( obj,minus){
	var odds = parseFloat($("#orderForm .odds").text());
	var n = parseFloat(obj.value);
	var sum = 0;
	if( minus>0){
		sum =n*odds-n;
	}else{
		sum =n*odds;
	}
	if( sum>0){
		$("#orderForm .win").text(sum.toFixed(2));
	}
}
function djs(){
	var count = $("#djs").text(); 
	count = count -1;
	$("#djs").text(count);
	if( count == 0){
		reloadList();
	}
}
function selectAll(){
	$("#leagueForm").find('input[type=checkbox]').each(function(i){
	    $(this).attr("checked",true);
		})
   $("#leagueForm .selectAll").val('1');
}
function unselectAll(){
	$("#leagueForm").find('input[type=checkbox]').each(function(i){
	    $(this).attr("checked",false);
		})
}
function CheckKey(){
	if(event.keyCode == 13) return true;
	if (event.keyCode!=46){
		if((event.keyCode < 48 || event.keyCode > 57))
		{
			//alert(top.str_only_keyin_num);	/*僅能接受數字!!*/
			return false;
		}
	}
}
function frameHeight(id,height){
	var initHeight = $("#"+id).attr('height');
	//console.info(initHeight);
	//console.warn(height);
	if( height>initHeight){
		$("#"+id).height(height);
	}else{
		$("#"+id).height(initHeight);
	}
	
}
function cancelOrder(){
	location.href="/order/index";
}
function toggleColor( id , arr , s ){
    var self = this;
    self._i = 0;
    self._timer = null;
    
    self.run = function(){
        if(arr[self._i]){
            $(id).css('color', arr[self._i]);
        }
        self._i == 0 ? self._i++ : self._i = 0;
        self._timer = setTimeout(function(){
            self.run( id , arr , s);
        }, s);
    }
    self.run();
}
function SetCookie(c_name,value){ 
//设置Cookie
	var exdate=new Date();
	exdate.setDate(exdate.getDate()+1);
	var cookieVal=c_name+ "=" +escape(value)+";expires="+exdate.toGMTString();//    
	//alert(cookieVal);    
	document.cookie=cookieVal;
}
function DeleteCookie(name) { //删除名称为name的Cookie 
	var exp = new Date();
	exp.setTime(exp.getTime() - 1);
	var cval = GetCookie(name);
	document.cookie = name + "=" + cval + "; expires=" + exp.toGMTString();
}
function Clearcookie() { //清除COOKIE 
	var strCookie=document.cookie;
	var arrCookie=strCookie.split(";"); // 将多cookie切割为多个名/值对
	for(var i=0;i <arrCookie.length;i++)
	{ // 遍历cookie数组，处理每个cookie对
		var arr=arrCookie[i].split("=");
		if(arr.length>0)
			DeleteCookie(arr[0]);
	}           
	
}
function getCookieVal(offset) { //取得项名称为offset的cookie值 
	var endstr = document.cookie.indexOf(";", offset);
	if (endstr == -1) {
		endstr = document.cookie.length;
	}
	return unescape(document.cookie.substring(offset, endstr));
}
function GetCookie(name) { //取得名称为name的cookie值 
	var arg = name + "=";
	var alen = arg.length;
	var clen = document.cookie.length;
	var i = 0;
	while (i < clen) {
		var j = i + alen;
		if (document.cookie.substring(i, j) == arg) {
			return getCookieVal(j);
		}
		i = document.cookie.indexOf(" ", i) + 1;
		if (i == 0) {
			break;
		}
	}
	return null;
}
function inputCheck(){
	if(document.LoginForm.username.value=="" || document.LoginForm.username.value=="帐号"){
		 alert("请输入登陆帐号!!"); 
		document.LoginForm.username.focus();
		return false;
	}
	if(document.LoginForm.password.value=="" || document.LoginForm.password.value=="xx@x@x.x"){
		 alert("请输入正确密码!!"); 
		document.LoginForm.password.focus();
		return false;
	}
	document.LoginForm.submit();
}
// jia 
$(document).ready(function(){ 
	$('.popupkefu').click(function (event) { 
		event.preventDefault(); 
		var iTop = (window.screen.height-30-600)/2; 
		var iLeft = (window.screen.width-10-850)/2; 
		window.open($(this).attr("href"), "popupWindow", "width=850,height=600,top="+iTop+",left="+iLeft+",scrollbars=yes"); 
	});
	$('.popupkefux').click(function (event) { 
		event.preventDefault(); 
		var iTop = (window.screen.height-30-600)/2; 
		var iLeft = (window.screen.width-10-850)/2; 
		window.open($(this).attr("href"), "popupWindow", "width=908,height=721,top="+iTop+",left="+iLeft+",scrollbars=yes"); 
	});
	$('.popupuser').click(function (event) { 
		event.preventDefault(); 
		var iTop = (window.screen.height-30-600)/2; 
		var iLeft = (window.screen.width-10-850)/2; 
		window.open($(this).attr("href"), "popupWindows", "width=1000,height=700,top="+iTop+",left="+iLeft+",scrollbars=yes"); 
	});
}); 
function AddFavorite(sURL, sTitle) {
   sURL = encodeURI(sURL); 
   try{   
       window.external.addFavorite(sURL, sTitle);   
   }catch(e) {   
       try{   
           window.sidebar.addPanel(sTitle, sURL, "");   
       }catch (e) {   
            alert("加入收藏失败，请使用Ctrl+D进行添加,或手动在浏览器里进行设置.");
       }   
   } 
}
function SetHomePage(url){
	if(document.all) {
		document.body.style.behavior='url(#default#homepage)'; 
		document.body.setHomePage(url);
	}else{ 
		alert("您好,您的浏览器不支持自动设置页面为首页功能,请您手动在浏览器里设置该页面为首页!"); 
	}
}
// 設為首頁
function setFirst(sURL) {
	try {
		document.style.behavior = 'url(#default#homepage)';
		document.setHomePage(sURL);
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

/**
 * 格式化数字显示方式 
 * 用法
 * formatNumber(12345.999,'#,##0.00');
 * formatNumber(12345.999,'#,##0.##');
 * formatNumber(123,'000000');
 * @param num
 * @param pattern
 */
function FormatNumbers(num,pattern){
  var strarr = num?num.toString().split('.'):['0'];
  var fmtarr = pattern?pattern.split('.'):[''];
  var retstr='';

  // 整数部分
  var str = strarr[0];
  var fmt = fmtarr[0];
  var i = str.length-1;  
  var comma = false;
  for(var f=fmt.length-1;f>=0;f--){
    switch(fmt.substr(f,1)){
      case '#':
        if(i>=0 ) retstr = str.substr(i--,1) + retstr;
        break;
      case '0':
        if(i>=0) retstr = str.substr(i--,1) + retstr;
        else retstr = '0' + retstr;
        break;
      case ',':
        comma = true;
        retstr=','+retstr;
        break;
    }
  }
  if(i>=0){
    if(comma){
      var l = str.length;
      for(;i>=0;i--){
        retstr = str.substr(i,1) + retstr;
        if(i>0 && ((l-i)%3)==0) retstr = ',' + retstr; 
      }
    }
    else retstr = str.substr(0,i+1) + retstr;
  }

  retstr = retstr+'.';
  // 处理小数部分
  str=strarr.length>1?strarr[1]:'';
  fmt=fmtarr.length>1?fmtarr[1]:'';
  i=0;
  for(var f=0;f<fmt.length;f++){
    switch(fmt.substr(f,1)){
      case '#':
        if(i<str.length) retstr+=str.substr(i++,1);
        break;
      case '0':
        if(i<str.length) retstr+= str.substr(i++,1);
        else retstr+='0';
        break;
    }
  }
  return retstr.replace(/^,+/,'').replace(/\.$/,'');
}
function AlertBox(){
  var a = $('#AlertBox').html();
  alert(a);	
}