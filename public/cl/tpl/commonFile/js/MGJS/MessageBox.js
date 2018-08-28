// JScript 档
///Class代号：      MessageBox
///Class名称：      读取MessageBox.xml文件信息
///程式说明:     　 从MessageBox.xml文件中循环读取符合要求的信息
///xx.YYYY/MM/DD    VER     AUTHOR       COMMENTS(说明修改的内容)  
///1.2007/7/10       1.00    Lanny        CREATE 

//Jason
//2007/6/5
function ShowError(strCode,strPara)
{
try
{
    if(strPara==undefined) strPara='';//实现类似于多载 Add By Lanny
    var messageStr = ShowMessage(strCode,strPara);
    document.getElementById("PopupWin1titleEl").innerHTML="错误提示";//抓取提示窗口的标头ID  //抓取提示窗口的显示内容的超链接ID
    document.getElementById("PopupWin1aCnt").innerHTML=messageStr;//抓取提示窗口的显示内容的超链接ID  //抓取提示窗口的显示内容的超链接ID
    ErrorColor();
    PopupWin1espopup_ShowPopup1();
    } catch(oc)
    {
        if(document.getElementById("PopupWin1titleEl")!=null)
        document.getElementById("PopupWin1titleEl").style.display="none";
        if(document.getElementById("PopupWin1aCnt")!=null)
        document.getElementById("PopupWin1aCnt").style.display="none";
    }
    return false;
}
function ShowOk(strCode,strPara)
{
try
{
    if(strPara==undefined) strPara='';//实现类似于多载 Add By Lanny
    var messageStr = ShowMessage(strCode,strPara);
    document.getElementById("PopupWin1titleEl").innerHTML="成功提示";//抓取提示窗口的标头ID  //抓取提示窗口的显示内容的超链接ID
    document.getElementById("PopupWin1aCnt").innerHTML=messageStr;//抓取提示窗口的显示内容的超链接ID  //抓取提示窗口的显示内容的超链接ID
    OkColor();
    PopupWin1espopup_ShowPopup1();
       } catch(oc)
    {
    if(document.getElementById("PopupWin1titleEl")!=null)
    document.getElementById("PopupWin1titleEl").style.display="none";
   if(document.getElementById("PopupWin1aCnt")!=null)
   document.getElementById("PopupWin1aCnt").style.display="none";
    } 
    return false;
}
function PopupWin1espopup_ShowPopup1(show)
        {
          //if (PopupWin1dxTimer!=-1) { el.filters.blendTrans.stop(); }

          if ((PopupWin1tmrHide!=-1) && ((show!=null) && (show==PopupWin1showBy)))
          {
            clearInterval(PopupWin1tmrHide);
            PopupWin1tmrHide=setInterval(PopupWin1espopup_tmrHideTimer,PopupWin1hideAfter);
            return;
          }
          if (PopupWin1tmrId!=-1) return;
          PopupWin1showBy=show;

          elCnt=document.getElementById('PopupWin1_content')
          elTit=document.getElementById('PopupWin1_header');
          el=document.getElementById('PopupWin1');
          el.style.left=PopupWin1oldLeft==null?"":PopupWin1oldLeft;
          el.style.top='';
          el.style.filter='';

          if (PopupWin1tmrHide!=-1) clearInterval(PopupWin1tmrHide); PopupWin1tmrHide=-1;

          document.getElementById('PopupWin1_header').style.display='none';
          document.getElementById('PopupWin1_content').style.display='none';

          if (navigator.userAgent.indexOf('Opera')!=-1)
            el.style.bottom=(document.body.scrollHeight*1-document.body.scrollTop*1
                            -document.body.offsetHeight*1+1*PopupWin1popupBottom)+'px';
          
          if (PopupWin1bChangeTexts)
          {
            PopupWin1bChangeTexts=false;
            document.getElementById('PopupWin1aCnt').innerHTML=PopupWin1nMsg;
            document.getElementById('PopupWin1titleEl').innerHTML=PopupWin1nTitle;
          }

          PopupWin1actualHgt=0; el.style.height=PopupWin1actualHgt+'px';
          el.style.visibility='';
          if (!PopupWin1resetTimer) el.style.display='';
          PopupWin1tmrId=setInterval(PopupWin1espopup_tmrTimer,(PopupWin1resetTimer?1000:20));
        }
