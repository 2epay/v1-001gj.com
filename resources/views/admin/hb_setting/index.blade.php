@extends('admin.layouts.main')
@section('content')
     <section class="content">
         <div class="panel panel-primary">
             <div class="panel-heading">
                 <h3 class="panel-title">红包设置</h3>
             </div>
             <div class="panel-body">
				@include('admin.hb_setting.filter')
                 <table class="table table-bordered table-hover text-center">
                     <tr>
                         <th style="width: 5%">ID</th>
                         <th style="width: 10%">存款范围</th>

                         <th style="width: 5%">红包次数</th>
						<th style="width: 10%">红包金额</th>
						<th style="width: 10%">排序</th>

                         <th  style="width: 15%">最后更新时间</th>
                         <th  style="width: 15%">操作</th>
                     </tr>
                     @foreach($data as $item)
                         <tr>
                             <td>
                                 {{ $item->id }}
                             </td>
                             <td>
                                 {{ $item->min_num }} - {{ $item->max_num }}
                             </td>
                             <td>
                                 {{ $item->times }}
                             </td>							 
                             <td>
                                 {{ $item->min_per }}% - {{ $item->max_per }}%
                             </td>
                             <td>
                                 {{ $item->sort }}
                             </td>							 
                             <td>
                                 {{ $item->updated_at }}
                             </td>
                             <td>
                                 <a href="{{ route('hb_setting.edit', ['id' => $item->getKey()]) }}" class="btn btn-primary btn-xs">修改</a>
                                 <button class="btn btn-danger btn-xs"
                                         data-url="{{route('hb_setting.destroy', ['id' => $item->getKey()])}}"
                                         data-toggle="modal"
                                         data-target="#delete-modal"
                                 >
                                     删除
                                 </button>
                             </td>
                         </tr>
                     @endforeach
                 </table>
                 <div class="clearfix">
                     <div class="pull-left" style="margin: 0;">
                         <p>总共 <strong style="color: red">{{ $data->total() }}</strong> 条</p>
                     </div>
                 <div class="pull-right" style="margin: 0;">
                     {!! $data->render() !!}
                 </div>
                 </div>
             </div>
         </div>

     </section><!-- /.content -->
@endsection
@section("after.js")
     @include('admin.layouts.delete',['title'=>'操作提示','content'=>'你确定要删除这个红包设置吗?'])
@endsection