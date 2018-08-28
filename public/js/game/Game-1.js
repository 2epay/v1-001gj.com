if (typeof user_lang == 'undefined') {
  var user_lang = "cn";
}

switch(user_lang){
    case 'cn':
        var msg_require_login = "请先登录";
        var msg_platform_shutdown = "当前系统已关闭改平台，详情请询问客服。";
        var msg_insufficient_balance = "游戏账户余额不足(当前：￥%)";
        var msg_system_maintain = "系统维护中。。。";
        var msg_error_get_balance = "无法正确获取余额！";
        var msg_incorrect_amount = "请填写正确的转账金额";
        var msg_empty_balance = "当前主账户余额为0，请先去存款。";
        var msg_main_account = "主账户";
        var msg_topup = "充值";
        var msg_action_deposit = "去存款";
        var msg_topup_amount = "转入金额";
        var msg_input_amount = "输入金额";
        var msg_join_auto = "自动转账进入游戏";
        var msg_join_ignore_alert = "忽略提醒进入游戏";        
        break;
    case 'en':
        var msg_require_login = "请先登录";
        var msg_platform_shutdown = "当前系统已关闭改平台，详情请询问客服。";
        var msg_insufficient_balance = "游戏账户余额不足(当前：￥%)";
        var msg_system_maintain = "系统维护中。。。";
        var msg_error_get_balance = "无法正确获取余额！";
        var msg_incorrect_amount = "请填写正确的转账金额";
        var msg_empty_balance = "当前主账户余额为0，请先去存款。";
        var msg_main_account = "主账户";
        var msg_topup = "充值";
        var msg_action_deposit = "去存款";
        var msg_topup_amount = "转入金额";
        var msg_input_amount = "输入金额";
        var msg_join_auto = "自动转账进入游戏";
        var msg_join_ignore_alert = "忽略提醒进入游戏";      
        break;
    case 'tl':
        var msg_require_login = "请先登录";
        var msg_platform_shutdown = "当前系统已关闭改平台，详情请询问客服。";
        var msg_insufficient_balance = "游戏账户余额不足(当前：￥%)";
        var msg_system_maintain = "系统维护中。。。";
        var msg_error_get_balance = "无法正确获取余额！";
        var msg_incorrect_amount = "请填写正确的转账金额";
        var msg_empty_balance = "当前主账户余额为0，请先去存款。";
        var msg_main_account = "主账户";
        var msg_topup = "充值";
        var msg_action_deposit = "去存款";
        var msg_topup_amount = "转入金额";
        var msg_input_amount = "输入金额";
        var msg_join_auto = "自动转账进入游戏";
        var msg_join_ignore_alert = "忽略提醒进入游戏";      
        break;
}

function gameNotify(status, type) {
    var flag = false;
    switch (status) {
        case 0:
            flag = true;
            break;
        case 1:
            alert(msg_require_login);
            break;
        case 2:
            notify(msg_platform_shutdown);
            break;
        default :
            break;
    }
    return flag;
}

function loadLives(gpid, status, type, gameCode, extData){
    var flag = gameNotify(status);
    var accid = '10000';
    var url = '';
    if(flag){
        switch(gpid){
            case '208925621341':    // 沙龙真人
                accid = "208925621340";
                url = '/liveCasino/salon';
                break;
            case '420987656201':    // newPT真人
                accid = '420987656200';
                url = '/liveCasino/pt?gameCode=plba';
                break;
            case '451819984710':    // PT真人
                break;
            case '472533781201':    // JPT真人
                break;
            case '550323423301':    // IM PT真人
                break;
            case '550423423401':    // IM真人
                accid = "550423423400";
                url = '/liveCasino/imold';
                break;
            case '773562192801':    // 申博真人
                accid = "773562192800";
                url = '/liveCasino/tgp';
                break;
            case '905647853201':    // EBet
                accid = "905647853200";
                url = '/liveCasino/ebet';
                break;
            case '940256904101':    // 新EBet
                accid = "940256904100";
                url = '/liveCasino/ebetn';
                break;
            case '952038801201':    // LD真人
                accid = "952038801200";
                url = '/liveCasino/LDGaming';
                break;
            case '2817460124802':    // IM One All PT真人
                url = "/liveCasino/IMOneAll?gpid=" + gpid + "&gameCode=" + gameCode;
                break;
            case '9283948292830':    // 欧博真人
                accid = "9283948292833";
                url = "/liveCasino/allbet";
                break;
            case '11964220589606':    // MG真人
                accid = "11964220589608960";
                url = "/liveCasino/mg";
                break;
            case '39500154618880':    // 188真人
                accid = "39500154618880";
                url = '/liveCasino/ldClient';
                if (gameCode) {
                    url += "?g_type=" + gameCode;
                }
                break;
            case '350808494186211':    // BB视讯
                accid = "350808494186201";
                url = '/liveCasino/bbin';
                if (gameCode) {
                    url += "?page_site=" + gameCode;
                }
                break;
            case '3277767810617344':    // GD真人
                accid = "3277767810617344";
                url = '/liveCasino/gdClient';
                if (gameCode) {
                    url += "?view=" + gameCode;
                }
                break;
            case '38712217599873024':    // AG真人
                accid = "38712217599873024";
                url = '/liveCasino/agClient';
                break;
            default :
                alert('没有找到游戏！');
                break;
        }
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + url);
    }
}

