<?php

namespace App\Http\Controllers\Admin;

use App\Models\Api;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Member;
use App\Models\GameRecord;
class GameRecordController extends AdminBaseController
{

    public function index(Request $request)
    {
        $mod = new GameRecord();
        $playerName = $start_at = $end_at = $api_type = $gameType = '';
        if ($request->has('api_type'))
        {
            $api_type = $request->get('api_type');
            $mod = $mod->where('api_type', $api_type);
        }
        if ($request->has('gameType'))
        {
            $gameType = $request->get('gameType');
            $mod = $mod->where('gameType', $gameType);
        }
        if ($request->has('playerName'))
        {
            $playerName = $request->get('playerName');
            $mod = $mod->where('playerName', 'like', "%$playerName%");
        }
        if ($request->has('start_at'))
        {
            $start_at = $request->get('start_at');
            $mod = $mod->where('betTime', '>=', $start_at);
        }
        if ($request->has('end_at'))
        {
            $end_at = $request->get('end_at');
            $mod = $mod->where('betTime', '<=',$end_at);
        }


        $total_netAmount = $mod->sum('netAmount');
        $total_betAmount = $mod->sum('betAmount');
        $total_netAmount = $total_netAmount - $total_betAmount;
        $total_validBetAmount = $mod->sum('validBetAmount');

        $data = $mod->orderBy('betTime', 'desc')->paginate(config('admin.page-size'));

        return view('admin.game_record.index', compact('data', 'playerName', 'start_at', 'end_at', 'api_type', 'total_netAmount', 'total_betAmount', 'gameType', 'total_validBetAmount'));
    }

    public function encodeAction(Request $request)
    {
        $encode = 
            'TimeStamp='.time().
            '&PageSize='.config('admin.page-size').
            '&StartTime='.strtotime($request->StartTime).
            '&EndTime='.strtotime($request->EndTime);

        try{
            if ($request->platformCode != '') 
            {
                $encode = $encode . '&platformCode='.$request->platformCode;
            }
            if ($request->PageIndex != '') 
            {
                $encode = $encode . '&PageIndex='.$request->PageIndex;
            }
            if ($request->uname != '') {
                $encode = $encode . '&uname='.$request->uname;
            }else $status = 0;
            $mod = Api::where('api_name', $request->platformCode)->first();
            $desKey = $mod->api_id;
            $signKey = $mod->api_key;
            $desencode = $this->encode($encode, $desKey);
            $url = "http://report.gebbs.net/QueryApi/GetMerchantReport?parameter=".$desencode."&WebSiteCode=".$signKey;
            $status = 1;
        } catch (Exception $e) {
            $status = 0;
        }

        return response()->json([
            'status' => $status,
            'url' => $url,
            'beforeurl' => $encode,
        ]);
    }

    public function encode( $str,$key ){
        $str=str_replace('+','%2b',$str);
        $size   = @mcrypt_get_block_size(MCRYPT_DES, MCRYPT_MODE_CBC );
        $str = $this->_pkcs5Pad($str, $size);
        $data =  @mcrypt_encrypt(MCRYPT_DES, $key, $str, MCRYPT_MODE_CBC, $key);
        $ret = base64_encode($data);
        return urlencode($ret);
    }

    function _pkcs5Pad($text, $blockSize) {
        $pad = $blockSize - (strlen( $text ) % $blockSize);
        return $text . str_repeat( chr( $pad ), $pad );
    }
//    public function index(Request $request)
//    {
//        $mod = new GameRecord();
//        $username = $start_at = $end_at = $productType = '';
//        if ($request->has('productType'))
//        {
//            $productType = $request->get('productType');
//            $mod = $mod->where('productType', $productType);
//        }
//        if ($request->has('username'))
//        {
//            $username = $request->get('username');
//            $mod = $mod->where('username', 'like', "%$username%");
//        }
//        if ($request->has('start_at'))
//        {
//            $start_at = $request->get('start_at');
//            $mod = $mod->where('betTime', '>=', $start_at);
//        }
//        if ($request->has('end_at'))
//        {
//            $end_at = $request->get('end_at');
//            $mod = $mod->where('betTime', '<=',$end_at);
//        }
//
//        $data = $mod->orderBy('created_at', 'desc')->paginate(config('admin.page-size'));
//
//        $total_netPnl = $mod->sum('netPnl');
//        $total_betAmount = $mod->sum('betAmount');
//
//        return view('admin.game_record.index', compact('data', 'username', 'start_at', 'end_at', 'productType', 'total_netPnl', 'total_betAmount'));
//    }
}
