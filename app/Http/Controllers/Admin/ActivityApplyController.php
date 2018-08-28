<?php

namespace App\Http\Controllers\Admin;

use App\Models\Member;
use App\Models\Recharge;
use App\Models\Dividend;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ActivityApply;
use App\Models\Activity;
use App\Traits\ValidationTrait;
use DB;
class ActivityApplyController extends Controller
{
    use ValidationTrait;
    public function index(Request $request)
    {
        $mod = new ActivityApply();
		
		$name = $title = '';
        if ($request->has('name'))
        {
            $name = $request->get('name');
            $m_list = Member::where('name', 'LIKE', "%$name%")->pluck('id');
            $mod = $mod->whereIn('member_id', $m_list);
        }
		
        if ($request->has('title'))
        {
            $title = $request->get('title');
            $a_list = Activity::where('title', 'LIKE', "%$title%")->pluck('id');
            $mod = $mod->whereIn('activity_id', $a_list);
        }		
		
        $data = $mod->orderBy('created_at', 'desc')->paginate(config('admin.page-size'));

        return view('admin.activity_apply.index', compact('data', 'name', 'title'));
    }

    public function show($id)
    {
        $data = ActivityApply::findOrFail($id);

		$givemoney = '';
		
		if($data->activity->type == 2)
		{//首存活动
			$first_mod = new Recharge();
			
			if(isset($check_activity->start_at))
			{
				$first_mod = $first_mod->where('created_at', '>=', $check_activity->start_at);
			}
			
			if(isset($check_activity->end_at))
			{
				$first_mod = $first_mod->where('created_at', '<=', $check_activity->end_at);
			}
	
			$first_recharge = $first_mod->where('member_id', $data->member->id)->where('status', 2)->orderBy('created_at', 'asc')->first();
			
			$givemoney = $first_recharge->money * $data->activity->rate/100;
		}
		
		if($data->activity->type == 4)
		{//充值活动
			$ck_mod = new Recharge();
			
			if(isset($check_activity->start_at))
			{
				$ck_mod = $ck_mod->where('created_at', '>=', $check_activity->start_at);
			}
			
			if(isset($check_activity->end_at))
			{
				$ck_mod = $ck_mod->where('created_at', '<=', $check_activity->end_at);
			}	
	
			$recharge_money = $ck_mod->where('member_id', $data->member->id)->where('status', 2)->sum('money');
				
			$givemoney = $recharge_money * $data->activity->rate/100;
		}		
		
		if($givemoney > $data->activity->gift_limit_money)
		{
			$givemoney = $data->activity->gift_limit_money;
		}
		
		if($data->activity->type == 1)
		{//注册活动
			$givemoney = $data->activity->direct_money;
		}		

        return view('admin.activity_apply.show', compact('data', 'givemoney'));
    }

    //转账成功
    public function confirm(Request $request, $id)
    {
        if ($request->get('givemoney') < 1)
            return responseWrong('赠送金额为0请选择不通过');

        $mod = ActivityApply::findOrFail($id);
		
		$mod->update([
			'status' => 2
		]);

		//如果存在赠送金额 则添加进红利表

		Dividend::create([
			'member_id' => $mod->member_id,
			'type' => $mod->activity->type,
			'money' => $request->get('givemoney'),
			'describe' => '充值赠送金额',
			'status' => 1
		]);

		//更新用户红利
		$fs_money = $mod->member->fs_money + $request->get('givemoney');
		$member_mod = Member::findOrFail($mod->member_id);
        $member_mod->update([
            'fs_money' => $fs_money
        ]);

        return responseSuccess('审核通过', '', route('activity_apply.index'));
    }

    public function update(Request $request, $id)
    {
        $mod = ActivityApply::findOrFail($id);

        $mod->update([
            'fail_reason' => $request->get('fail_reason'),
            'status' => 3
        ]);

        return respS();

    }
	
    public function destroy($id)
    {
        ActivityApply::destroy($id);

        return respS();
    }
	
	public function delall(Request $request)
	{
		$ids = $request->input('ids');
		
		$ids_a = explode(',', $ids);

		foreach($ids_a as $id)
		{
			$this->destroy($id);
		}
		
		return respS();
	}
}