function loadIMOneAll(gpid, status, type, gameCode, extData) {
    var accid = '10000';
    var url = '/home/wh';
    var flag = gameNotify(status);
    if(flag){
        switch(gpid){
            case 2817460122701:     // MWGFish
                accid = '2817460122700';
                url = '../liveCasino/IMOneAll?gpid=' + gpid;
                break;
            case 2817460122801:     // GGFish
                accid = '2817460122800';
                url = '../liveCasino/IMOneAll?gpid=' + gpid;
                break;
            case 2817460123801:     // Slot
                accid = '2817460123800';
                url = '../liveCasino/IMOneAll?gpid=' + gpid + '&gameCode=' + gameCode;
                break;
            case 2817460124801:     // PT Slot
                accid = '2817460124800';
                url = '../liveCasino/IMOneAll?gpid=' + gpid + '&gameCode=' + gameCode;
                break;
            case 2817460124802:     // PT LD
                accid = '2817460124800';
                url = '../liveCasino/IMOneAll?gpid=' + gpid + '&gameCode=' + gameCode;
                break;
            default :
                break;
        }
    	window.open(url);
    }
}

function loadSports(gpid, status, type, gameCode, extData){
    var accid = '10000';
    var url = '/home/wh';
    var flag = gameNotify(status);
    if(flag){
        switch(gpid){
            case '629085827501':     // eSports
                accid = '629085827500';
                url = '/sports/esports';
                break;
            case '350808494186210':  // BBIN
                accid = '350808494186201';
                url = '/sports/bbin';
                break;
            default :
                break;
        }
    }
    window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + url);
}

function loadFlashGames(gpid, status, type, gameCode, extData){
    var flag = gameNotify(status);
    var accid = "10000";
    var url = "home/wh";
    if(flag){
        switch(gpid){
            case '8192446253701':     // NT
                accid = '819244625370';
                url = '/game/nt?game=' + gameCode;
                break;
            case '350808494186214':   // BBIN
                accid = '350808494186201';
                url = "/game/bbin";
                if (gameCode) {
                    url += "?gametype=" + gameCode;
                }
                break;
            case '11964220589608960': // MG
                accid = "11964220589608960";
                url = '/game/MgGaming';
                if (gameCode) {
                    url += "?gameId=" + gameCode;
                }
                break;
            case '387122175998732':   // AG
                accid = "38712217599873024";
                url = '/game/ag?gameType=500';
                break;
            case '387122175998733':   // AG
                accid = "38712217599873024";
                url = '/game/ag?gameType=6';
                break;
            case '550223423201':      //IMOslot
                accid = "550223423200";
                url = '/game/imoslot';
                if (gameCode) {
                    url += "?gameCode=" + gameCode;
                }
                break;
            case '550123423101':      // IMOgg
                accid = "550123423100";
                url = '/game/imogg';
                break;
            case '550523423501':      //IMO_MWG_Fishing
                accid = "550523423500";
                url = '/game/IMMWGFishing';
                break;
            case '550323423301':      //IMOpt
            case '550323423302':      //IMOpt
                accid = "550323423300";
                url = '/game/imopt';
                if (gameCode) {
                    url += "?gameCode=" + gameCode;
                }
                break;
            case '7295220587201':     //CQ
                accid = "7295220587200";
                url = '/game/CQGame';
                if (gameCode) {
                    url += "?gameCode=" + gameCode;
                }
                break;
            case '420987656202':      //PT
                type = type.toLowerCase();
                accid = "7295220587200";
                url = '/game/pt?gameCode=' + type;
                break;
            case '2817460123801':     // Slot
                accid = '2817460123800';
                url = '../liveCasino/IMOneAll?gpid=' + gpid + '&gameCode=' + gameCode;
                window.open(url);
                return;
            case '2817460124801':     // PT Slot
                accid = '2817460124800';
                url = '../liveCasino/IMOneAll?gpid=' + gpid + '&gameCode=' + gameCode;
                window.open(url);
                return;
            default :
                break;
        }

        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + url);
    }
}

