@extends('admin.layouts.main')
@section('content')
    @include('admin.layouts.ueditor_admin')
    <script>
        var ue = UE.getEditor('editor');
        ue.ready(function(){
            //var content = "";
            ue.setContent('{!! $data->content !!}');
        })
    </script>
    <section class="content">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">编辑单页</h3>
            </div>
            <div class="panel-body">
                <form class="form-horizontal" id="form" action="{{ route('single.update', ['id' => $data->id]) }}" method="post">
                    <input type="hidden" name="_method" value="put">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="title" class="col-sm-2 control-label">标题</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" id="title" name="title" value="{{ $data->title }}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="content" class="col-sm-2 control-label">内容 <strong style="color: red">*</strong></label>
                            <div class="col-sm-7">
								<script id="editor" name="content" type="text/plain"></script>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sort" class="col-sm-2 control-label">别名</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" id="alias" name="alias" value="{{ $data->alias }}" />
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