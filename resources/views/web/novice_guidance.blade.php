@extends('web.layouts.main')
@section('content')
    <div class="top_margin" style="margin-top: 30px;">
        <div class="container">
            <div class="register_con">
                <div class="top">
                    <a href="javascript:;" class="active" style="width: 100%">填写账户信息</a>
                    {{--<a href="javascript:;"><span class="num">②</span>填写详细资料</a>--}}
                    {{--<a href="javascript:;"><span class="num">③</span>注册成功</a>--}}
                </div>
                <div class="register_left">
                    <div class="bank_tips">温馨提示:苹果手机用户安装app后请选择设置->通用->描述文件与设备管理->在企业级应用添加信任。。</div>
                     <img src="{{ asset('/web/images/Scan.png') }}">
                     <div class="line_form">
                           </form>
                    </div>
                </div>
                <div class="register_links">
                    <img src="{{ asset('/web/images/n-reg-bg3a.png') }}">
                </div>
            </div>

            @include('web.layouts.hot_act')
        </div>
    </div>
@endsection