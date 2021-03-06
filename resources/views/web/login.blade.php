<html>
 <head>
  <title>{{ $_SystemConfig->site_name }}—提示页</title>

  <style type="text/css">
   .alert_div{position:relative;text-align:center; z-index:2000;}
  </style>
  
  
  
  
  
  
  <style>
html {
    text-align: center;
}
body {
	margin:0; 
	padding:0;
	font-family: Verdana, Geneva, sans-serif;
	background-color:#FFF;
	background:url(images/bg.jpg);
	background-size: 100% 100%;
}
h1 {
    background-color: #333;
    background-image: -webkit-linear-gradient(hsla(0,0%,100%,.05), hsla(0,0%,0%,.1));
    background-image:    -moz-linear-gradient(hsla(0,0%,100%,.05), hsla(0,0%,0%,.1));
    background-image:     -ms-linear-gradient(hsla(0,0%,100%,.05), hsla(0,0%,0%,.1));
    background-image:      -o-linear-gradient(hsla(0,0%,100%,.05), hsla(0,0%,0%,.1));
    background-image:         linear-gradient(hsla(0,0%,100%,.05), hsla(0,0%,0%,.1));
    color: #fff0f5;
    font-size: 3em;
    font-weight: bold;
    line-height: 1;
    margin:0;
    padding: 0.5em;
    text-align: center;
    text-shadow: 0 .05em .05em hsla(0,0%,0%,.1);
}
h1 p a {
	margin:20px 0;
	font-size:16px;
	color:#ccc;
	text-decoration:none;
}
hr {
    border: 1px solid #333;
    margin: 0 0 2.5em 0;
}
h1 p a:hover {
	color:#FFF;
}
.content hr {
	border:0 none;
	margin:0 0 1em 0;
}
label:after {
    color: #fff;
    content: '#';
}
input {
    background: #fff0f5;
    border: 1px solid #222;
    color: #333;
    margin-right: 5.5em;
    padding: .5em;
}
.content {
    font-size: 100%;
    margin: 0 auto;
	display:inline-block;;
    padding: 3em 6em;
    text-align: left;
	padding:0;
}
.content p {
    color: #333;
    display: inline-block;
    font-size: 1em;
    font-weight: bold;
    line-height: 1;
    margin: -1em 1em 0 0;
    width: 6em;
    vertical-align: middle;
}
.footer {
    background-color: #333;
    color: #fff;
    font-size: 1em;
    font-weight: bold;
    line-height: 1;
    margin: 2em 0 0 0;
    padding: 2em;
    text-align: center;
}
.attribution {
    color: #888;
    margin-top: 1em;
    text-align: right;
    width: 100%;
}
.attribution a {
    color: #888;
	text-decoration:none;
}
.attribution a:hover,
.attribution a:focus {
    color: #fff;
}

/* Button - these styles are the good stuff */

.button {
    background-color: #999;
    background-image: -webkit-linear-gradient(hsla(0,0%,100%,.05), hsla(0,0%,0%,.1));
    background-image:    -moz-linear-gradient(hsla(0,0%,100%,.05), hsla(0,0%,0%,.1));
    background-image:     -ms-linear-gradient(hsla(0,0%,100%,.05), hsla(0,0%,0%,.1));
    background-image:      -o-linear-gradient(hsla(0,0%,100%,.05), hsla(0,0%,0%,.1));
    background-image:         linear-gradient(hsla(0,0%,100%,.05), hsla(0,0%,0%,.1));
    border: none;
    border-radius: .5em;
    box-shadow: inset 0 0 0 1px hsla(0,0%,0%,.2),
                inset 0 2px 0 hsla(0,0%,100%,.1),
                inset 0 1.2em 0 hsla(0,0%,100%,0.1),
                inset 0 -.2em 0 hsla(0,0%,100%,.1),
                inset 0 -.25em 0 hsla(0,0%,0%,.25),
                0 .25em .25em hsla(0,0%,0%,.05);
    color: #444;
    cursor: pointer;
    display: inline-block;
    font-family: sans-serif;
    font-size: 1em;
    font-weight: bold;
    line-height: 1.5;
    margin: 0 .5em 1em;
    padding: .5em 1.5em .75em;
    position: relative;
    text-decoration: none;
    text-shadow: 0 1px 1px hsla(0,0%,100%,.25);
    vertical-align: middle;
}
.button:hover {
    outline: none;
}
.button:hover,
.button:focus {
    box-shadow: inset 0 0 0 1px hsla(0,0%,0%,.2),
                inset 0 2px 0 hsla(0,0%,100%,.1),
                inset 0 1.2em 0 hsla(0,0%,100%,.1),
                inset 0 -.2em 0 hsla(0,0%,100%,.1),
                inset 0 -.25em 0 hsla(0,0%,0%,.25),
                inset 0 0 0 3em hsla(0,0%,100%,.2),
                0 .25em .25em hsla(0,0%,0%,.05);
}
.button:active {
    box-shadow: inset 0 0 0 1px hsla(0,0%,0%,.2),
                inset 0 2px 0 hsla(0,0%,100%,.1),
                inset 0 1.2em 0 hsla(0,0%,100%,.1),
                inset 0 0 0 3em hsla(0,0%,100%,.2),
                inset 0 .25em .5em hsla(0,0%,0%,.05),
                0 -1px 1px hsla(0,0%,0%,.1),
                0 1px 1px hsla(0,0%,100%,.25);
    margin-top: .25em;
    outline: none;
    padding-bottom: .5em;
}

