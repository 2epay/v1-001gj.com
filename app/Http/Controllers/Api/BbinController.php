<?php

namespace App\Http\Controllers\Api;

use App\Models\Api;
use App\Models\MemberAPi;
use App\Services\BiService;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Web\WebBaseController;

class BbinController  extends WebBaseController
{
    protected $service,$api;
    public function __construct()
    {
        $this->service = new BiService();
    }

    public function login(Request $request)
    {
        //检查账号是否注册
        $member = $this->getMember();
        $username = $member->name;
        $platformCode = $request->get('platformCode')?:'BB';

        //检查账号是否注册
        $api = Api::where('api_name', 'BBIN')->first();
        $member_api = $member->apis()->where('api_id', $api->id)->first();

        if (!$member_api)
        {
            $res = json_decode($this->service->register($platformCode, $username), TRUE);
            if ($res['retCode'] != 0)
            {
                echo '开通失败！错误代码 '.$res['retCode'].' 请联系客服';exit;
            }

            //创建api账号
            $member_api = MemberAPi::create([
                'member_id' => $member->id,
                'api_id' => $api->id,
                'username' => $api->prefix.$member->name,
                'password' => $member->original_password
            ]);
        }

        $gametype = $request->get('gametype')?:'live';
        $devices = $request->get('devices')?:0;
        $gameId = $request->get('gameId')?:null;
        $gameName = $request->get('gameName')?:null;

        if (in_array($gametype, ['live', 'ball', 'ltlottery', 'game']))
        {
            $res = $this->service->loginbi($platformCode,$username,$gametype, $devices,$gameId, $gameName);
        } else {
            $res = $this->service->playGame($platformCode,$username,$gametype);
        }

        return redirect()->to($res);
    }

    public function game_record()
    {
        return view('api.getRecord_bbin');
    }

}