//function ShowError(strCode)
//{
//    var messageStr = ShowMessage(strCode,'');
//    
//    document.getElementById("PopupWin1titleEl").innerHTML="错误提示";//抓取提示窗口的标头ID  //抓取提示窗口的显示内容的超链接ID
//    document.getElementById("PopupWin1aCnt").innerHTML=messageStr;//抓取提示窗口的显示内容的超链接ID  //抓取提示窗口的显示内容的超链接ID
//    ErrorColor();
//    PopupWin1espopup_ShowPopup();
//    return false;
//}
//function ShowOk(strCode)
//{
//    var messageStr = ShowMessage(strCode,'');
//    document.getElementById("PopupWin1titleEl").innerHTML="成功提示";//抓取提示窗口的标头ID  //抓取提示窗口的显示内容的超链接ID
//    document.getElementById("PopupWin1aCnt").innerHTML=messageStr;//抓取提示窗口的显示内容的超链接ID  //抓取提示窗口的显示内容的超链接ID
//    OkColor();
//    PopupWin1espopup_ShowPopup();
//    return false;
//}
/*
当提示为成功时改变MSN的颜色
*/
function OkColor()
{
     document.getElementById("PopupWin1").style.cssText = '';
    document.all.PopupWin1.style.backgroundColor = '#E0E9F8';
    document.all.PopupWin1.style.borderRight = '1px solid #455690';
    document.all.PopupWin1.style.borderBottom='1px solid #455690';
    document.all.PopupWin1.style.borderLeft='1px solid #B9C9EF';
    document.all.PopupWin1.style.borderTop='1px solid #B9C9EF';
    document.all.PopupWin1.style.position='absolute';
    document.all.PopupWin1.style.zindex='9999';
    document.all.PopupWin1.style.width='200px';
    document.all.PopupWin1.style.height='100px';
    document.all.PopupWin1.style.right='15px';
    document.all.PopupWin1.style.bottom='15px';
 
    document.getElementById("PopupWin1_header").style.cssText = '';
    document.getElementById("PopupWin1_header").style.filter = "progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr='#FFE0E9F8', EndColorStr='#FFFFFFFF')";
    document.getElementById("PopupWin1_header").style.cursor='default';
    document.getElementById("PopupWin1_header").style.position='absolute'
    document.getElementById("PopupWin1_header").style.left='2px';
    document.getElementById("PopupWin1_header").style.width='194px';
    document.getElementById("PopupWin1_header").style.top='2px';
    document.getElementById("PopupWin1_header").style.height='14px';
    document.getElementById("PopupWin1_header").style.font='12px arial,sans-serif';
    document.getElementById("PopupWin1_header").style.color='#1F336B';
    document.getElementById("PopupWin1_header").style.textDecoration='none';

    
    document.getElementById("PopupWin1_content").style.cssText = '';
    document.getElementById("PopupWin1_content").style.filter = "progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr='#FFE0E9F8', EndColorStr='#FFFFFFFF')";
     document.getElementById("PopupWin1_content").style.borderLeft='1px solid #728EB8';
     document.getElementById("PopupWin1_content").style.borderTop='1px solid #728EB8';
     document.getElementById("PopupWin1_content").style.borderBottom='1px solid #B9C9EF';
     document.getElementById("PopupWin1_content").style.borderRight='1px solid #B9C9EF';
     document.getElementById("PopupWin1_content").style.background='#E0E9F8';
     document.getElementById("PopupWin1_content").style.padding='2px';
     document.getElementById("PopupWin1_content").style.overflow='hidden';
     document.getElementById("PopupWin1_content").style.textAlign='center';
     document.getElementById("PopupWin1_content").style.position='absolute';
     document.getElementById("PopupWin1_content").style.left='2px';
     document.getElementById("PopupWin1_content").style.width='194px';
     document.getElementById("PopupWin1_content").style.top='20px';
     document.getElementById("PopupWin1_content").style.height='76px';
}
/*
当提示为错天时改变MSN的颜色
*/
function ErrorColor()
{
    document.getElementById("PopupWin1").style.cssText = '';
    document.all.PopupWin1.style.backgroundColor = '#DCC8C8';
    document.all.PopupWin1.style.borderRight = '1px solid #800000';
    document.all.PopupWin1.style.borderBottom='1px solid #800000';
    document.all.PopupWin1.style.borderLeft='1px solid #C8AAAA';
    document.all.PopupWin1.style.borderTop='1px solid #C8AAAA';
    document.all.PopupWin1.style.position='absolute';
    document.all.PopupWin1.style.zindex='9999';
    document.all.PopupWin1.style.width='200px';
    document.all.PopupWin1.style.height='100px';
    document.all.PopupWin1.style.right='15px';
    document.all.PopupWin1.style.bottom='15px';
 
    document.getElementById("PopupWin1_header").style.cssText = '';
    document.getElementById("PopupWin1_header").style.filter = "progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr='#FFDCC8C8', EndColorStr='#FFFFFFFF')";
    document.getElementById("PopupWin1_header").style.cursor='default';//
    document.getElementById("PopupWin1_header").style.position='absolute'
    document.getElementById("PopupWin1_header").style.left='2px';
    document.getElementById("PopupWin1_header").style.width='194px';
    document.getElementById("PopupWin1_header").style.top='2px';
    document.getElementById("PopupWin1_header").style.height='14px';
    document.getElementById("PopupWin1_header").style.font='12px arial,sans-serif';
    document.getElementById("PopupWin1_header").style.color='#400000';
    document.getElementById("PopupWin1_header").style.textDecoration='none';

    
    document.getElementById("PopupWin1_content").style.cssText = '';
    document.getElementById("PopupWin1_content").style.filter = "progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr='#FFDCC8C8', EndColorStr='#FFFFFFFF')";
     document.getElementById("PopupWin1_content").style.borderLeft='1px solid #A05A5A';
     document.getElementById("PopupWin1_content").style.borderTop='1px solid #A05A5A';
     document.getElementById("PopupWin1_content").style.borderBottom='1px solid #C8AAAA';
     document.getElementById("PopupWin1_content").style.borderRight='1px solid #C8AAAA';
     document.getElementById("PopupWin1_content").style.background='#DCC8C8';
     document.getElementById("PopupWin1_content").style.padding='2px';
     document.getElementById("PopupWin1_content").style.overflow='hidden';
     document.getElementById("PopupWin1_content").style.textAlign='center';
     document.getElementById("PopupWin1_content").style.position='absolute';
     document.getElementById("PopupWin1_content").style.left='2px';
     document.getElementById("PopupWin1_content").style.width='194px';
     document.getElementById("PopupWin1_content").style.top='20px';
     document.getElementById("PopupWin1_content").style.height='76px';
}

