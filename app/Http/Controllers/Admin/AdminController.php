<?php

namespace App\Http\Controllers\Admin;
use App\Models\ActivityApply;
use App\Models\Drawing;
use App\Models\Dividend;
use App\Models\Api;
use App\Models\MemberLoginLog;
use App\Models\Recharge;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Member;
class AdminController extends Controller
{
    public function index()
    {
        $today_register_count = Member::where('created_at', '>=', date('Y-m-d 00:00:00'))->where('created_at', '<=', date('Y-m-d 23:59:59'))->count();
        $total_register_count = Member::count();
		
		//今日充值
		$success_recharge_count = Recharge::where('status', 1)->where('created_at', '>=', date('Y-m-d 00:00:00'))->where('created_at', '<=', date('Y-m-d 23:59:59'))->count();
        $success_recharge_sum = Recharge::where('status', 1)->where('created_at', '>=', date('Y-m-d 00:00:00'))->where('created_at', '<=', date('Y-m-d 23:59:59'))->sum('money');
		$total_recharge_count = Recharge::sum('money');;

		//今日出款
		$success_drawing_count = Drawing::where('status', 1)->where('created_at', '>=', date('Y-m-d 00:00:00'))->where('created_at', '<=', date('Y-m-d 23:59:59'))->count();
        $success_drawing_sum = Drawing::where('status', 1)->where('created_at', '>=', date('Y-m-d 00:00:00'))->where('created_at', '<=', date('Y-m-d 23:59:59'))->sum('money');
		$total_drawing_count = Drawing::sum('money');
		
		//今日红利
		$success_dividend_count = Dividend::where('created_at', '>=', date('Y-m-d 00:00:00'))->where('created_at', '<=', date('Y-m-d 23:59:59'))->count();
        $success_dividend_sum = Dividend::where('created_at', '>=', date('Y-m-d 00:00:00'))->where('created_at', '<=', date('Y-m-d 23:59:59'))->sum('money');	
		$total_dividend_count = Dividend::sum('money');
		
		$apis = Api::where('on_line', 0)->orderBy('sort', 'asc')->orderBy('created_at', 'asc')->paginate(100);
		
        return view('admin.index', compact(
			'today_register_count', 
			'success_recharge_count', 
			'success_recharge_sum', 
			'success_drawing_count', 
			'success_drawing_sum', 
			'success_dividend_count', 
			'success_dividend_sum', 
			'total_register_count', 
			'total_recharge_count', 
			'total_drawing_count', 
			'total_dividend_count', 
			'apis'
			));
    }

    public function hk_notice()
    {
        $return['status'] = 0;
        if (Recharge::where('status', 1)->count() > 0)
            $return['status'] = 1;
            //$return['status'] = 0;

        return $return;
    }

    public function tk_notice()
    {
        $return['status'] = 0;
        if (Drawing::where('status', 1)->count() > 0)
            $return['status'] = 1;
            //$return['status'] = 0;

        return $return;
    }
    
	 public function hd_notice()
    {
        $return['status'] = 0;
        if (ActivityApply::where('status', 1)->count() > 0)
            $return['status'] = 1;
            //$return['status'] = 0;

        return $return;
    }
    public function tips_on()
    {
        $return['status'] = 0;
        if (MemberLoginLog::where('created_at', '>=', date('Y-m-d H:i:s', strtotime('-1 min ')))->count() > 0)
        {
            foreach (MemberLoginLog::where('created_at', '>=', date('Y-m-d H:i:s', strtotime('-1 min ')))->get() as $item)
            {
                if ($item->member->is_tips_on == 0)
                    $return['status'] = 1;
            }

        }

        return $return;
    }
}
