<?php

namespace App\Http\Controllers\Admin;

use App\Models\HongbaoLists;
use Illuminate\Http\Request;
class HbListController extends AdminBaseController
{
    public function index(Request $request)
    {
        $mod = new HongbaoLists();

        $data = $mod->orderBy('created_at', 'desc')->paginate(config('admin.page-size'));
		// var_dump($data);
        return view('admin.hb_list.index', compact('data'));
    }

    public function destroy($id)
    {
        HongbaoLists::destroy($id);

        return respS();
    }
}
