<?php

namespace App\Http\Controllers\Api_d;

use App\Http\Controllers\Web\WebBaseController;
use App\Models\Member;
use App\Services\CurlService;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

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
                $mod = new AgController();
                $res =  $mod->balance($member->name, $member->original_password);
                break;
            case 'MG':
                $mod = new MgController();
                $res =  $mod->balance($member->name, $member->original_password);
                break;
            case 'BBIN':
                $mod = new BbinController();
                $res =  $mod->balance($member->name, $member->original_password);
                break;
            case 'PT':
                $mod = new PtController();
                $res =  $mod->balance($member->name, $member->original_password);
                break;
            case 'PNG':
                $mod = new PngController();
                $res =  $mod->balance($member->name, $member->original_password);
                break;
            case 'ALLBET':
                $mod = new AllbetController();
                $res =  $mod->balance($member->name, $member->original_password);
                break;
            case 'EBET':
                $mod = new EbetController();
                $res =  $mod->balance($member->name, $member->original_password);
                break;
            case 'OG':
                $mod = new OgController();
                $res =  $mod->balance($member->name, $member->original_password);
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
                $mod = new AgController();
                $res = $mod->deposit($username, $password, $amount, $amount_type);
                break;
            case 'MG':
                $mod = new MgController();
                $res = $mod->deposit($username, $password, $amount, $amount_type);
                break;
            case 'BBIN':
                $mod = new BbinController();
                $res = $mod->deposit($username, $password, $amount, $amount_type);
                break;
            case 'PT':
                $mod = new PtController();
                $res = $mod->deposit($username, $password, $amount, $amount_type);
                break;
            case 'PNG':
                $mod = new PngController();
                return $mod->deposit($username, $password, $amount, $amount_type);
                break;
            case 'ALLBET':
                $mod = new AllbetController();
                $res = $mod->deposit($username, $password, $amount, $amount_type);
                break;
            case 'EBET':
                $mod = new EbetController();
                $res = $mod->deposit($username, $password, $amount, $amount_type);
                break;
            case 'OG':
                $mod = new OgController();
                $res = $mod->deposit($username, $password, $amount, $amount_type);
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
                $mod = new AgController();
                $res = $mod->withdrawal($username, $password, $amount, $amount_type);
                break;
            case 'MG':
                $mod = new MgController();
                $res = $mod->withdrawal($username, $password, $amount, $amount_type);
                break;
            case 'BBIN':
                $mod = new BbinController();
                $res = $mod->withdrawal($username, $password, $amount, $amount_type);
                break;
            case 'PT':
                $mod = new PtController();
                $res = $mod->withdrawal($username, $password, $amount, $amount_type);
                break;
            case 'PNG':
                $mod = new PngController();
                $res = $mod->withdrawal($username, $password, $amount, $amount_type);
                break;
            case 'ALLBET':
                $mod = new AllbetController();
                $res = $mod->withdrawal($username, $password, $amount, $amount_type);
                break;
            case 'EBET':
                $mod = new EbetController();
                $res = $mod->withdrawal($username, $password, $amount, $amount_type);
                break;
            case 'OG':
                $mod = new OgController();
                $res = $mod->withdrawal($username, $password, $amount, $amount_type);
                break;
        }

        return $res;
    }

    //查询商户余额
    public function credit(Request $request)
    {
        $api_name = strtoupper($request->get('api_name'));
        $member = $this->getMember();
        $res = '';
        switch ($api_name){
            case 'AG':
                $mod = new AgController();
                $res =  $mod->credit();
                break;
            case 'MG':
                $mod = new MgController();
                $res =  $mod->credit();
                break;
            case 'BBIN':
                $mod = new BbinController();
                $res =  $mod->credit();
                break;
            case 'PT':
                $mod = new PtController();
                $res =  $mod->balance($member->name, $member->original_password);
                break;
            case 'PNG':
                $mod = new PngController();
                $res =  $mod->balance($member->name, $member->original_password);
                break;
            case 'ALLBET':
                $mod = new AllbetController();
                $res =  $mod->credit();
                break;
            case 'EBET':
                $mod = new EbetController();
                $res =  $mod->credit();
                break;
            case 'OG':
                $mod = new OgController();
                $res =  $mod->credit();
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
                $mod = new AgController();
                $res =  $mod->balance($member->name, $member->original_password);
                break;
            case 'MG':
                $mod = new MgController();
                $res =  $mod->balance($member->name, $member->original_password);
                break;
            case 'BBIN':
                $mod = new BbinController();
                $res =  $mod->balance($member->name, $member->original_password);
                break;
            case 'PT':
                $mod = new PtController();
                $res =  $mod->balance($member->name, $member->original_password);
                break;
            case 'PNG':
                $mod = new PngController();
                $res =  $mod->balance($member->name, $member->original_password);
                break;
            case 'ALLBET':
                $mod = new AllbetController();
                $res =  $mod->balance($member->name, $member->original_password);
                break;
            case 'EBET':
                $mod = new EbetController();
                $res =  $mod->balance($member->name, $member->original_password);
                break;
            case 'OG':
                $mod = new OgController();
                $res =  $mod->balance($member->name, $member->original_password);
                break;
        }

        return $res;
    }
}