/* Light Text */

.lightText {
    box-shadow: inset 0 0 0 1px hsla(0,0%,0%,.25),
                inset 0 2px 0 hsla(0,0%,100%,.1),
                inset 0 1.2em 0 hsla(0,0%,100%,.05),
                inset 0 -.2em 0 hsla(0,0%,100%,.1),
                inset 0 -.25em 0 hsla(0,0%,0%,.5),
                0 .25em .25em hsla(0,0%,0%,.1);
    color: #fff;
    text-shadow: 0 -1px 1px hsla(0,0%,0%,.25);
}
.lightText:hover,
.lightText:focus {
    box-shadow: inset 0 0 0 1px hsla(0,0%,0%,.25),
                inset 0 2px 0 hsla(0,0%,100%,.1),
                inset 0 1.2em 0 hsla(0,0%,100%,.05),
                inset 0 -.2em 0 hsla(0,0%,100%,.1),
                inset 0 -.25em 0 hsla(0,0%,0%,.5),
                inset 0 0 0 3em hsla(0,0%,100%,.2),
                0 .25em .25em hsla(0,0%,0%,.1);
}
.lightText:active {
    box-shadow: inset 0 0 0 1px hsla(0,0%,0%,.25),
                inset 0 2px 0 hsla(0,0%,100%,.1),
                inset 0 1.2em 0 hsla(0,0%,100%,.05),
                inset 0 0 0 3em hsla(0,0%,100%,.2),
                inset 0 .25em .5em hsla(0,0%,0%,.05),
                0 -1px 1px hsla(0,0%,0%,.1),
                0 1px 1px hsla(0,0%,100%,.25);
}

/* Large */

.large {
    font-size: 1.25em;
}

/* Medium */

.medium {
    font-size: 1em;
}

/* Small */

.small {
    font-size: .75em;
}

/* Regular */

.regular {
    border-radius: .5em;
}

/* Square */

.square {
    border-radius: .25em;
}

/* Round */

.round {
    border-radius: 1.25em;
}

/* Red */

.red {
    background-color: #ff6c6f;
}

/* Orange */

.orange {
    background-color: #f6cf6f;
}

/* Yellow */

.yellow {
    background-color: #fff6c6;
}

/* Green */

.green {
    background-color: #6fcf6f;
}

/* Blue */

.blue {
    background-color: #6fc6ff;
}

/* Purple */

.purple {
    background-color: #f6c6ff;
}

/* White */

.white {
    background-color: #eee;
}

/* Grey */

.grey {
    background-color: #999;
}

/* Black */

.black {
    background-color: #444;
}

/* Custom */

.custom {
    background-color: #fff0f5; /* Set the button color here */
    color: #444; /* Remove this for a dark background */
}
</style>

 </head>
 <body onload="fun_open()">
  <div id="test" style="display:none;"  height:100%">

  <div class="alert_div" style="opacity:1; filter:alpha(opacity=100);">

  
 
<div class="buttons">
  <h1>您好！请先登录! </h1>
	
<a class="button lightText large square black" href="{{ url('/') }}" onclick="window.close();">确定</a>

</div>
  </div>
  </div>

 <script type="text/javascript">
  function fun_close(){
    document.getElementById("test").style.display = 'none';
  }
  function fun_open(){
    document.getElementById("test").style.display = '';
  }
</script>
 </body>
</html>