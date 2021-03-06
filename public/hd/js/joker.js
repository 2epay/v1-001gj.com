﻿$(document).ready(function(){
	$('.query').on('click', function(){$(".con1").show();$(".con2").hide();layer.open({type: 1, zIndex: 100, title: false,area: ['744px'],skin: 'layui-layer-nobg',shade: 0.7,closeBtn :true,shadeClose: true,content: $('#querycon')});});
	$('.check').on('click', function(){$(".con1").show();$(".con2").hide();layer.open({type: 1, zIndex: 100, title: false,area: ['744px'],skin: 'layui-layer-nobg',shade: 0.7,closeBtn :true,shadeClose: true,content: $('#querycon')});});
	$('.look').live("click",function(){
			if($(this).attr("title")!=""){layer.alert($(this).attr("title"),{title:"回复内容"})}else{layer.alert("审核中，请耐心等待",{title:"提示"})}
	});
	setInterval(function(){$(".flicker").toggleClass("color1")},350);
	$(".checksub").click(function(){
			var uname = $("#query_user").val();
			if(uname == ""){
				layer.alert("会员帐号不能为空!");
				return false;
			}
			$(".con1").hide();
			$(".con2").fadeIn();
			queryPage(1);		
	});  
	lotterylist();
})
function lotterylist() {
	$.ajax({
		url: 'api.php?action=list',
		dataType: 'json',
		cache: false,
		type: 'GET',
		success: function(obj) {
			var sAwardEle = "";
			$.each(obj, function(i, award) {
				sAwardEle += '<li>新葡京会员：<span>'+award.user_name+'</span>成功办理<i>'+award.active_name+'</i></li>'
			});
			$(".infoList").html(sAwardEle);
			jQuery(".list").slide({mainCell:".bd ul",autoPlay:true,effect:"topMarquee",vis:5,interTime:50,trigger:"click"});
		},
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			var x = 1
		}
	})
}

var pagesize = 5;

function queryPage(page) {
	$.ajax({
		url: 'api.php?action=querylist&p=' + page + '&size=' + pagesize,
		dataType: 'json',
		cache: false,
		data: {
			user_name: $("#query_user").val(),
			act_id: $("#query_option").val()
		},
		type: 'GET',
		success: function(obj) {
			if (obj.count != 0) {
				var sHtml1 = "";
				$.each(obj.data, function(i, award) {
					var temp = '<td>等待审核</td>';
					if (award.state == "1") {
						temp = '<td><font color=green>已通过</font></td>'
					}
					if (award.state == "2") {
						temp = '<td><font color=red>已拒绝</font></td>'
					}
					sHtml1 += "<tr><td>" + award.user_name + "</td><td>" + award.apply_time + "</td>" + temp + "<td><a class='look' href='javascript:;' title='" + award.check_desc + "' >点击查看</a></td></tr>";
				}) 
				var sPage = Paging(page, pagesize, obj.count, 2, "queryPage", '', '', '上一页', '下一页');
				$(".pages").html(sPage);
				$("#query_content").html(sHtml1)
			} else {
				$("#query_content").html("<tr><td colspan='4'>未查询到信息</td></tr>")
			}
		},
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			var x = 1
		}
	})
}


function Paging(pageNum, pageSize, totalCount, skipCount, fuctionName, currentStyleName, currentUseLink, preText, nextText, firstText, lastText) {
	var returnValue = "";
	var begin = 1;
	var end = 1;
	var totalpage = Math.floor(totalCount / pageSize);
	if (totalCount % pageSize > 0) {
		totalpage++
	}
	if (preText == null) {
		firstText = "prev"
	}
	if (nextText == null) {
		nextText = "next"
	}
	begin = pageNum - skipCount;
	end = pageNum + skipCount;
	if (begin <= 0) {
		end = end - begin + 1;
		begin = 1
	}
	if (end > totalpage) {
		end = totalpage
	}
	for (count = begin; count <= end; count++) {
		if (currentUseLink) {
			if (count == pageNum) {
				returnValue += "<a class=\"" + currentStyleName + "\" href=\"javascript:void(0);\" onclick=\"" + fuctionName + "(" + count.toString() + ");\">" + count.toString() + "</a> "
			} else {
				returnValue += "<a href=\"javascript:void(0);\" onclick=\"" + fuctionName + "(" + count.toString() + ");\">" + count.toString() + "</a> "
			}
		} else {
			if (count == pageNum) {
				returnValue += "<a class=\"" + currentStyleName + "\">" + count.toString() + "</a> "
			} else {
				returnValue += "<a href=\"javascript:void(0);\" onclick=\"" + fuctionName + "(" + count.toString() + ");\">" + count.toString() + "</a> "
			}
		}
	}
	if (pageNum - skipCount > 1) {
		returnValue = " ... " + returnValue
	}
	if (pageNum + skipCount < totalpage) {
		returnValue = returnValue + " ... "
	}
	if (pageNum > 1) {
		returnValue = "<a href=\"javascript:void(0);\" onclick=\"" + fuctionName + "(" + (pageNum - 1).toString() + ");\"> " + preText + "</a> " + returnValue
	}
	if (pageNum < totalpage) {
		returnValue = returnValue + " <a href=\"javascript:void(0);\" onclick=\"" + fuctionName + "(" + (pageNum + 1).toString() + ");\">" + nextText + "</a>"
	}
	if (firstText != null) {
		if (pageNum > 1) {
			returnValue = "<a href=\"javascript:void(0);\" onclick=\"" + fuctionName + "(1);\">" + firstText + "</a> " + returnValue
		}
	}
	if (lastText != null) {
		if (pageNum < totalpage) {
			returnValue = returnValue + " " + " <a href=\"javascript:void(0);\" onclick=\"" + fuctionName + "(" + totalpage.toString() + ");\">" + lastText + "</a>"
		}
	}
	return returnValue
}