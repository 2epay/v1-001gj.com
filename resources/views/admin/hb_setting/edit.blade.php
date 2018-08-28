@extends('admin.layouts.main')
@section('content')

    <section class="content">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">编辑红包设置</h3>
            </div>
            <div class="panel-body">
                <form class="form-horizontal" id="form" action="{{ route('hb_setting.update', ['id' => $data->id]) }}" method="post">
                    <input type="hidden" name="_method" value="put">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="title" class="col-sm-2 control-label">存款范围</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="min_num" name="min_num" value="{{ $data->min_num }}" />
                            </div>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="max_num" name="max_num" value="{{ $data->max_num }}" />
                            </div>							
                        </div>
                        <div class="form-group">
                            <label for="title" class="col-sm-2 control-label">红包次数</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="times" name="times" value="{{ $data->times }}" />
                            </div>						
                        </div>						

                        <div class="form-group">
                            <label for="title" class="col-sm-2 control-label">红包金额</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="min_per" name="min_per" value="{{ $data->min_per }}" />
                            </div>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="max_per" name="max_per" value="{{ $data->max_per }}" />
                            </div>							
                        </div>						
                        <div class="form-group">
                            <label for="sort" class="col-sm-2 control-label">排序</label>
                            <div class="col-sm-7">
                                <input type="number" class="form-control" id="sort" name="sort" value="{{ $data->sort }}" />
                            </div>
                        </div>
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <div class="form-group">
                            <label class="col-sm-2 control-label"></label>
                            <div class="col-sm-7">
                                <button type="button" class="btn btn-primary submit-form-sync">提交</button>
                                &nbsp;<a href="{{ route('single.index') }}" class="btn btn-info">返回</a>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>

    </section><!-- /.content -->
@endsection