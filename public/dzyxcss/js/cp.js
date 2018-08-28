function memberUrl(url) {
    art.dialog.open(url,{width:960,height:500,title:'会员中心'});
}
function formReset() {
    document.getElementById("orders").reset();
    $(".bian_td_qiu").removeClass("cur");
    $(".bian_td_odds").removeClass("cur");
}
function heightReset() {
    $(window.parent.document).find("#mainFrame").height($(document.body).height());
}

$(function() {
    $("table.bian").eq(0).show();
    heightReset();
    $.getJSON("/leftDao.php?callback=?", function(json) {
        $("#user_money").html(json.user_money);
    });
    var kj = $("#kj_money");
    $(".bian_td_qiu").click(function() {
        if($(this).hasClass("off")) {
            return false;
        }
        if($(this).hasClass("cur")) {
            $(this).removeClass("cur").next().removeClass("cur").next().children("input").val("");
        } else {
            $(this).addClass("cur").next().addClass("cur").next().children("input").val(kj.val());
        }
    });
    $(".bian_td_odds").click(function() {
        if($(this).hasClass("off")) {
            return false;
        }
        if($(this).hasClass("cur")) {
            $(this).removeClass("cur").prev().removeClass("cur").end().next().children("input").val("");
        } else {
            $(this).addClass("cur").prev().addClass("cur").end().next().children("input").val(kj.val());
        }
    });
    kj.keyup(function() {
        var t = $(this).val();
        var r = /^\+?[1-9][0-9]*$/;
        if(!r.test(t)) {
            $(this).val("");
            $(".bian_td_odds.cur").next().children("input").val("");
        } else {
            $(".bian_td_odds.cur").next().children("input").val(t);
        }
    });
    $("#ssc_wf").find("a").click(function() {
        if(!$(this).hasClass("on")) {
            $(this).addClass("on").siblings().removeClass("on");
        }
        var i = $(this).index();
        formReset();
        $(".bian").hide().eq(i).show();
        heightReset();
    });
    $("#fl_wf").find("a").click(function() {
        if(!$(this).hasClass("on")) {
            $(this).addClass("on").siblings().removeClass("on");
        }
        var t = $(this).text();
        var idx = $(this).attr("idx");
        formReset();
        if(idx == 0) {
            $("#b_tit").text(t);
            var n = $(this).attr("num");
            hm_odds(n);
        }
        $(".bian").hide().eq(idx).show();
        heightReset();
    });
    $("#kl_wf").find("a").click(function() {
        if(!$(this).hasClass("on")) {
            $(this).addClass("on").siblings().removeClass("on");
        }
        var i = $(this).index();
        var t = $(this).text();
        var idx = $(this).attr("idx");
        var tab = $("table.bian").eq(idx);
        formReset();
        if(i > 0 && i < 5) {
            $("#kj_money").val("").parent().hide();
            tab.css("margin-top","0").find(".bian_td_qiu").addClass("off").end().find(".bian_td_odds").addClass("off");
        } else {
            $(".kj_div").show();
            tab.css("margin-top","10px").find(".bian_td_qiu").removeClass("off").end().find(".bian_td_odds").removeClass("off");
        }
        if(idx == 0) {
            $("#b_tit").text(t);
            var n = $(this).attr("num");
            hm_odds(n);
        }
        $(".bian").hide().eq(idx).show();
        heightReset();
    });
    var chk_list = $("#auto_list").find("input[name='checkbox']");
    chk_list.click(function() {
        var nL = $(this).attr("ref");
        if($(this).is(":checked")) {
            if(nL == 0) {
                for(var i = 1; i < 50; i++) {
                    var k = i < 10 ? "0" + i : i;
                    $("#ball_" + k).addClass("cur");
                    $("#ball_" + nT + "_o" + i).addClass("cur");
                    $("#ball_" + nT + "_m" + i).children("input").val(kj.val());
                }
            } else {
                var arr = nL.split(",");
                for(var i = 0; i < arr.length; i++) {
                    $("#ball_" + arr[i]).addClass("cur");
                    $("#ball_" + nT + "_o" + parseInt(arr[i])).addClass("cur");
                    $("#ball_" + nT + "_m" + parseInt(arr[i])).children("input").val(kj.val());
                }
            }
        } else {
            if(nL == 0) {
                for(var i = 1; i < 50; i++) {
                    var k = i < 10 ? "0" + i : i;
                    $("#ball_" + k).removeClass("cur");
                    $("#ball_" + nT + "_o" + i).removeClass("cur");
                    $("#ball_" + nT + "_m" + i).children("input").val("");
                }
            } else {
                var arr = nL.split(",");
                for(var i = 0; i < arr.length; i++) {
                    $("#ball_" + arr[i]).removeClass("cur");
                    $("#ball_" + nT + "_o" + parseInt(arr[i])).removeClass("cur");
                    $("#ball_" + nT + "_m" + parseInt(arr[i])).children("input").val("");
                }
            }
        }
    });

});