@extends('web.layouts.main')
@section('content')
	<link rel="stylesheet" href="{{ asset('/web/css/caipiao/caipiao.css') }}">
	<!--banner-->
	<div id="banner" style="margin-top:160px"></div>
	<div class="lotteryPage">
		<div class="lottery" style="width: 1200px;height: 680px;">
			<iframe src="{{ $res }}" width="100%" height="100%" frameborder="0">

			</iframe>
			<div class="clear"></div>
		</div>
	</div>
    @include('web.layouts.aside')
@endsection