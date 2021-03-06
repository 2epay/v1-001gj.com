<?php

namespace App\Http\Controllers\Api;

use App\Services\BiService;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Web\WebBaseController;

class TtgController  extends WebBaseController
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
        $platformCode = $request->get('platformCode')?:'TTG';

        $gametype = $request->get('gametype')?:0;
        $devices = $request->get('devices')?:1;
        $gameId = $request->get('gameId')?:null;
        $gameName = $request->get('gameName')?:null;

        $res = $this->service->loginbi($platformCode,$username,$gametype, $devices,$gameId, $gameName);

        return redirect()->to($res);

    }

    public function game_record()
    {
        return view('api.getRecord_ttg');
    }

}
