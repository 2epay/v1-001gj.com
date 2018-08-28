@extends('admin.layouts.main')
@section('content')
     <section class="content">
         <div class="panel panel-primary">
             <div class="panel-heading">
                 <h3 class="panel-title">单页列表</h3>
             </div>
             <div class="panel-body">
                 @include('admin.single.filter')
                 <h3 style="color: red" class="text-center"> 可根据排序调整位置</h3>
                 <table class="table table-bordered table-hover text-center">
                     <tr>
                         <th style="width: 5%">ID</th>
                         <th style="width: 10%">标题</th>

                         <th style="width: 5%">排序</th>
						<th style="width: 10%">访问别名</th>

                         <th  style="width: 15%">最后更新时间</th>
                         <th  style="width: 15%">操作</th>
                     </tr>
                     @foreach($data as $item)
                         <tr>
                             <td>
                                 {{ $item->id }}
                             </td>
                             <td>
                                 {{ $item->title }}
                             </td>
                             <td>
                                 {{ $item->sort }}
                             </td>
                             <td>
                                 {{ $item->alias }}
                             </td>							 
                             <td>
                                 {{ $item->updated_at }}
                             </td>
                             <td>
                                 <a href="{{ route('single.edit', ['id' => $item->getKey()]) }}" class="btn btn-primary btn-xs">修改</a>
                                 <button class="btn btn-danger btn-xs"
                                         data-url="{{route('single.destroy', ['id' => $item->getKey()])}}"
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
     @include('admin.layouts.delete',['title'=>'操作提示','content'=>'你确定要删除这个单页吗?'])
@endsection