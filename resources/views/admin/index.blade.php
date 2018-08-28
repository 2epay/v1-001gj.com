@extends('admin.layouts.main')

@section('content')
		<style>
			.apiList{
				font-size: 18px;
				font-weight: bold;
				padding: 0 15px;
			}
			.apiList span{
				color: red;
				font-weight: normal;
			}
			.apiList img{
				margin:0 auto 15px;
				width: 50%;
				display: block;
			}
			.content-wrapper {
				background-color: #ffffff;
			}
		</style>
	
		<div class="row apiList">
		@foreach($apis as $api)
            <div class="col-xs-2">
                <img src="{{asset('/backstage/images/'.$api['api_name'].'.jpg')}}" width="85" height="84">
                <div class="text-center">
				{{ $api['api_name'] }}&nbsp;&nbsp;&nbsp;<span class="balance">{{ $api['api_money'] }}</span>
				 @if (!in_array($api->api_name, ['BI']))
				 <a class="refresh" href="javascript:void(0)"  data-uri="{{ route('api.credit') }}?api_name={{ $api->api_name }}"></a>
				@endif				
                </div>
            </div>
		@endforeach
        </div>	
	<script>
	
             $('.refresh').on('click',function(){
                 var _this=$(this);
                 var pos = _this.prev('span');
//                 var money_span = _this.parent('p').next().find('span');
                 _this.css({
                     'background':'url({{ asset("/web/images/h-u-loading2.gif") }}) no-repeat center center'
                 })
                 $.ajax({
                     type : 'GET',
                     url : _this.attr('data-uri'),
                     data : '',
                     contentType : "application/json; charset=utf-8",
                     success : function(data){

                         _this.css({
                             'background':'url({{ asset("/web/images/bg-ico.png") }}) no-repeat center center',
                             'background-position': '-80px -102px'
                         })
                         if (data.Code != 0)
                         {
                             alert(data.Message);
                             return ;
                         }
                         pos.html(data.Data+'元');
                     },
                     error: function (err, status) {
                         console.log(err)
                     }
                 })
             });	
	
	
	</script>
	
    <!-- Main content -->
    <section class="content">
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3>{{ count($_online_member_array) }}</h3>

                        <p>在线会员</p>
                    </div>

                    <a href="{{ route('member.index') }}?on_line=1" class="small-box-footer">查看详情 <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-yellow">
                    <div class="inner">
                        <h3>{{ $success_recharge_count }}</h3>

                        <p>今日充值笔数</p>
                    </div>

                    <a href="{{ route('recharge.index') }}?status=1" class="small-box-footer">查看详情 <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-green">
                    <div class="inner">
                        <h3>{{ $success_drawing_count }}</h3>

                        <p>今日出款笔数</p>
                    </div>

                    <a href="{{ route('drawing.index') }}?status=1" class="small-box-footer">查看详情 <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-red">
                    <div class="inner">
                        <h3>{{ $success_dividend_count }}</h3>
                        <p>今日送出红利笔数</p>
                    </div>

                    <a href="{{ route('dividend.index') }}" class="small-box-footer">查看详情 <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
        </div>
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3>{{ $today_register_count }}</h3>

                        <p>今日注册人数</p>
                    </div>

                    <a href="JavaScript:void(0)" class="small-box-footer">平台总注册（{{ $total_register_count }}）</a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-yellow">
                    <div class="inner">
                        <h3>{{ $success_recharge_sum }}</h3>

                        <p>今日充值金额</p>
                    </div>

                    <a href="JavaScript:void(0)" class="small-box-footer">平台总充值（{{ $total_recharge_count }}）</a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-green">
                    <div class="inner">
                        <h3>{{ $success_drawing_sum }}</h3>

                        <p>今日出款金额</p>
                    </div>

                    <a href="JavaScript:void(0)" class="small-box-footer">平台总出款（{{ $total_drawing_count }}）</a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-red">
                    <div class="inner">
                        <h3>{{ $success_dividend_sum }}</h3>
                        <p>今日送出红利金额</p>
                    </div>

                    <a href="JavaScript:void(0)" class="small-box-footer">平台总红利（{{ $total_dividend_count }}）</a>
                </div>
            </div>
            <!-- ./col -->
        </div>		
    </section>
@endsection
@section('after.js')
@endsection