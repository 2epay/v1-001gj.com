<?php

namespace App\Http\Controllers\Api;

use App\Models\Api;
use App\Services\BiService;
use App\Models\MemberAPi;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Web\WebBaseController;

class PtController  extends WebBaseController
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
        $platformCode = $request->get('platformCode')?:'PT';

        //检查账号是否注册
        $api = Api::where('api_name', $platformCode)->first();
        $member_api = $member->apis()->where('api_id', $api->id)->first();

        echo "meber : ".$member_api." ----</br>";
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

        $gametype = $request->get('gametype')?:null;
        $devices = $request->get('devices')?:0;
        $gameId = $request->get('gameId')?:null;
        // $gameId = '1145';
        $gameName = $request->get('gameName')?:null;
        // $gameName = '樱之恋';
        echo "platformCode  :".$platformCode."</br>";
        echo "username      :".$username."</br>";
        echo "gametype      :".$gametype."</br>";
        echo "devices       :".$devices."</br>";
        echo "gameId        :".$gameId."</br>";
        echo "gameName      :".$gameName."</br>";

        $res = $this->service->loginbi($platformCode,$username,$gametype, $devices, $gameId, $gameName);
        // echo "res: ";
        print_r($res);
        // $res = $res . "9DTTfcvo9KlNnM3GyAukXbuo8Z6%2bJILsGwJ%2bBvD2%2bjHgL4D6%2f7OqKfEs9pEyWA4qujEeStLTAEcNjXJ92T%2bqU8wNatfsoKBOh1I7L7HPQ%2bBvBymc83WIqA89oaJSrQAG" . "&WebSiteCode=738209c0-36aa-491c-88d2-09f9713a2538";

        return redirect()->to($res);

    }

    public function game_record()
    {
        return view('api.getRecord_pt');
    }

}