//---------------------------------------------------------------------[在页面上弹出信息提示] (函数)
//Author        ：Lanny
//Last Modifiy  ：2007/7/10
function ShowMsg(strCode,StrPara)
{
   return ShowMessage(strCode,StrPara);
}
//---------------------------------------------------------------------[在页面上弹出信息提示] (函数)
//Author        ：Lanny
//Last Modifiy  ：2007/7/10
function Show(strCode,StrPara)
{
    if(StrPara==undefined) StrPara='';
    if(strCode=="00000")
    {
         alert(StrPara);
    }
    else 
    {
  
       var msg=ShowMessage(strCode,StrPara);
       alert(msg);
   }
}
//---------------------------------------------------------------------[在页面上弹出信息提示] (函数)
//Author        ：Lanny
//Last Modifiy  ：2007/7/10
///程式说明:     　无参数
//function Show(strCode)
//{
//   var msg=ShowMessage(strCode,'');
//   alert(msg);
//}
//---------------------------------------------------------------------[给指定的Web控件,弹出确认框信息提示] (函数)
//Author        ：Lanny
//Last Modifiy  ：2007/7/10
function ShowConfirm(strCode,StrPara)
{
    if(StrPara==undefined) StrPara='';
   var msg=ShowMessage(strCode,StrPara);
   if(status=="XML Error!"){
        alert(msg);
        return false
   }
   else{
        return  confirm(msg);
    }
}
//---------------------------------------------------------------------[给指定的Web控件,弹出确认框信息提示] (函数)
//Author        ：Lanny
//Last Modifiy  ：2007/7/10
///程式说明:     　无参数
//function ShowConfirm(strCode)
//{
//   var msg=ShowMessage(strCode,'');
//   if(status=="XML Error!"){
//        alert(msg);
//        return false
//   }
//   else{
//        return  confirm(msg);
//    }
//}
//---------------------------------------------------------------------[弹出信息提示,并转向指的页面] (函数)
//Author        ：Lanny
//Last Modifiy  ：2007/7/10
function ShowAndRedirect(strCode,StrPara,url)
{
	 var msg=ShowMessage(strCode,StrPara);
	 alert(msg);
	 top.location.href=url;
}
//---------------------------------------------------------------------[弹出信息提示,并转向指的页面] (函数)
//Author        ：Lanny
//Last Modifiy  ：2007/7/10
function ShowAndBaseRedirect(strCode,StrPara,url)
{
	 var msg=ShowMessage(strCode,StrPara);
	 alert(msg);
	 window.location.href=url;
}
/*************************************************************************
程式代号：BasePage
程式名称：app_code/BasePage.cs使用

　xx. YYYY/MM/DD      VER           AUTHOR         COMMENTS
  === ==========   ==========     ==========      ==========
   1. 2006/11/17             	     Tom 	       New Create
*************************************************************************/

