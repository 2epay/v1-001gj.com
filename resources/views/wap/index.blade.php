@extends('wap.layouts.main')
@section('after.css')
    <link type="text/css" rel="stylesheet" href="{{ asset('/wap/css/main.css') }}">
@endsection
@section('content')

    @include('wap.layouts.header')
    <div class="m_container">
        <div class="m_body">
            <div class="m_banner">
                <div id="slide" class="container-fluid slide">
                    <ul class="bd">
                        <li><a href="#"><img class="carousel-inner" src="{{ asset('/wap/images/m_banner1.jpg') }}"></a>
                        </li>
                        <li><a href="#"><img class="carousel-inner" src="{{ asset('/wap/images/m_banner2.jpg') }}"></a>
                        </li>
                        <li><a href="#"><img class="carousel-inner" src="{{ asset('/wap/images/m_banner3.jpg') }}"></a>
                        </li>
                        <li><a href="#"><img class="carousel-inner" src="{{ asset('/wap/images/m_banner4.jpg') }}"></a>
                        </li>
                    </ul>
                    <ul class="hd"></ul>
                </div>
            </div>
            <div class="m_notice">
                <span class="notice_logo"></span>
                <div class="pull-left notice_title">
                    系统公告:
                </div>
                <div class="pull-left notice_content">
                    <marquee id="mar0" behavior="scroll" direction="left" scrollamount="4">
                        @foreach($_system_notices as $v)
                            <div class="module" style="display: inline;word-break: keep-all;white-space: nowrap;">
                                <span>~{{ $v->title }}~</span>
                                <span>{{ $v->content }}</span>
                            </div>
                        @endforeach
                    </marquee>
                </div>
            </div>
                <div class="m_wrapper clear">
                <div class="m_category">
                    视讯直播
                </div>
                @if(in_array('AG', $_api_list))
                    <div class="m_box m_box-half">
                        <a class="m_box-link" href="{{ route('ag.playGame') }}?devices=1">
                            <img src="{{ asset('/wap/images/m_box-live2.png') }}" alt="">
                          <span class="m_box-name">
                            AG视讯
                          </span>
                        </a>
                    </div>
                @endif
                @if(in_array('MG', $_api_list))
                    <div class="m_box m_box-half">
                        <a class="m_box-link" href="{{ route('mg.playGame') }}?devices=1">
                            <img src="{{ asset('/wap/images/m_box-live3.png') }}" alt="">
                      <span class="m_box-name">
                        MG视讯
                      </span>
                        </a>
                    </div>
                @endif
                @if(in_array('SA', $_api_list))
                    <div class="m_box m_box-half">
                        <a class="m_box-link" href="{{ route('sa.playGame') }}?devices=1">
                            <img src="{{ asset('/wap/images/m_box-live5.jpg') }}" alt="">
                      <span class="m_box-name">
                        SA视讯
                      </span>
                        </a>
                    </div>
                @endif
                @if(in_array('PT', $_api_list))
                    <div class="m_box m_box-half">
                        <a class="m_box-link" href="{{ route('pt.playGame') }}?gametype=bal&devices=1">
                            <img src="{{ asset('/wap/images/m_box-live6.jpg') }}" alt="">
                      <span class="m_box-name">
                        PT视讯
                      </span>
                        </a>
                    </div>
                @endif
                @if(in_array('BBIN', $_api_list))
                    <div class="m_box m_box-half">
                        <a class="m_box-link" href="{{ route('bbin.playGame') }}?gametype=live&devices=1">
                            <img src="{{ asset('/wap/images/m_box-live4.jpg') }}" alt="">
                        <span class="m_box-name">
                        BB视讯
                      </span>
                        </a>
                    </div>
                @endif
                @if(in_array('BG', $_api_list))
                    <div class="m_box m_box-half">
                        <a class="m_box-link" href="{{ route('bg.playGame') }}?devices=1">
                            <img src="{{ asset('/wap/images/m_box-live5.jpg') }}" alt="">
                        <span class="m_box-name">
                        BG视讯
                      </span>
                        </a>
                    </div>
                @endif
                @if(in_array('CG', $_api_list))
                    <div class="m_box m_box-half">
                        <a class="m_box-link" href="{{ route('cg.playGame') }}?devices=1">
                            <img src="{{ asset('/wap/images/m_box-live7.jpg') }}" alt="">
                        <span class="m_box-name">
                        CG视讯
                      </span>
                        </a>
                    </div>
                @endif
                @if(in_array('OG', $_api_list))
                    <div class="m_box m_box-half">
                        <a class="m_box-link" href="{{ route('og.playGame') }}?devices=1">
                            <img src="{{ asset('/wap/images/fluidimage_live_442.png') }}" alt="">
                        <span class="m_box-name">
                        OG视讯
                      </span>
                        </a>
                    </div>
                @endif
            </div>

            <div class="m_wrapper clear">
                <div class="m_category">
                    电子游艺
                </div>
                @if(in_array('AG', $_api_list))
                    <div class="m_box m_box-half">
                        <a class="m_box-link" href="{{ route('ag.playGame') }}?devices=1&gameType=8">
                            <img src="{{ asset('/wap/images/m_box-game1.png') }}" alt="">
                          <span class="m_box-name">
                            AG电子
                          </span>
                        </a>
                    </div>
                @endif
                @if(in_array('MG', $_api_list))
                    <div class="m_box m_box-half">
                        <a class="m_box-link" href="{{ route('wap.eGame') }}?api_name=MG">
                            <img src="{{ asset('/wap/images/m_box-game2.png') }}" alt="">
                          <span class="m_box-name">
                            MG电子
                          </span>
                        </a>
                    </div>
                @endif
                @if(in_array('PT', $_api_list))
                    <div class="m_box m_box-half">
                        <a class="m_box-link" href="{{ route('wap.eGame') }}?api_name=PT">
                            <img src="{{ asset('/wap/images/m_box-game3.png') }}" alt="">
                      <span class="m_box-name">
                        PT电子
                      </span>
                        </a>
                    </div>
                @endif
                @if(in_array('BBIN', $_api_list))
                    <div class="m_box m_box-half">
                        <a class="m_box-link" href="{{ route('bbin.playGame') }}?gametype=game&devices=1">
                            {{--<img class="m_isComing" src="{{ asset('/wap/images/m_isComing.png') }}" alt="">--}}
                            <img src="{{ asset('/wap/images/m_box-game4.png') }}" alt="">
                      <span class="m_box-name">
                        BB电子
                      </span>
                        </a>
                    </div>
                @endif
                @if(in_array('DT', $_api_list))
                    <div class="m_box m_box-half">
                        <a class="m_box-link" href="{{ route('wap.eGame') }}?api_name=DT">
                            {{--<img class="m_isComing" src="{{ asset('/wap/images/m_isComing.png') }}" alt="">--}}
                            <img src="{{ asset('/wap/images/m_box-game9.png') }}" alt="">
                          <span class="m_box-name">
                            DT电子
                          </span>
                        </a>
                    </div>
                @endif

                @if(in_array('SA', $_api_list))
                    <div class="m_box m_box-half">
                        <a class="m_box-link" href="{{ route('wap.eGame') }}?api_name=SA">
                            {{--<img class="m_isComing" src="{{ asset('/wap/images/m_isComing.png') }}" alt="">--}}
                            <img src="{{ asset('/wap/images/m_box-game6.png') }}" alt="">
                          <span class="m_box-name">
                            SA电子
                          </span>
                        </a>
                    </div>
                @endif              
                {{--@if(in_array('SA', $_api_list))--}}
                {{--<div class="m_box m_box-half">--}}
                {{--<a class="m_box-link" href="{{ route('dt.rng_game_list') }}">--}}
                {{--<img class="m_isComing" src="{{ asset('/wap/images/m_isComing.png') }}" alt="">--}}
                {{--<img src="{{ asset('/wap/images/m_box-game1.png') }}" alt="">--}}
                {{--<span class="m_box-name">--}}
                {{--SA电子--}}
                {{--</span>--}}
                {{--</a>--}}
                {{--</div>--}}
                {{--@endif--}}
            </div>
            <div class="m_wrapper clear">
                <div class="m_category">
                    彩票游戏
                </div>
                @if(in_array('BBIN', $_api_list))
                    <div class="m_box m_box-full">
                        <a class="m_box-link" href="{{ route('bbin.playGame') }}?gametype=ltlottery&devices=1">
                            <img src="{{ asset('/wap/images/m_box-lottory1.png') }}" alt="">
                            <span class="m_box-name">
                            BB彩票
                          </span>
                        </a>
                    </div>
                @endif
                @if(in_array('YC', $_api_list))
                    <div class="m_box m_box-half">
                        <a class="m_box-link" href="{{ route('yc.playGame') }}?devices=1">
                            {{--<img class="m_isComing" src="{{ asset('/wap/images/m_isComing.png') }}" alt="">--}}
                            <img src="{{ asset('/wap/images/m_box-lottory2.png') }}" alt="">
                            <span class="m_box-name">
                        YC彩票
                      </span>
                        </a>
                    </div>
                    <div class="m_box m_box-half">
                        <!-- <a class="m_box-link" href="{{ route('yc.playGame') }}?gametype=Cash&devices=1"> -->
                            <a class="m_box-link" href="{{ route('vr.playGame') }}?devices=1">
                            {{--<img class="m_isComing" src="{{ asset('/wap/images/m_isComing.png') }}" alt="">--}}
                            <img src="{{ asset('/wap/images/m_box-lottory3.png') }}" alt="">
                            <span class="m_box-name">
                        VR国彩
                      </span>
                        </a>
                    </div>
                @endif
                @if(in_array('EG', $_api_list))
                    <div class="m_box m_box-full">
                        <a class="m_box-link" href="{{ route('eg.playGame') }}?device=1">
                            <img src="{{ asset('/wap/images/m_box-lottory4.jpg') }}" alt="">
                            <span class="m_box-name">
                            EG彩票
                          </span>
                        </a>
                    </div>
                @endif
            </div>

            <div class="m_wrapper clear">
                <div class="m_category">
                    捕鱼游戏
                </div>
                <div class="m_box m_box-half">
                    <a class="m_box-link" href="{{ route('ag.playGame') }}?devices=1&gameType=6">
                        {{--<img class="m_isComing" src="{{ asset('/wap/images/m_isComing.png') }}" alt="">--}}
                        <img src="{{ asset('/wap/images/m_box-game10.png') }}" alt="">
                          <span class="m_box-name">
                            AG捕鱼
                          </span>
                    </a>
                </div>
                <div class="m_box m_box-half">
                    <a class="m_box-link disabled" href="javascript:;">
                        {{--<img class="m_isComing" src="{{ asset('/wap/images/m_isComing.png') }}" alt="">--}}
                        <img src="{{ asset('/wap/images/m_box-game11.png') }}" alt="">
                          <span class="m_box-name">
                            PT捕鱼
                          </span>
                    </a>
                </div>
            </div>

            <div class="m_wrapper clear">
                <div class="m_category">
                    体育赛事
                </div>
                @if(in_array('SS', $_api_list))
                    <div class="m_box m_box-full">
                        <a class="m_box-link" href="{{ route('ss.playGame') }}?gametype=ball&devices=1">
                            <img src="{{ asset('/wap/images/m_box-esports1.png') }}" alt="">
                          <span class="m_box-name">
                            皇冠体育
                          </span>
                        </a>
                    </div>
                @endif
                @if(in_array('IBC', $_api_list))
                    <div class="m_box m_box-half">
                        <a class="m_box-link" href="{{ route('ibc.playGame') }}?devices=1">
                            {{--<img class="m_isComing" src="{{ asset('/wap/images/m_isComing.png') }}" alt="">--}}
                            <img src="{{ asset('/wap/images/m_box-esports4.png') }}" alt="">
                        <span class="m_box-name">
                        沙巴体育
                      </span>
                        </a>
                    </div>
                @endif
                @if(in_array('BBIN', $_api_list))
                    <div class="m_box m_box-half">
                        <a class="m_box-link" href="{{ route('bbin.playGame') }}?devices=1">
                            {{--<img class="m_isComing" src="{{ asset('/wap/images/m_isComing.png') }}" alt="">--}}
                            <img src="{{ asset('/wap/images/m_box-esports3.png') }}" alt="">
                        <span class="m_box-name">
                        BB体育
                      </span>
                        </a>
                    </div>
                @endif
            </div>


            <div class="m_wrapper clear">
                <div class="m_category">
                    优惠活动
                </div>
                <div class="m_box m_box-full">
                    <a class="m_box-link" href="{{ route('wap.activity_list') }}">
                        <img src="{{ asset('/wap/images/m_box-act2.png') }}" alt="">
                          <span class="m_box-name">
                            优惠活动
                          </span>
					</a>
				</div>
			</div>


            <!--div class="m_wrapper clear">
			  <div class="m_category">
				APP下载
			  </div>
				<div class="m_box m_box-half">
                    <a class="m_box-link" href="http://i8cv.com/index.php/duo/2920" target="_blank">
                        <img src="{{ asset('/wap/images/000.jpg') }}" alt="">
                          <span class="m_box-name">
                            苹果版
                          </span>
                    </a>
                </div>
                <div class="m_box m_box-half">
                    <a class="m_box-link" href="http://i8cv.com/index.php/duo/2920" target="_blank">
                        <img src="{{ asset('/wap/images/111.jpg') }}" alt="">
                          <span class="m_box-name">
                            安卓版
                          </span>

                    </a>
                </div>
            </div-->			
        </div>
    </div>

    <div id="myModal" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">系统公告</h4>
                </div>
                <div class="modal-body">
                    @foreach($_system_notices as $v)
                        <h3>~{{ $v->title }}~</h3>
                        <p>{{ $v->content }}</p>
                    @endforeach
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <script>
        (function ($) {
            $(function () {
                $('.disabled').on('click', function () {
                    alert('暂未开放，敬请期待！');
                });
            })
        })(jQuery)
    </script>

@endsection