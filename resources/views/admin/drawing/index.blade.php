@extends('admin.layouts.main')
@section('content')
    <section class="content">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">提款列表</h3>
            </div>
            <div class="panel-body">
                @include('admin.drawing.filter')

                <table class="table table-bordered table-hover text-center">
                    <tr>
                        <th style="width: 5%">ID</th>
                        <th>订单号</th>
                        <th style="width: 10%">提款金额</th>
                        <th style="width: 5%">手续费</th>
                        <th style="width: 15%">开户行/卡号</th>
                        <th style="width: 15%">开户人/开户地址</th>
                        <th style="width: 5%">用户名</th>
                        <th style="width: 10%">申请时间</th>
                        <th style="width: 10%">状态</th>
                        <th style="width: 15%">操作</th>
                    </tr>
                    @foreach($data as $item)
                        <tr>
                            <td>
                                {{ $item->id }}
                            </td>
                            <td>
                                {{ $item->bill_no }}
                            </td>
                            <td>
                                {{ $item->money }}
                            </td>
                            <td>
                                {{ $item->counter_fee }}
                            </td>
                            <td>
                                {{ $item->bank_name }}/{{ $item->bank_card }}
                            </td>
                            <td>
                                {{ $item->name }}/{{ $item->bank_branch_name }}/{{ $item->bank_address }}
                            </td>
                            <td>
                                {{ $item->member->name }}
                            </td>
                            <td>
                                {{ $item->created_at }}
                            </td>
                            <td>
                                {!! \App\Models\Base::$DRAWING_STATUS_HTML[$item->status] !!}
                            </td>
                            <td>
                                @if ($item->status == 1)
                                    <a href="{{ route('drawing.show', ['id' => $item->getKey()]) }}" class="btn btn-primary btn-xs">同意</a>

                                    <button type="button" class="btn btn-danger btn-xs" data-uri="{{ route('drawing.update', ['id' => $item->id]) }}" onclick="showRemark(this)">不同意</button>
                                    {{--<button class="btn btn-danger btn-xs"--}}
                                    {{--data-url="{{route('fs_level.destroy', ['id' => $item->getKey()])}}"--}}
                                    {{--data-toggle="modal"--}}
                                    {{--data-target="#delete-modal"--}}
                                    {{-->--}}
                                    {{--删除--}}
                                    {{--</button>--}}
                                @endif
                            </td>
                        </tr>
                    @endforeach
                    <tfoot>
                        <tr>
                            <td><strong style="color: red">总合计</strong></td>
                            <td></td>
                            <td><strong style="color: red">{{ $total_money }}</strong></td>
                            <td><strong style="color: red">{{ $total_counter_fee }}</strong></td>
                            <td colspan="6"></td>
                        </tr>
                    </tfoot>
                </table>
                <div class="clearfix">
                    <div class="pull-left" style="margin: 0;">
                        <p>总共 <strong style="color: red">{{ $data->total() }}</strong> 条</p>
                    </div>
                    <div class="pull-right" style="margin: 0;">
                        {!! $data->appends(['status' => $status, 'name' => $name, 'start_at' => $start_at, 'end_at' => $end_at])->links() !!}
                    </div>
                </div>

            </div>
        </div>

    </section><!-- /.content -->

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel">不通过原因</h4>
                </div>
                <div class="modal-body">
                    <form action="" method="post" class="form-horizontal" id="updateReason">
                        {!! csrf_field() !!}
                        <input type="hidden" name="_method" value="put">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="fail_reason" class="col-sm-3 control-label"><span style="color: red">不通过原因</span></label>
                                <div class="col-sm-8">
                                    <textarea name="fail_reason" id="fail_reason" rows="3" required class="form-control"></textarea>
                                </div>
                            </div>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <div class="form-group">
                                <label class="col-sm-3 control-label"></label>
                                <div class="col-sm-8">
                                    <button type="submit" class="btn btn-info btn-flat">提交</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script>
        function showRemark(e)
        {
            var uri = $(e).attr('data-uri');
            $('#updateReason').attr('action',uri)
            $('#myModal').modal('show');
        }
    </script>
@endsection