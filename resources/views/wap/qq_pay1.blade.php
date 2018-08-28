@extends('wap.layouts.main')
@section('after.css')
    <script src="/js/twoepay.js"></script>
    <!-- <link type="text/css" rel="stylesheet" href="{{ asset('/wap/css/bootstrap.min.css') }}"> -->
    <!-- <link type="text/css" rel="stylesheet" href="{{ asset('/wap/css/main.css') }}"> -->
    <!-- <script type="text/javascript" src="{{ asset('/wap/js/jquery.js') }}"></script> -->
    <style type="text/css">
        body{
            color: #ffffff;
        }
    </style>
@endsection
@section('content')
    @extends('wap.layouts.header')
    <div id="main-container">
    <!-- <iframe src="/member/payment" width="100%" height="100%"></iframe> -->
    <div id="main-container-in-iframe">
        <div class="module-main" style="height: 630px; overflow: auto;margin-top:20px">
            <form class="form-horizontal" name="myform" action="http://pay1.youyunnet.com/pay/" method="post" style="margin-top: 50px;">
            <!-- <form name="myform" action="{ { route('member.payment_response') }}" method="post"> -->
                <div class="form-group">
                    <label class="col-xs-12 control-label">支付金额:</label>
                    <div class="col-xs-12">
                        <input class="form-control" style="width: 70%; margin: auto;" type="number" name="money" id="money">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12  control-label">支付类型:</label>
                    <div class="col-xs-12">
                        <div class="bg-ali col-md-12" style="width: 40%;
    color: #000000;
    background: url(/images/bg-alipay.png) no-repeat;
    /*float: left;*/
    margin: auto;
    border: 1px solid #80C5FF;
    padding: 6px;
    background-size: cover;">
                            <input name="lb" type="radio" value="1" checked="checked" />支付宝
                        </div>
                        <div class="bg-wc col-md-12" style="width: 40%;
    color: #000000;
    background: url(/images/bg-wechat.png) no-repeat;
    /*float: right;*/
    margin: auto;
    border: 1px solid #80C5FF;
    padding: 6px;
    background-size: cover;">
                            <input type="radio" name="lb" value="3" />微信
                        </div>
                    </div>
                </div>
                <table width="524" border="0" align="center" cellpadding="10" cellspacing="0">
                  <tr>
                    <!-- <td>商户APPID</td> -->
                    <td>
                        <!-- <label> -->
                      <input name="pid" type="hidden" id="pid" value="3065859557" />
                      <!-- <input name="name" type="hidden" id="name" value="twoepay" /> -->
                      <!-- 请先<a href="http://www.youyunnet.com?reg=ok" target="_blank">申请开户</a>    </label></td> -->
                  </tr>
                  <!-- <tr>
                      <td>
                        支付金额: 
                      </td>
                      <td>
                        <input type="number" name="money">
                      </td>
                  </tr> -->
                  <tr>
                    <!-- <td>支付订单号</td> -->
                    <td><input name="data" type="hidden" id="data" value="888522211221455" />
                    <!-- 50个字符</td> -->
                  </tr>
                  <tr>
                    <!-- <td>支付成功后跳转</td> -->
                    <!-- <td><label> -->
                      <input name="url" type="hidden" id="url" value="http://001gj.com" />
                    <!-- </label></td> -->
                  </tr>
                  <!-- <tr>
                    <td>支付类型</td>
                    <td>
                        <div class="bg-ali">
                            <input name="hidden" type="radio" value="1" checked="checked" />支付宝
                        </div>
                        <div class="bg-wc">
                            <input type="radio" name="lb" value="3" />微信
                        </div>
                    　</td>
                  </tr> -->
                  <!-- <tr>
                    <td>&nbsp;</td>
                    <td><label>
                      <input type="submit" name="Submit" value="确认" />
                    </label></td>
                  </tr> -->
                </table>
                <div class="form-group" style="margin: auto;">
                    <!-- <label class="col-xs-2 control-label">&nbsp;</label> -->
                    <div class="col-xs-12">
                        <button type="submit" style="width: 100%;" class="btn btn-primary form-control ajax-submit">提交</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
<script>
$('.ajax-submit').on("click", function(event) {
    event.preventDefault();
    console.log('clicked');
    var d = new Date();
    var n = d.getTime();
    $.ajaxSetup({
        headers: {
        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
        }
    });
    $.ajax({
      method: "POST",
      url: "http://001gj.com/member/create_rechare",
      // url:{{route('member.create_rechare')}},
      dataType: 'json',
      data: { 
        money: document.getElementById('money').value,
        paytime: n
      }
    }).done(function( result ) {

        document.getElementById('data').value = result.success;
        $('form[name="myform"]').submit();
    });
});
</script>
    </div>
@endsection
@section('after.js')
    <script type="text/javascript" src="{{ asset('/wap/js/laydate.js') }}"></script>
    <script type="text/javascript" src="{{ asset('/wap/js/clipboard.min.js') }}"></script>
    <script>
        var clipboard = new Clipboard('.btn');

        clipboard.on('success', function (e) {
            console.info('Action:', e.action);
            console.info('Text:', e.text);
            console.info('Trigger:', e.trigger);

            e.clearSelection();
        });

        clipboard.on('error', function (e) {
            console.error('Action:', e.action);
            console.error('Trigger:', e.trigger);
        });
    </script>
@endsection