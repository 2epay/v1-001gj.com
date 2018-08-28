<?php

namespace App\Http\Controllers\Admin;

use App\Models\HongbaoSettings;
use Illuminate\Http\Request;
class HbSettingController extends AdminBaseController
{
    public function index(Request $request)
    {
        $mod = new HongbaoSettings();

        $data = $mod->orderBy('sort', 'asc')->paginate(config('admin.page-size'));

        return view('admin.hb_setting.index', compact('data'));
    }

    public function create()
    {
        return view('admin.hb_setting.create');
    }

    public function store(Request $request)
    {
        $validator = $this->verify($request, 'hb_setting.store');

        if ($validator->fails())
        {
            $messages = $validator->messages()->toArray();
            return responseWrong($messages);
        }

        $data = $request->all();

        HongbaoSettings::create($data);

        return responseSuccess('', '', route('hb_setting.index'));

    }

    public function edit($id)
    {
        $data = HongbaoSettings::findOrFail($id);

        return view('admin.hb_setting.edit', compact('data'));
    }

    public function update(Request $request, $id)
    {
        $validator = $this->verify($request, 'hb_setting.store');

        if ($validator->fails())
        {
            $messages = $validator->messages()->toArray();
            return responseWrong($messages);
        }

        $mod = HongbaoSettings::findOrFail($id);

        $mod->update($request->all());

        return responseSuccess('', '', route('hb_setting.index'));

    }

    public function destroy($id)
    {
        HongbaoSettings::destroy($id);

        return respS();
    }

    public function check($id, $status)
    {
        $mod = HongbaoSettings::findOrFail($id);
        $mod->update([
            'on_line' => $status
        ]);

        return respS();
    }
}
