@extends('web.layouts.main')
@section('content')
 <!-- #EndLibraryItem -->
		     <div class="dd" style="top:391px;">
        <div class="dd_z">
            <div id="banner_img" style="width:100px; height:40px; background: url(/cl/tpl/xinweinisi3/images/dd_03.png?=679) no-repeat;float:left;margin-top:4px;"></div>
             @foreach($_system_notices as $v) <marquee id="mar0" onmouseout="this.start()" onmouseover="this.stop()"style="float:left; color:#fff; font-size:14px; line-height:40px;position:relative;left:10px;" scrollAmount=5 width=964>~{{ $v->title }}~{{ $v->content }}</marquee>  @endforeach
        </div>
    </div>
  <div id="banner_tabs" class="flexslider" style="height:413px; background: url(/cl/tpl/xinweinisi3/images/nr_1.jpg) center">

    </div>
    <style type="text/css">
        .lb {
            height: 415px;
        }
    </style>
    <script type="text/javascript">
        $(function() {
            var bannerSlider = new Slider($('#banner_tabs'), {
                time: 5000,
                delay: 400,
                event: 'hover',
                auto: true,
                mode: 'fade',
                controller: $('#bannerCtrl'),
                activeControllerCls: 'active'
            });
            $('#banner_tabs .flex-prev').click(function() {
                bannerSlider.prev()
            });
            $('#banner_tabs .flex-next').click(function() {
                bannerSlider.next()
            });
        })
    </script>
	
	</div>
		<style type="text/css">
    .mtab-menual {border-bottom: 1px solid #e3860d;display: block;height: 36px;width: 683px;}
.mtab-menual li { background:#f4ede5;color: #5b462c;cursor: pointer;display: block;float: left;height: 36px;line-height: 36px;margin-right: 3px;text-align: center;width: 96px;}
.mtab-menual li.mtab,.mtab-menual li:hover{ background: #e3860d;color: #fff;}
 table{width:95%;margin:10px;text-align:center;border:1px solid #cdb394;background: #ede5d2;}
 table th{text-align:center;vertical-align: middle;padding:10px 0;background-color:#eeddb6;border:1px solid #cdb394;}
 table td{border-bottom:1px solid #cdb394;border-right:1px solid #cdb394;text-shadow:none;}
</style>
<div class="rr">
    <div class="rr_z">
    <div style="background:#391002; width:1000; min-height:1200px; padding-left:25px;">
    
        <div class="left_z">
            <ul style="margin-top:30px;">
              <li><a href="/S/gywm" class="dd1"></a></li>
              <li><a href="/S/LXWM" class="dd2"></a></li>
              <li><a href="/S/DLHZ" class="dd3"></a></li>
              <li><a href="/S/CKBZ" class="dd4"></a></li>
              <li><a href="/S/QKBZ" class="dd5"></a></li>
              <li><a href="/S/CJWT" class="dd6"></a></li>
              <li><a href="" class="dd7"></a></li>
          </ul>
          
          <!-- <img src="/cl/tpl/xinweinisi3/images/wa_05.png" style=" margin-top:50px"> -->
          
        </div>
	
	        <div class="right_z">
            
              <div class="right xq ">
                <div class="right_22" >
                <div class="k812" style="text-align: center;">
                   {!! $data['content'] !!}
                </div>
            </div>
        </div>
    </div>
    </div>
</div>
</div>

	


@endsection