function loadLottery(gpid, status, type, gameCode, extData){
    var accid = '10000';
    var url = '/home/wh';
    var flag = gameNotify(status);
    if(flag){
        switch(String(gpid)){
            case '4040195926801':     // IG 时时彩游戏
            case '4040195926802':     // IG 香港彩游戏
                accid = '4040195926800';
                url = '/lottery/ig?gpid=' + gpid + "&lotteryPage=" + gameCode;
                break;
            case '7821359015601':     // 蚂蚁彩票
                accid = '7821359015600';
                url = '/lottery/cpwin';
                break;
            case '873415962801':     // OPUS快乐彩
                accid = "873415962800";
                url = '/lottery/opus';
                break;
            case '520723134101':     // KG
                accid = "520723134100";
                url = '/lottery/kg?gameType=' + gameCode + '||stakeId=' + extData;
                break;
            case '7589283920390':     // 双赢彩票
                accid = "7589283920394";
                url = '/lottery/sgwin?lottery=' + gameCode;
                break;
            case '285467739648':     // 凤凰彩票
                accid = "285467739648";
                url = '/lottery/fh';
                if (gametype) {
                    url += "?type=" + gametype;
                }
                break;
            case '350808494186212':     // BB彩票
                accid = "350808494186201";
                url = '/lottery/bbin?page_site=Ltlottery';
                break;
            case '5707231341449216':     // LB快乐彩
                break;
            case '450820939001':         // VR彩票
                accid = "450820939000";
                url = '/lottery/vr?gameCode=' + gameCode;
                break;
            default :
                break;
        }
    }
    window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + url);
}

function load_pt(gpid, status, type) {
    var url = '';
    type = type.toLowerCase();
    var accountid = '420987656200';

    switch (type) {
        case 'plba':
            url = '/liveCasino/pt?gameCode=plba';
            break;
        default :
            url = '/game/pt?gameCode=' + type;
            break;
    }
    var flag = gameNotify(status);
    if (flag) {
        var accid = '350808494186201';
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accountid + '&url=' + url);
    }
}


function load_nt(status, game) {
    var url = '/game/nt?game=' + game;
    var flag = gameNotify(status);
    if (flag) {
        var accid = '819244625370';
        var gpid = '8192446253701';
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + url);
    }
}

function load_cpwin(status) {
    var url = '/lottery/cpwin';
    var flag = gameNotify(status);
    if (flag) {
        var accid = '7821359015600';
        var gpid = '7821359015601';
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + url);
    }
}

// Deleted code on "20171018"
// function load_ig(status, gpid, lotteryPage) {
//     var url = '/lottery/ig';
//     var flag = gameNotify(status);
//     var accid = '4040195926800';
//     switch(gpid){
//         case 4040195926801:
//         case 4040195926802:
//             break;
//         default:
//             gpid = 4040195926801;
//             break;
//     }
//     if (flag) {
//         window.open(url + "?gpid=" + gpid + "&lotteryPage=" + lotteryPage);
//         //window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + url + "?gpid=" + gpid + "&lotteryPage=" + lotteryPage);
//     }
// }

function load_keno(status) {
    var flag = gameNotify(status);
    if (flag) {
        var gpid = "5707231341449216";
        var accid = "5707231341449216";
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + '/lottery/kenoGame');
    }
}

function load_kg(status, gameType, stakeId) {
    var flag = gameNotify(status);
    if (flag) {
        var gpid = "520723134101";
        var accid = "520723134100";
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + '/lottery/kg?gameType=' + gameType + '||stakeId=' + stakeId);
    }
}

function load_allbet(status) {
    var flag = gameNotify(status);
    if (flag) {
        var gpid = "9283948292830";
        var accid = "9283948292833";
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + '/liveCasino/allbet');
    }
}

