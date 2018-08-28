@extends('web.layouts.main')
@section('content')
 <link rel="stylesheet" href="{{ asset('/web/css/dl.css') }}">
  <script type="text/javascript">
	$().ready(function(){
		$("#menu_11").addClass("cur on");		
	});
	
</script>
<iframe name="main" id="gameFrame" scrolling="NO" frameborder="0" src="{{ route('web.AppXzs') }}" allowtransparency="true"width="100%"height="1004px"></iframe>
@endsection