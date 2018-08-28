 window.onload = function(){
    showTime();
  }
 
  function showTime(){
    var myDate = new Date();
    var year = myDate.getFullYear();
    var month = myDate.getMonth() + 1;
    var date = myDate.getDate();
    var dateArr = ["日","一",'二','三','四','五','六'];
    var day = myDate.getDay();
    var hours = myDate.getHours();
    var minutes = formatTime(myDate.getMinutes());
    var seconds = formatTime(myDate.getSeconds());
 
    var systemTime = document.getElementById("time");
    systemTime.innerHTML = " " + year + "/" + month +"/" + date + "/" +  " " + hours + ":" + minutes + ":" + seconds;
    setTimeout("showTime()",500);
  }
 
  //格式化时间：分秒。
  function formatTime (i){
    if(i < 10){
      i = "0" + i;
    }
    return i;
  }
