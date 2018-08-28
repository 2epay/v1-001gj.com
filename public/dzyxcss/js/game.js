function h_auto() {
    $(".game_list ul").css("min-height", 0);
    var h = $(document.body).height() + 30;
    $(window.parent.document).find("#gameFrame").height(h);
}
function page(id) {
    $("div.holder").jPages({
        containerID: id,
        first: "首页",
        previous: "上一页",
        next: "下一页",
        last: "尾页",
        perPage: 15,
        callback: function() {
            h_auto();
        }
    });
}
$(function() {
    var tm = $("#item");
    var tp = $("#gm_type");
    var s = $("#s_item");
    page("item");
    $("#s_btn").click(function() {
        var t = $("#s_text").val().trim();
        var o = tp.find("option[value='999']");
        s.hide().html("");
        if(t == "") {
            if(o.length > 0) {
                o.remove();
            }
            tp.val('0');
            tm.find("li").removeAttr("style class");
            tm.show();
            page("item");
        } else {
            if(o.length > 0) {
                tp.val('999');
            } else {
                tp.prepend('<option value="999">请选择游戏分类</option>').val('999');
            }
            $(".g_name").each(function() {
                var n = $(this).children("a").text();
                if(n.indexOf(t) >= 0) {
                    s.append($(this).parent().clone());
                }
            });
            tm.hide();
            var sL = s.find("li");
            if(sL.length > 0) {
                sL.removeAttr("style class");
                s.show();
                page("s_item");
            } else {
                $(".holder").html("");
                h_auto();
            }
        }
    });
    tp.change(function() {
        var o = $(this).find("option[value='999']");
        if(o.length > 0) {
            o.remove();
        }
        var idx = $(this).val();
        $("#s_text").val("");
        s.hide().html("");
        if(idx == 0) {
            tm.find("li").removeAttr("style class");
            tm.show();
            page("item");
        } else {
            tm.find("li").each(function() {
                if($(this).attr("cid") == idx) {
                    s.append($(this).clone());
                }
            });
            tm.hide();
            var sL = s.find("li");
            if(sL.length > 0) {
                sL.removeAttr("style class");
                s.show();
                page("s_item");
            } else {
                $(".holder").html("");
                h_auto();
            }
        }
    });
    h_auto();
});