function load_sgwin(status, lottery) {
    var flag = gameNotify(status);
    if (flag) {
        var gpid = "7589283920390";
        var accid = "7589283920394";
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + '/lottery/sgwin?lottery=' + lottery);
    }
}

function load_bbin_ld(status, gpId, page_site) {
    var flag = gameNotify(status);
    if (gpId == 9) {
        gpId = "350808494186211"
    }
    ;
    if (flag) {
        var accid = "350808494186201";
        var gameurl = '/liveCasino/bbin';
        if (page_site == 'Ltlottery') {
            gameurl = '/lottery/bbin';
        }
        if (page_site) {
            gameurl += "?page_site=" + page_site;
        }

        window.open('/home/lunch?gpid=' + gpId + '&accid=' + accid + '&url=' + gameurl);
    }
}

function load_bbin_game(status, gpId, gametype) {
    var flag = gameNotify(status);
    if (flag) {
        var accid = '350808494186201';
        var gameurl = '/game/bbin';
        if (gametype) {
            gameurl += "?gametype=" + gametype;
        }
        window.open('/home/lunch?gpid=' + gpId + '&accid=' + accid + '&url=' + gameurl);
    }
}


function load_bbin_sb(status, gpId) {
    var flag = gameNotify(status);
    if (flag) {
        var accid = '350808494186201';
        var gameurl = '/sports/bbin';
        window.open('/home/lunch?gpid=' + gpId + '&accid=' + accid + '&url=' + gameurl);
    }
}

function load_esports_sb(status, gpId) {
    var flag = gameNotify(status);
    if (flag) {
        var accid = '629085827500';
        var gameurl = '/sports/esports';
        window.open('/home/lunch?gpid=' + gpId + '&accid=' + accid + '&url=' + gameurl);
    }
}

function load_stag8(status) {
    $(".mod-tags").find("a.current").removeClass("current");
    if(status){
        $('#action_form').attr("action","../sports/stag8");
        $('#action_form').html('');
        $('#action_form').submit();
    } else{
        $('#action_form').attr("action","https://stag8.kzonlinegame.com/Preview");
        $('#action_form').html('<input type="hidden" name="LanguageCode" value="CN" /><input type="hidden" name="CurrencyCode" value="CNY" /><input type="hidden" name="TimeZoneId" value="82" /><input type="submit">');
        $('#action_form').submit();
    }
    $('#load_stag8').addClass("current");
    $('#action_form').attr("action","#");
    $('#action_form').html('');
}

$(function () {
    var status = parseInt($('#bbin_ld').attr('status'));
    var gpId = $('#bbin_ld').attr('gpId');
    $('#bbin_ld').find('li').on('click', function () {
        // load_bbin_ld(status, gpId, 'live');
        loadLives(gpid, status, '', 'live');
    });
});

function load_fh(status, gametype) {
    var flag = gameNotify(status);
    if (flag) {
        var gpid = "285467739648";
        var accid = "285467739648";
        var gameurl = '/lottery/fh';
        if (gametype) {
            gameurl += "?type=" + gametype;
        }
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameurl);

    }
}

function load_mg(status, gameId) {
    var gpid = "11964220589608960";
    var accid = "11964220589608960";
    var flag = gameNotify(status);
    if (flag) {
        var gameurl = '/game/mg';
        if (gameId) {
            gameurl += "?gameId=" + gameId;
        }
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameurl);
    }
}

function load_mg_ld(status, gameId) {
    var gpid = "11964220589606";
    var accid = "11964220589608960";
    var flag = gameNotify(status);
    if (flag) {
        var gameurl = '/liveCasino/mg';
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameurl);
    }
}

function load_salon_ld(status) {
    var gpid = "208925621341";
    var accid = "208925621340";
    var flag = gameNotify(status);
    if (flag) {
        var gameurl = '/liveCasino/salon';
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameurl);
    }
}


function get_ld_gc(status, g_type, type) {
    var flag = gameNotify(status, type);
    if (flag) {
        var gpid = "39500154618880";
        var accid = "39500154618880";
        var gameurl = '/liveCasino/ldClient';
        if (g_type) {
            gameurl += "?g_type=" + g_type;
        }
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameurl);
    }
}

function get_ag_gc(status, type) {
    var flag = gameNotify(status, type);
    if (flag) {
        var gpid = "38712217599873024";
        var accid = "38712217599873024";
        var gameurl = '/liveCasino/agClient';
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameurl);
    }
}

