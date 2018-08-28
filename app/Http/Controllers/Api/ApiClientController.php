<?php
//全套程序 请 联系 QQ:3083578634 或者访问 www.uc697.com
namespace App\Http\Controllers\Api;

use App\Http\Controllers\Web\WebBaseController;
use App\Models\Member;
use App\Services\CurlService;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Api\BiController;
class ApiClientController extends WebBaseController
{

    //查询余额
    public function check(Request $request)
    {
        $api_name = strtoupper($request->get('api_name'));
        $member = $this->getMember();
        $res = '';
        switch ($api_name){
            case 'AG':
                $mod = new BiController();
                $res =  $mod->balance($api_name,$member->name);
                break;
            case 'BBIN':
                $mod = new BiController();
                $res =  $mod->balance($api_name,$member->name);
                break;
            case 'AB':
                $mod = new BiController();
                $res =  $mod->balance($api_name,$member->name);
                break;
            case 'PT':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'MG':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'TTG':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'IBC':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'YC':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'CG':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'SA':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'BG':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'DT':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'HJ':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'WJS':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'PNG':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'EBET':
                 $mod = new BiController();
                 $res =  $mod->balance($api_name, $member->name);
                break;
            case 'OG':
                $mod = new BiController();
                 $res =  $mod->balance($api_name, $member->name);
                break;
            case 'EG':
                 $mod = new BiController();
                 $res =  $mod->balance($api_name, $member->name);
                break;
            case 'SS':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'BS':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'MW':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'SUNBET':
                $mod = new BiController();
                $res =  $mod->balance("SunBet", $member->name);
                break;
            case 'WM':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'VR':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'OPUS':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
			case 'DG':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
			case 'SW':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
			case 'CQ':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
        }

        return $res;
    }

    //转入游戏
    public function deposit($api_name,$username,$password,$amount,$amount_type)
    {
        $api_name = strtoupper($api_name);
        $res = '';
        switch ($api_name){
            case 'AG':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'BBIN':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'AB':
                $mod = new BiController();
                $res = $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'PT':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'MG':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'TTG':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'IBC':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'YC':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'CG':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'SA':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'BG':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'DT':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'HJ':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'WJS':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'PNG':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'EBET':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'OG':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'EG':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'SS':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'BS':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'MW':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'SUNBET':
                $mod = new BiController();
                $res =  $mod->deposit("SunBet",$username, $amount, $amount_type);
                break;
            case 'WM':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
            case 'VR':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
			 case 'OPUS':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
			 case 'DG':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
			case 'SW':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
			case 'CQ':
                $mod = new BiController();
                $res =  $mod->deposit($api_name,$username, $amount, $amount_type);
                break;
        }

        return $res;
    }

    //转出游戏
    public function withdrawal($api_name,$username,$password,$amount,$amount_type)
    {
        $api_name = strtoupper($api_name);
        $res = '';
        switch ($api_name){
            case 'AG':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'BBIN':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'AB':
                $mod = new BiController();
                $res = $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'PT':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'MG':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'TTG':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'IBC':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'YC':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'CG':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'SA':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'BG':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'DT':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'HJ':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'WJS':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'PNG':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'EBET':
                 $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'OG':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'EG':
                 $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'SS':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'BS':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'MW':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'SUNBET':
                $mod = new BiController();
                $res =  $mod->withdrawal("SunBet",$username, $amount, $amount_type);
                break;
            case 'WM':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
            case 'VR':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
			case 'OPUS':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
			case 'DG':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
			case 'SW':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
			case 'CQ':
                $mod = new BiController();
                $res =  $mod->withdrawal($api_name,$username, $amount, $amount_type);
                break;
        }

        return $res;
    }

    //查询商户余额
    public function credit(Request $request)
    {
        $api_name = strtoupper($request->get('api_name'));
        $res = '';
        switch ($api_name){
            case 'AG':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
            case 'BBIN':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
            case 'AB':
                $mod = new BiController();
                $res = $mod->credit($api_name);
                break;
            case 'PT':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
            case 'MG':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
            case 'TTG':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
            case 'IBC':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
            case 'YC':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
            case 'CG':
                $mod = new BiController();
                $res = $mod->credit($api_name);
                break;
            case 'SA':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
            case 'BG':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
            case 'DT':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
            case 'HJ':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
            case 'WJS':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
            case 'PNG':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
            case 'EBET':
               $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
            case 'OG':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
			case 'EG':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
            case 'SS':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
            case 'BS':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
            case 'MW':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
            case 'SUNBET':
                $mod = new BiController();
                $res =  $mod->credit('SunBet');
                break;
            case 'WM':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
           case 'VR':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
			case 'OPUS':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
			case 'DG':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
			case 'SW':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
			case 'CQ':
                $mod = new BiController();
                $res =  $mod->credit($api_name);
                break;
        }

        return $res;
    }

    //后台查询用户余额
    public function balance($id, $api_name)
    {
        $member = Member::findOrFail($id);
        $res = '';
        switch ($api_name){
            case 'AG':
                $mod = new BiController();
                $res =  $mod->balance($api_name,$member->name);
                break;
            case 'BBIN':
                $mod = new BiController();
                $res =  $mod->balance($api_name,$member->name);
                break;
            case 'AB':
                $mod = new BiController();
                $res =  $mod->balance($api_name,$member->name);
                break;
            case 'PT':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'MG':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'TTG':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'IBC':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'YC':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'CG':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'SA':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'BG':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'DT':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'HJ':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'WJS':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'PNG':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'EBET':
                 $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'OG':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'EG':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'SS':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'BS':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'MW':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'SUNBET':
                $mod = new BiController();
                $res =  $mod->balance("SunBet", $member->name);
                break;
             case 'WM':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
            case 'VR':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
			case 'OPUS':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
			case 'DG':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
			case 'SW':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
			case 'CQ':
                $mod = new BiController();
                $res =  $mod->balance($api_name, $member->name);
                break;
        }

        return $res;
    }
}