function ReplMsgDesc(vstrMsg,vstrPara){

		var vntArray=vstrPara.split('$');
		for(var i=0;i<vntArray.length;i++){
		    var strRepl ='{'+ i +'}' ;
			var intPos = vstrMsg.indexOf(strRepl);
			if(intPos!=-1){
				vstrMsg = vstrMsg.replace(strRepl, vntArray[i]);
			}
		}
		return vstrMsg
}

//ShowMessage(strCode,vstrPara)
//strCode 消息代号
//vstrPara 带入消息中的字串参数
//ShowMessage('E0001','def$abc') 
//strCode为E0001时得" Save error！Table:{0}{1} ",vstrPara为"def$abc"
//会将{0}用def替换掉.{1}用abc替换掉
function ShowMessage(strCode,vstrPara)
{
  var strOut;
  try{
  var url = window.location.href;
  if(document.getElementById('hidServerPort')==null)
        url = 'Data/MessageBox.xml';
    else
    {
        //alert(/^([^:]*?:\/\/.*?)[\/|:].*$/i.exec(url)[1]); 
     url = document.location.protocol + "//" + document.location.host + "/" + document.location.pathname.split("/")[1] + '/Data/MessageBox.xml';
//url = document.location.protocol + "//" + document.location.host +  '/Data/MessageBox.xml'; 
 // alert("HOST="+url);
//    url = /^([^:]*?:\/\/.*?)[\/|:].*$/i.exec(url)[1] + ':' + document.getElementById('hidServerPort').value 
//          + document.getElementById('hidAppName').value + '/Data/MessageBox.xml';
//          alert(url);
    }
    
  var objxmlDoc = LoadXml(url);  
  if(objxmlDoc==null)
  {
     url = document.location.protocol + "//" + document.location.host + "/" + '/Data/MessageBox.xml';
     objxmlDoc = LoadXml(url);  
  }

  if(typeof(objxmlDoc)=='object')
   {
    try{
       var objNode = objxmlDoc.selectSingleNode("//message[@id='" + strCode + "']");       
       strOut=ReplMsgDesc(objNode.attributes[1].text,vstrPara);
       }
    catch(e)
         {strOut='没找到对应消息ID!\n请参见'+url;}
    }
  }catch(e)
       {strOut='没找到'+url+'\n请与管理员联系!';}
 return strOut;
}
//读取XML挡
function LoadXml(vstrReq){
//var strReq;				variable to hold request string
	var root, source;		//A couple of XMLDOM objects (document and 
	var sT;
	//Show a searching message
	status = 'searching, please wait....';
	//Create an xml document object, and load the server's response
	source = new ActiveXObject('Microsoft.XMLDOM');
	source.async = false;

	//Send the request string and read the result into the XMLDOM object
	source.load(vstrReq);
	//Check to see if there was an error parsing the response from the server
	if (source.parseError != 0){
		sT = 'XML Error...\n reason:' + source.parseError.reason + '\n';
		sT += 'errorCode:' + source.parseError.errorCode + '\n';
		sT += 'filepos:' + source.parseError.filepos + '\n';
		sT += 'line:' + source.parseError.line + '\n';
		sT += 'linepos:' + source.parseError.linepos + '\n';
		sT += 'reason:' + source.parseError.reason + '\n';
		sT += 'srcText:' + source.parseError.srcText + '\n';
		sT += '<pre>' + source.xml + '</pre>\n';
		//alert(sT);
		status = 'XML Error!';
		return null;
		}
	else {
		root = source.documentElement;		//Get a reference to root XML object
		status = 'Done';
		return root;}
}
function PostXML(vstrURL,vstrXML)
{    
    var xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    xmlhttp.Open("POST", vstrURL, false);
    xmlhttp.setRequestHeader("Content-Type", "text/xml");
    xmlhttp.Send(vstrXML);
    if(xmlhttp.responseXML.xml!=""){
		var objDoc = new ActiveXObject("Microsoft.XMLDOM");
		objDoc.async = false;
		objDoc.loadXML(xmlhttp.responseXML.xml);
		return objDoc;
    }
}
