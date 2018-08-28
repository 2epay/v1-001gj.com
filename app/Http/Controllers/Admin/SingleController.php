<?php

namespace App\Http\Controllers\Admin;

use App\Models\Single;
use Illuminate\Http\Request;
class SingleController extends AdminBaseController
{
    public function index(Request $request)
    {
        $mod = new Single();

        $data = $mod->orderBy('sort', 'desc')->paginate(config('admin.page-size'));

        return view('admin.single.index', compact('data'));
    }

    public function create()
    {
        return view('admin.single.create');
    }

    public function store(Request $request)
    {
        $validator = $this->verify($request, 'single.store');

        if ($validator->fails())
        {
            $messages = $validator->messages()->toArray();
            return responseWrong($messages);
        }

        $data = $request->all();

        Single::create($data);

        return responseSuccess('', '', route('single.index'));

    }

    public function edit($id)
    {
        $data = Single::findOrFail($id);

        return view('admin.single.edit', compact('data'));
    }

    public function update(Request $request, $id)
    {
        $validator = $this->verify($request, 'single.store');

        if ($validator->fails())
        {
            $messages = $validator->messages()->toArray();
            return responseWrong($messages);
        }

        $mod = Single::findOrFail($id);

        $mod->update($request->all());

        return responseSuccess('', '', route('single.index'));

    }

    public function destroy($id)
    {
        Single::destroy($id);

        return respS();
    }

    public function check($id, $status)
    {
        $mod = Single::findOrFail($id);
        $mod->update([
            'on_line' => $status
        ]);

        return respS();
    }
}
