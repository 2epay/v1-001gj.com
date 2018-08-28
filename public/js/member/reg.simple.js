/**
 * Created by Jed on 15/1/9.
 */

// $(document).ready(function(){
//    $('#memberReg').validate({
//        ignore:'.ignore',
//        rules:{
//            joiname:{required:true,username:true,remote:'/home/enableName'},
//            joinpwd:{required:true,password:true},
//            password1:{required:true,equalTo:'#joinpwd'},
//            fullname:{required:true,realname:true},
//            email:{required:true,email:true,remote:'/home/enableEmail'},
//            verifycode:{required:true,captcha:true},
//            agc:{remote:'/home/enableAgent'}
//        },
//        messages:{
//            joiname:{required:'用户名不能为空！',username:'用户名格式错误！',remote:'用户名重复或者错误，请重新输入！'},
//            joinpwd:{required:'密码不能为空！',password:'密码格式有误！'},
//            password1:{required:'确认密码不能为空！',equalTo:'两次输入的密码必须一致！'},
//            fullname:{required:'真实姓名不能为空！',realname:'真实姓名格式有误！'},
//            email:{required:'邮箱不能为空！',email:'邮箱格式有误！',remote:'邮箱已经被注册！'},
//            verifycode:{required:'验证码不能为空！'},
//            agc:{remote:'当前无法为注册该代理的下线！'}
//        },
//        errorPlacement:function(error,element){
//            var where = element.attr('where');
//            if(where == 'pa'){
//                element.parent().append(error);
//            }else if(where == 'ppa'){
//                element.parent().parent().append(error);
//            }else if(where == 'na'){
//                error.insertAfter( element.next() );
//            }else{
//                error.insertAfter( element );
//            }
//        }
//    });
// });

if (typeof user_lang == 'undefined') {
  var user_lang = "cn";
}

switch(user_lang){
    case 'cn':
        var msg_register_fail = '注册失败！';
        var msg_register_success = '注册成功！现在将自动登录。';
        break;
    case 'en':
        var msg_register_fail = '注册失败！';
        var msg_register_success = '注册成功！现在将自动登录。';
        break;
    case 'tl':
        var msg_register_fail = '注册失败！';
        var msg_register_success = '注册成功！现在将自动登录。';
        break;
    default:
        var msg_register_fail = '注册失败！';
        var msg_register_success = '注册成功！现在将自动登录。';
}

var reging = false;
function sub_member(){
    if(reging==true){
        return false;
    }
    reging = true;
    var flag = $('#memberReg').valid();
    if(flag){
    $.blockUI();
        initBirthday();
        var data = $('#memberReg').serialize();
        $.ajax({
            url: '/kz/member/account',
            type: 'post',
            dataType: 'json',
            data: data,
            error: function () {
                notify(msg_register_fail);
                $.unblockUI();
                reging = false;
            },
            success: function (d) {
                if(d.c==0){
                    alert(msg_register_success);
                    window.location.href="../../home/index.htm"/*tpa=http://78558844.com/member/index*/;
                }else{
                    if(d.c==1107){
                    var msg = d.m;
                   }else{
                        var msg = errorMsg(d,msg_register_fail);
                   }
                    notify(msg);
                    get_captcha();
                }
                $.unblockUI();
                reging = false;
            }
        });
    }else{
        reging = false;
    }
    return false;
}

function get_captcha(){
    $('#captcha').attr('src','/service/verifycode?x='+Math.random());
}

function parseISO8601(dateStringInRange) {
    var isoExp = /^\s*(\d{4})-(\d\d)-(\d\d)\s*$/,
        date = new Date(NaN), month,
        parts = isoExp.exec(dateStringInRange);

    if(parts) {
        month = +parts[2];
        date.setFullYear(parts[1], month - 1, parts[3]);
        if(month != date.getMonth() + 1) {
            date.setTime(NaN);
        }
    }
    return date;
}

function initBirthday(){
    $('#birthyear').val($('#yearDropdown').val());
    $('#birthmonth').val($('#monthDropdown').val());
    $('#birthday').val($('#dayDropdown').val());
}
