var Game_record = (function () {
  'use strict';
  function Game_record(message) {
    this.greeting = message;
    this.d = window.document;
    this.pluginName = 'Game_record';
    this.plugin = this.d.querySelector('[data-' + this.pluginName + ']');
    this.init();
  }

  Game_record.prototype.init = function () {
  	// console.log(url);
  	// this.GetMerchantReport(url);
  }

  Game_record.prototype.GetMerchantReport = function(url) {
  	let btnSubmit = this.d.querySelector('[data-btnsubmit]');
  	let that = this;
  	btnSubmit.addEventListener('mousedown', function(e) {
  		e.preventDefault();
  		let platformCode = that.d.querySelector('[data-platformcode]').value;
  		let StartTime = that.d.querySelector('[data-starttime]').value;
  		let EndTime = that.d.querySelector('[data-endtime]').value;
  		let PageIndex = "";//that.d.querySelector('[data-pageindex]').value;
  		let TimeStamp = "";//that.d.querySelector('[data-timestamp]').value;
  		let uname = that.d.querySelector('[data-uname]').value;
  		let PageSize = "";//that.d.querySelector('[data-pagesize]').value;

  		console.log("platformCode: ",platformCode);
  		console.log("StartTime: ",StartTime);
  		console.log("EndTime: ",EndTime);
  		console.log("uname: ",uname);
		  var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		    	console.log(this.responseText);
		    }
		  };
		  xhttp.open("POST", "", true);
		  xhttp.send();
  		// var para = "";
  		// $.ajax({
    //     type: "GET",
    //     datatype: "json",
    //     async: true,
    //     url: '/QueryApi/GetMerchantReport' + para,
    //     success: function (data) {
    //       console.log(data);
    //     }
    //   });
  	});
  };

	Game_record.prototype.getClosestTargetByAttrName = function(el, attrName) {
		if ( el.hasAttribute(attrName) ) {
			return el;
		} else {
			while ( (el = el.parentElement) && !el.hasAttribute(attrName) );
			return el;
		}
	}

  return Game_record;
}());