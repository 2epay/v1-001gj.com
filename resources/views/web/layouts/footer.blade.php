<!--script src="http://down.biapi.net/layer/jquery-1.8.3.min.js"></script>
<script src="http://down.biapi.net/layer/layer.js"></script>
<script src="http://down.biapi.net/layer/jsjs.js"></script-->
<div class="foot">
    <div class="foot_z">
        <div class="zddd"><img src="/cl/tpl/xinweinisi3/images/xiam_03.png?=679123" alt=""/></div>
        <div class="wa1"> 
            <ul style="padding-left:154px;"> 
                    @if(isset($_single_list) && count($_single_list) > 0)
			@foreach($_single_list as $single)
			<li><a href="{{ url('S/'.$single['alias'].'') }}" style="float:left; color:#efcd65;">{{ $single['title'] }}</a></li><span style="color:#efcd65; font-size:10px;float:left;  margin:0 8px; ">|</span>
			@endforeach
		@endif	
            </ul>
        </div>
       <div class="weq">
           <span style="color:#efcd65">Copyright © {{ $_system_config->site_name }} Reserved</span>
       </div>
    </div>
</div>
