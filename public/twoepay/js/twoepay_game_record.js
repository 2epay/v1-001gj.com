var Game_record = (function () {
  'use strict';

  var total_netAmount;
  var total_betAmount;
  var total_validBetAmount;
  var apiJson = [];
  var temp_p = 0;
  var arr_mem = [];
  var data = [];

  function Game_record(message) {
    arr_mem = [];
    apiJson = [];
    data = []
    this.PageIndex = 0;
    total_netAmount = 0;
    total_betAmount = 0;
    total_validBetAmount = 0;
    temp_p = 0;
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

  Game_record.prototype.GetMerchantReport = function (url) {
    let btnSubmit = this.d.querySelector('[data-btnsubmit]');
    let that = this;
    btnSubmit.addEventListener('mousedown', function (e) {
      total_netAmount = 0;
      total_betAmount = 0;
      total_validBetAmount = 0;
      temp_p = 0;
      arr_mem = [];
      apiJson = [];

      e.preventDefault();
      let platformCode = that.d.querySelector('[data-platformcode]').value;
      let StartTime = that.d.querySelector('[data-starttime]').value;
      let EndTime = that.d.querySelector('[data-endtime]').value;
      let TimeStamp = ""; //that.d.querySelector('[data-timestamp]').value;
      let uname = that.d.querySelector('[data-uname]').value;
      //let PageSize = "";//that.d.querySelector('[data-pagesize]').value;
      let table_game_record = that.d.querySelector('[data-table]');
      let table_send_fs = that.d.querySelector('[data-tfoot]');

      var xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
          let success = JSON.parse(this.responseText);
          if (success.status === 1) {
            var xhttp_api = new XMLHttpRequest();
            xhttp_api.onreadystatechange = function () {
              if (this.readyState == 4 && this.status == 200) {
                let success_api = JSON.parse(this.responseText);
                let page_index = Math.ceil(success_api.TotalCount / 50);
                // console.log(success.beforeurl);
                // console.log(success_api);
                if (page_index > 1) {
                  that.ajaxGetFullData(platformCode, StartTime, EndTime, uname, table_game_record, table_send_fs, page_index, url);
                } else {
                  if (table_game_record) {
                    that.updateTableGameRecord(success_api, platformCode);
                  }
                  if (table_send_fs) {
                    that.updateTableSendFs(success_api, platformCode);
                  }
                }
              }
            };
            xhttp_api.open("GET", success.url, true);
            xhttp_api.send();
          } else return;
        }
      };
      xhttp.open("POST", url, true);
      xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
      xhttp.send('platformCode=' + platformCode + '&StartTime=' + StartTime + '&EndTime=' + EndTime + '&uname=' + uname + '&PageIndex=' + this.PageIndex);
    });
  };

  Game_record.prototype.ajaxGetFullData = function (platformCode, StartTime, EndTime, uname, table_game_record, table_send_fs, page_index, url) {

    let that = this;
    arr_mem = [];
    for (var i = 0; i < page_index; i++) {

      this.PageIndex = i + 1;
      var xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {

          let success = JSON.parse(this.responseText);
          if (success.status === 1) {

            var xhttp_api = new XMLHttpRequest();
            xhttp_api.onreadystatechange = function () {
              if (this.readyState == 4 && this.status == 200) {
                let success_api = JSON.parse(this.responseText);
                for (var k = 0; k < that.PageIndex; k++) {
                  if (!apiJson[k] || apiJson[k] === apiJson[k + 1]) {
                    apiJson[k] = success_api;
                  } else {}
                }
                temp_p++;
                if (table_game_record && temp_p === page_index) {
                  that.updateTableGameRecord(apiJson, platformCode);
                }
                if (table_send_fs && temp_p === page_index) {
                  that.updateTableSendFs(apiJson, platformCode);
                }
              } else {
                return;
              }
            };

            xhttp_api.open("GET", success.url, true);
            xhttp_api.send();
          } else return;
        }
      };
      xhttp.open("POST", url, true);
      xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
      xhttp.send('platformCode=' + platformCode + '&StartTime=' + StartTime + '&EndTime=' + EndTime + '&uname=' + uname + '&PageIndex=' + this.PageIndex);
    }
  };

  Game_record.prototype.updateTableSendFs = function (success_api, platformCode) {
    let table_foot = this.d.querySelector('[data-tfoot]');
    let eltbody = this.d.querySelector('[data-tbody]');
    let html_tbody = '';
    for (var j = 0; j < success_api.length; j++) {
      for (var i = 0; i < success_api[j].data.length; i++) {
        // var timestamp = success_api.data[i].add_time.replace(/([^0-9]*)/g, '');
        // var readable_date = new Date(Number(timestamp)).toLocaleString();
        // total_netAmount = total_netAmount + parseFloat(success_api[j].data[i].result);
        // total_betAmount += success_api[j].data[i].bet;
        //total_validBetAmount = total_validBetAmount + success_api.data[i].valid_bet;

        if (arr_mem.length > 0) {
          let temp_t = 0;
          arr_mem.forEach(function (item) {
            temp_t++;
            if (item.username == success_api[j].data[i].username) {

              temp_t = 0;
              item.balance += success_api[j].data[i].balance;
              item.bet += success_api[j].data[i].bet;
              item.cpayout += success_api[j].data[i].cpayout;
              item.odds += success_api[j].data[i].odds;
              item.result += success_api[j].data[i].result;
              item.valid_bet += success_api[j].data[i].valid_bet;
              item.count++;
            } else if (temp_t == arr_mem.length && temp_t !== 0) {
              arr_mem.push(success_api[j].data[i]);
              arr_mem[arr_mem.length - 1]['count'] = 1;
            }
          });
        } else {
          arr_mem.push(success_api[j].data[i]);
          arr_mem[arr_mem.length - 1]['count'] = 1;
        }
      }
    }

    for (let k = 0; k < arr_mem.length; k++) {
      total_betAmount += arr_mem[k].bet;

      html_tbody += "<tr>" +
        "<td>" + arr_mem[k].username + "</td>" +
        "<td>" + arr_mem[k].username + "</td>" +
        "<td>" + arr_mem[k].username + "</td>" +
        "<td>" + arr_mem[k].count + "</td>" +
        "<td>" + arr_mem[k].bet + "</td>" +
        "<td>" + arr_mem[k].username + "</td>" +
        "<td>" + arr_mem[k].username + "</td>" +
        "<td>" + arr_mem[k].username + "</td>" +
        "</tr>";
    }

    let html_table = //"<tr>"+
      "<td><strong style='color: red'>总合计</strong></td>" +
      "<td colspan='2'></td>" +
      "<td><strong style='color: red'>" + success_api[0].TotalCount + "</strong></td>" +
      "<td><strong style='color: red'>" + total_betAmount + "</strong></td>" +
      "<td colspan='2'></td>" +
      "<td><strong style='color: red'></strong></td>";
    // "</tr>"+
    // "<tr>"+
    //     "<td colspan='8'>"+
    //         "<button type='button' data-btnsendreport class='btn btn-primary btn-md'>一键返水</button>"+
    //     "</td>"+
    // "</tr>";
    table_foot.innerHTML = html_table;
    eltbody.innerHTML = html_tbody;
  };

  Game_record.prototype.updateTableGameRecord = function (success_api, platformCode) {

    /* let html_table = "<table class='table table-bordered table-hover text-center'>" +
      "<tr>" +
      "<th style='width: 5%'>ID</th>" +
      "<th>账号</th>" +
      "<th style='width: 5%'>平台名称</th>" +

      "<th style='width: 10%'>玩法名字</th>" +
      "<th style='width: 10%'>输赢情况</th>" +
      "<th style='width: 10%'>下注金额</th>" +
      "<th style='width: 10%'>有效下注</th>" +
      "<th style='width: 10%'>彩票种类</th>" +
      "<th style='width: 10%'>下注号码</th>" +
      "<th style='width: 20%'>下注时间</th>" +
      "</tr>"; */
    for (let j = 0; j < success_api.length; j++) {
      for (var i = 0; i < success_api[j].data.length; i++) {
        data.push(success_api[j].data[i]);
        // var timestamp = success_api[j].data[i].add_time.replace(/([^0-9]*)/g, '');
        // var readable_date = new Date(Number(timestamp)).toLocaleString();
        total_netAmount = total_netAmount + success_api[j].data[i].result;
        total_betAmount = total_betAmount + success_api[j].data[i].bet;
        total_validBetAmount = total_validBetAmount + success_api[j].data[i].valid_bet;
        /* html_table = html_table +
          "<tr><td></td><td>" + success_api[j].data[i].order_num +
          "</td><td>" + platformCode +
          "</td><td>" + success_api[j].data[i].play_name +
          "</td><td>" + success_api[j].data[i].result +
          "</td><td>" + success_api[j].data[i].bet +
          "</td><td>" + success_api[j].data[i].valid_bet +
          "</td><td>" + success_api[j].data[i].fc_name +
          "</td><td>" + success_api[j].data[i].play_details +
          "</td><td>" + readable_date + "</td><td></tr>"; */
      }
    }

    /* let html_footable = "</tr><tr>" +
      "<td><strong style='color: red'>总合计</strong></td>" +
      "<td colspan='3'></td>" +
      "<td><strong style='color: red'>" + total_netAmount + "</strong></td>" +
      "<td><strong style='color: red'>" + total_betAmount + "</strong></td>" +
      "<td><strong style='color: red'>" + total_validBetAmount + "</strong></td>" +
      "<td colspan='4'></td>" +
      "</tr>"; */

    this.drawTable(15, 0, platformCode);
    // let total_record = this.d.querySelector('[data-total-record]');
    // total_record.innerHTML = success_api[0].TotalCount;
    // let html_tfoot = this.d.querySelector('[data-tfoot]');
    // html_tfoot.innerHTML = html_footable;
  };
  
  Game_record.prototype.drawTable = function (paginate, page_index, platformCode) {
    
    let pageNum = Math.ceil(data.length / parseInt(paginate));
    let total_page_netAmount = 0;
    let total_page_betAmount = 0;
    let total_page_validBetAmount = 0;
    let html_table = "<table class='table table-bordered table-hover text-center'>" +
      "<tr>" +
      "<th style='width: 5%'>ID</th>" +
      "<th>账号</th>" +
      "<th style='width: 5%'>平台名称</th>" +

      "<th style='width: 10%'>玩法名字</th>" +
      "<th style='width: 10%'>输赢情况</th>" +
      "<th style='width: 10%'>下注金额</th>" +
      "<th style='width: 10%'>有效下注</th>" +
      "<th style='width: 10%'>彩票种类</th>" +
      "<th style='width: 10%'>下注号码</th>" +
      "<th style='width: 20%'>下注时间</th>" +
      "</tr>";
    for (let i = page_index*paginate; i < paginate; i++) {
      let timestamp = data[i].add_time.replace(/([^0-9]*)/g, '');
      let readable_date = new Date(Number(timestamp)).toLocaleString();
      total_page_netAmount += data[i].result;
      total_page_betAmount += data[i].bet;
      total_page_validBetAmount += data[i].valid_bet;
      html_table +=
      "<tr><td>"+i+"</td><td>" + data[i].order_num +
      "</td><td>" + platformCode +
      "</td><td>" + data[i].play_name +
      "</td><td>" + data[i].result +
      "</td><td>" + data[i].bet +
      "</td><td>" + data[i].valid_bet +
      "</td><td>" + data[i].fc_name +
      "</td><td>" + data[i].play_details +
      "</td><td>" + readable_date + "</td><td></tr>";
    }
    let html_footable = "<tfoot></tr><tr>" +
      "<td><strong style='color: red'>总合计</strong></td>" +
      "<td colspan='3'></td>" +
      "<td><strong style='color: red'>" + total_page_netAmount + "</strong></td>" +
      "<td><strong style='color: red'>" + total_page_betAmount + "</strong></td>" +
      "<td><strong style='color: red'>" + total_page_validBetAmount + "</strong></td>" +
      "<td colspan='4'></td>" +
      "</tr></tfoot></table>";
    // html_table += "<tfoot data-tfoot></tfoot></table>";
    let table = this.d.querySelector('[data-table]');
    let total_record = this.d.querySelector('[data-total-record]');
    let paginate_record = this.d.querySelector('[data-paginate]');
    total_record.innerHTML = apiJson[0].TotalCount;
    table.innerHTML = html_table + html_footable;
  }

  Game_record.prototype.getClosestTargetByAttrName = function (el, attrName) {
    if (el.hasAttribute(attrName)) {
      return el;
    } else {
      while ((el = el.parentElement) && !el.hasAttribute(attrName));
      return el;
    }
  }

  return Game_record;
}());
window.addEventListener('DOMContentLoaded', function () {
  var GameRecord = new Game_record();
});