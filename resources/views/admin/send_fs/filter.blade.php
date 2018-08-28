<div class="container-fluid" style="margin-bottom: 10px;">
    <form action="" method="get" id="searchForm">
        <div class="row">
            <div class="col-lg-2">
                <div class="input-group">
                    <span class="input-group-addon">平台类型</span>
                    <select name="api_type" id="api_type" data-platformcode class="form-control">
                        <option value="">--请选择--</option>
                        @foreach($_api_list as $k => $v)
                            <option value="{{ $v }}" @if($api_type == $k) selected @endif>{{ $v }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="input-group">
                    <span class="input-group-addon">游戏类型</span>
                    <select name="gameType" id="gameType" class="form-control">
                        @foreach(config('platform.game_type') as $k => $v)
                            <option value="{{ $k }}" @if($k == $gameType) selected @endif>{{ $v }}</option>
                        @endforeach
                    </select>

                </div>
            </div>
            <div class="col-lg-2">
                <div class="input-group">
                    <span class="input-group-addon">账户</span>
                    <input type="text" class="form-control" data-uname name="name" value="{{ $name }}">
                </div>
            </div>

        </div>
        <div class="row" style="margin-top: 5px;">
            <div class="col-lg-3">
                <div class="input-group">
                    <span class="input-group-addon">开始时间</span>
                    <input type="text" class="form-control" data-starttime name="start_at" id="start_at" value="{{ $start_at }}" readonly>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group">
                    <span class="input-group-addon">结束时间</span>
                    <input type="text" class="form-control" data-endtime name="end_at" id="end_at" value="{{ $end_at }}" readonly>
                </div>
            </div>
            <div class="col-lg-2 pull-right">
                <div class="input-group">
                    <button type="button" data-btnsubmit class="btn btn-primary">搜索</button>&nbsp;
                    <button type="button" class="btn btn-warning" id="restSearchForm">重置</button>&nbsp;
                </div>
            </div>
        </div>
    </form>
</div>
<script>
    var urlencode = "{{ url('/admin/encode') }}";
    var GameRecord = new Game_record();
    GameRecord.GetMerchantReport(urlencode);
</script>