function get_gd_gc(status, type, view) {
    var flag = gameNotify(status, type);
    if (flag) {
        var gpid = "3277767810617344";
        var accid = "3277767810617344";
        var gameurl = '/liveCasino/gdClient';
        if (view) {
            gameurl += "?view=" + view;
        }
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameurl);
    }
}


function load_ag_by(status) {
    var gpid = "387122175998733";
    var accid = "38712217599873024";
    var flag = gameNotify(status);
    if (flag) {
        var gameurl = '/game/ag?gameType=6';
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameurl);
    }
}


function load_ag_game(status) {
    var gpid = "387122175998732";
    var accid = "38712217599873024";
    var flag = gameNotify(status);
    if (flag) {
        var gameurl = '/game/ag?gameType=500';
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameurl);
    }
}

function loadEBet(status) {
    var gpid = "905647853201";
    var accid = "905647853200";
    var flag = gameNotify(status);
    if (flag) {
        var gameUrl = '/liveCasino/ebet';
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameUrl);
    }
}

function loadEBetN(status) {
    var gpid = "940256904101";
    var accid = "940256904100";
    var flag = gameNotify(status);
    if (flag) {
        var gameUrl = '/liveCasino/ebetn';
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameUrl);
    }
}



function loadOpus(status) {
    var gpid = "873415962801";
    var accid = "873415962800";
    var flag = gameNotify(status);
    if (flag) {
        var gameUrl = '/lottery/opus';
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameUrl);
    }
}

function loadTPGLD(status) {
    var gpid = "773562192801";//游戏平台ID
    var accid = "773562192800";//游戏账户ID
    var flag = gameNotify(status);
    if (flag) {
        var gameUrl = '/liveCasino/tgp';//对应游戏入口uri
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameUrl);
    }
}


function loadIMOld(status) {
    var gpid = "550423423401";
    var accid = "550423423400";
    var flag = gameNotify(status);
    if (flag) {
        var gameUrl = '/liveCasino/imold';
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameUrl);
    }
}

function loadIMOslot(status,gameCode) {
    var gpid = "550223423201";
    var accid = "550223423200";
    var flag = gameNotify(status);
    if (flag) {
        var gameUrl = '/game/imoslot';
        if (gameCode) {
            gameUrl += "?gameCode=" + gameCode;
        }
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameUrl);
    }
}

function loadIMOgg(status) {
    var gpid = "550123423101";
    var accid = "550123423100";
    var flag = gameNotify(status);
    if (flag) {
        var gameUrl = '/game/imogg';
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameUrl);
    }
}

function loadIMO_MWG_Fishing(status) {
    var gpid = "550523423501";
    var accid = "550523423500";
    var flag = gameNotify(status);
    if (flag) {
        var gameUrl = '/game/IMMWGFishing';
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameUrl);
    }
}

function loadIMOpt(gpid,status,gameCode) {
    var accid = "550323423300";
    var flag = gameNotify(status);
    if (flag) {
        var gameUrl = '/game/imopt';
        if (gameCode) {
            gameUrl += "?gameCode=" + gameCode;
        }
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameUrl);
    }
}

function loadLDGaming(status) {
    var gpid = "952038801201";
    var accid = "952038801200";
    var flag = gameNotify(status);
    if (flag) {
        var gameUrl = '/liveCasino/LDGaming';
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameUrl);
    }
}

function loadCQGame(status,gameCode) {
    var gpid = "7295220587201";
    var accid = "7295220587200";
    var flag = gameNotify(status);
    if (flag) {
        var gameUrl = '/game/CQGame';
        if (gameCode) {
            gameUrl += "?gameCode=" + gameCode;
        }
        window.open('/home/lunch?gpid=' + gpid + '&accid=' + accid + '&url=' + gameUrl);
    }
}

