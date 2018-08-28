$(document).ready(function(){
	lotterylist();
})
function lotterylist() {
	$.ajax({
		url: 'http://hdxpj77.com/js/api.php?action=list',
		dataType: 'json',
		cache: false,
		type: 'GET',
		success: function(obj) {
			var sAwardEle = "";
			$.each(obj, function(i, award) {
				sAwardEle += '<span>会员：<em>'+award.user_name+'</em>成功办理<i>'+award.active_name+'</i></span>'
			});
			$(".noticelist marquee").html(sAwardEle);
		},
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			var x = 1
		}
	})
}