function appendGameModal(gpid, url) {
    $.blockUI();
    $.ajax({
        url: '/kz/gp/reg?gpid=' + gpid + "&r=" + Math.random(),
        type: 'post',
        dataType: 'json',
        success: function (reg) {
            if (reg.c == 0) {
                $.ajax({
                    url: "/kz/gp/balance?gpid=" + gpid,
                    type: 'get',
                    dataType: 'json',
                    success: function (_gf) {
                        $.unblockUI();
                        if (_gf.code == 0) {
                            var amount = parseInt(_gf.data.val);
                            if (isNaN(amount)) {
                                amount = 0;
                            }
                            if (amount < 10) {
                                $(document.body).append(makeModal(gpid, url, msg_insufficient_balance.replace('%', amount)));
                                $('#GameModal').reveal({
                                    animation: 'fade',
                                    animation_speed: 500,
                                    closeonbackgroundclick: false,
                                    dismissmodalclass: 'close-reveal-modal'
                                });
                                getbalance();
                            } else {
                                openGame(url);
                            }
                        } else {
                            openGame(url);
                        }
                    },
                    cache: false,
                    error: function () {
                        $.unblockUI();
                        openGame(url);
                    }
                });
            } else if (reg.c == 1407) {
                notify(msg_system_maintain);
                $.unblockUI();
            } else {
                $.unblockUI();
            }
        }
    });

}

function getbalance() {
    $.ajax({
        url: "/kz/gp/balance?gpid=10000",
        type: 'get',
        dataType: 'json',
        success: function (_gf) {
            if (_gf.code == 0) {
                var amount = parseFloat(_gf.data.val);
                if (isNaN(amount)) {
                    amount = "-";
                } else {
                    amount = amount.toFixed(2);
                }
                $("#t_balance").html(amount);
                $("#t_amount").val(amount);
            }
        },
        cache: false,
        error: function () {
            notify(msg_error_get_balance);
        }
    });
}

function desp(gpid, url) {
    var t_amount = $("#t_amount").val();
    var amount = parseInt($("#t_balance").html());
    if (t_amount <= 0 || t_amount == "" || isNaN(t_amount)) {
        notify(msg_incorrect_amount);
        return false;
    }

    if (amount == 0) {
        notify(msg_empty_balance);
        return false;
    }
    if (t_amount > amount)t_amount = amount;

    $("#closeM").click();

    $.ajax(
        {
            url: "/kz/gp/transaction",
            data: {
                tout: "10000",
                tin: gpid,
                amount: t_amount
            },
            type: "POST",
            success: function (_gf) {
                openGame(url);
                $('#closeM').click();
            },
            error: function () {
                openGame(url);
                $('#closeM').click();
            }
        });
}

function makeModal(gpid, url, title) {
    $("#GameModal").remove();
    var html = '<div id="GameModal" class="modal" style="width:570px; margin-left:-285px;">';
    html += '<div class="modal-hd"><a id="closeM" class="right modal-close close-reveal-modal"></a>';
    html += '<h2>' + title + '</h2>';
    html += '</div>';
    html += '<div class="modal-content">';
    html += '<div class="user-form" style="min-height:0;">';
    html += '<ul class="mod-forms clearfix">';
    html += '<li>';
    html += '<label>' + msg_main_account + '</label>';
    html += '<div class="txt"><span id="t_balance" class="fl" style="font-size:22px; color:#ff7800;"></span><span onclick="javascript:window.open(\'https://fb72a2c99f740c24.g-cdn-s.com/wallet/deposit\');" title="' + msg_topup + '" class="btn-deposit">' + msg_action_deposit + '</span></div>';
    html += '</li>';
    html += '<li>';
    html += '<label>' + msg_topup_amount + '</label>';
    html += '<div class="item-ipt">';
    html += '<input type="text" id="t_amount" onKeypress="return (/[\\d.]/.test(String.fromCharCode(event.keyCode)))" style="ime-mode:Disabled" value="100" name="amount" class="txt-ipt" placeholder="' + msg_input_amount + '">';
    html += '</div>';
    html += '</li>';
    html += '</ul>';
    //html += '<div class="m-l-130 f14px"><span class="cRed">检测到您游戏余额不足，您可以 </span><!-- <a href="" target="_blank" class="a-td">前往充值 &gt;&gt;</a> --></div>';
    html += '<div class="forms-btn-g" style="margin-left:130px;">';
    html += '<a href="javascript:void(0);" onclick="desp(\'' + gpid + '\',\'' + url + '\');" class="btn-sub">' + msg_join_auto + '</a>';
    html += '<a href="javascript:void(0);" onclick="window.open(\'' + url + '\');$(\'#closeM\').click();" class="btn-reset">' + msg_join_ignore_alert + '</a>';
    html += '</div>';
    html += '</div>';
    html += '</div>';
    html += '</div>';
    return html;
}