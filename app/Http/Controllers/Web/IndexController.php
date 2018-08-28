<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Activity;
use App\Models\Single;
use App\Models\BlackListIp;
use App\Models\GameList;
use App\Models\MemberLoginLog;
use App\Models\TcgGameList;
use App\Models\Member;
use App\Models\SystemConfig;
use App\Models\SystemNotice;
use App\Models\HongbaoSettings;
use App\Models\HongbaoLists;
use App\Models\Recharge;
use Illuminate\Http\Request;
use App\Traits\ValidationTrait;
use Auth;
use Session;
use App\Models\Api;
class IndexController extends Controller
{
    use ValidationTrait;

    public function index()
    {
        if (is_Mobile()) {
            return redirect()->to(route('wap.index'));
        }
		
        $mod = GameList::all();
        // echo $mod[0]->api->id;

        $apis = Api::where('on_line', 0)->get();

		$game_list = [];
		foreach($apis as $api)
		{
			// $game_list[strtolower($api['api_name']).'_list'] = $mod->where('api_id', $api->id)->where('on_line', 0)->orderByRaw('RAND()')->take(6)->get();
			$game_list[strtolower($api['api_name']).'_list'] = $mod->where('api_id', $api->id)->where('on_line', 0)->take(6);
		}
		
        return view('web.index', compact('game_list'));
    }
	
	public function hongbao()
	{
        $mod = new HongbaoSettings();

        $data = $mod->orderBy('sort', 'asc')->get();
		return view('web.hongbao', compact('data'));
	}
	
	public function beiyong()
	{
		return view('web.beiyong');
	}	
	
	public function testss()
	{

		var_dump($message);
		// var_dump($recharge_sum);
	}
	
	public function hongbaoGet()
	{
		$status = 0;
		$message = '';

		if(Auth::guard('member')->check())
		{
			$member_id = Auth::guard('member')->user()->id;
			$recharge_sum = Recharge::where('status', 2)->where('created_at', '>=', date('Y-m-d 00:00:00'))->where('created_at', '<=', date('Y-m-d 59:59'))->where('member_id', $member_id)->sum('money');
			
			$hb_setting = HongbaoSettings::where('min_num', '<=', $recharge_sum)->where('max_num', '>=', $recharge_sum)->first();
			
			$hongbao_count = HongbaoLists::where('created_at', '>=', date('Y-m-d 00:00:00'))->where('created_at', '<=', date('Y-m-d 59:59'))->where('member_id', $member_id)->count();

			if($recharge_sum < 1)
			{
				$status = 1;
				$message = "当天有充值记录才能抢红包哦";
			}
			else
			{
				if($hongbao_count < $hb_setting->times)
				{
					$message = rand($recharge_sum*($hb_setting->min_per/100), $recharge_sum*($hb_setting->max_per/100));
					
					//创建领取红包记录
					$data['member_id'] = $member_id;
					$data['money'] = $message;
					$data['name'] = Auth::guard('member')->user()->name;
					HongbaoLists::create($data);
					
					//更新会员红利账户
					$member_result = Member::where('id', $member_id)->first();
					$fs_money = $member_result->fs_money + $message;
					
					$mod = Member::findOrFail($member_id);
					$mod->update(['fs_money' => $fs_money]);					
				}
				else
				{
					$status = 1;
					$message = "今天的次数已经用完了哦";
				}				
			}
		}
		else
		{
			$status = 1;
			$message = "请登陆后再抢红包";
		}

		return ['status' => $status, 'message' => $message];
	}	
	
	public function hongbaoList()
	{
		$str = "
		<li><small>".date('Y-m-d H:i:', time()-120)."18</small><span>1047s***</span>抢到<strong>26.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."11</small><span>lsr88***</span>抢到<strong>14.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."07</small><span>wi928***</span>抢到<strong>6.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."25</small><span>1047s***</span>抢到<strong>88.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."52</small><span>1047s***</span>抢到<strong>256.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."30</small><span>wi928***</span>抢到<strong>8.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."25</small><span>y7311***</span>抢到<strong>23.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."49</small><span>lf579***</span>抢到<strong>36.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."29</small><span>cgfk8***</span>抢到<strong>76.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."56</small><span>zv811***</span>抢到<strong>83.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."48</small><span>zv811***</span>抢到<strong>6366.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."02</small><span>ra958***</span>抢到<strong>33.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."17</small><span>qq567***</span>抢到<strong>555.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."40</small><span>zsi41***</span>抢到<strong>58.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."09</small><span>cgfk8***</span>抢到<strong>344.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."40</small><span>lxddu***</span>抢到<strong>29.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."50</small><span>y7311***</span>抢到<strong>444.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."29</small><span>lsr88***</span>抢到<strong>384.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."25</small><span>36615***</span>抢到<strong>122.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."33</small><span>qq567***</span>抢到<strong>41.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."25</small><span>lxddu***</span>抢到<strong>233.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."15</small><span>lsr88***</span>抢到<strong>222.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."12</small><span>lf579***</span>抢到<strong>77.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."38</small><span>36615***</span>抢到<strong>88.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."27</small><span>1047s***</span>抢到<strong>3777.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."56</small><span>lsr88***</span>抢到<strong>177.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."44</small><span>lf579***</span>抢到<strong>344.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."21</small><span>zv811***</span>抢到<strong>677.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."33</small><span>zcx17***</span>抢到<strong>111.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."48</small><span>wdr60***</span>抢到<strong>66.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."16</small><span>lf579***</span>抢到<strong>566.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."37</small><span>qq567***</span>抢到<strong>25.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."14</small><span>36615***</span>抢到<strong>453.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."19</small><span>zcx17***</span>抢到<strong>64.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."39</small><span>zsi41***</span>抢到<strong>222.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."08</small><span>lsr88***</span>抢到<strong>73.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."08</small><span>zsi41***</span>抢到<strong>93.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."59</small><span>cgfk8***</span>抢到<strong>54.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-120)."43</small><span>cgfk8***</span>抢到<strong>355.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."15</small><span>js289***</span>抢到<strong>188.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."32</small><span>cgfk8***</span>抢到<strong>152.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."29</small><span>ra958***</span>抢到<strong>77.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."10</small><span>1047s***</span>抢到<strong>9.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."00</small><span>wdr60***</span>抢到<strong>321.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."41</small><span>zv811***</span>抢到<strong>178.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."08</small><span>36615***</span>抢到<strong>152.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."59</small><span>qq567***</span>抢到<strong>2.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."44</small><span>1047s***</span>抢到<strong>32.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."17</small><span>js289***</span>抢到<strong>7.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."11</small><span>zsi41***</span>抢到<strong>244.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."09</small><span>qq567***</span>抢到<strong>42.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."54</small><span>wi928***</span>抢到<strong>94.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."46</small><span>zv811***</span>抢到<strong>432.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."20</small><span>qq567***</span>抢到<strong>22.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."28</small><span>lxddu***</span>抢到<strong>58.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."59</small><span>lsr88***</span>抢到<strong>266.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."30</small><span>wi928***</span>抢到<strong>162.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."15</small><span>y7311***</span>抢到<strong>93.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."49</small><span>zsi41***</span>抢到<strong>12.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."22</small><span>zsi41***</span>抢到<strong>57.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."37</small><span>zsi41***</span>抢到<strong>21.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."21</small><span>wi928***</span>抢到<strong>47.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."16</small><span>lf579***</span>抢到<strong>999.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time()-60)."58</small><span>wi928***</span>抢到<strong>105.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."38</small><span>wi928***</span>抢到<strong>63.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."12</small><span>1047s***</span>抢到<strong>95.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."45</small><span>js289***</span>抢到<strong>5.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."29</small><span>zv811***</span>抢到<strong>2888.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."32</small><span>lsr88***</span>抢到<strong>422.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."55</small><span>zsi41***</span>抢到<strong>56.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."14</small><span>wi928***</span>抢到<strong>92.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."53</small><span>1047s***</span>抢到<strong>77.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."54</small><span>wi928***</span>抢到<strong>37.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."55</small><span>ra958***</span>抢到<strong>666.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."20</small><span>wdr60***</span>抢到<strong>92.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."15</small><span>lxddu***</span>抢到<strong>233.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."21</small><span>lf579***</span>抢到<strong>894.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."10</small><span>lsr88***</span>抢到<strong>44.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."41</small><span>js289***</span>抢到<strong>233.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."32</small><span>1047s***</span>抢到<strong>854.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."48</small><span>lsr88***</span>抢到<strong>331.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."24</small><span>36615***</span>抢到<strong>56.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."11</small><span>lf579***</span>抢到<strong>1223.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."38</small><span>wi928***</span>抢到<strong>92.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."23</small><span>cgfk8***</span>抢到<strong>334.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."46</small><span>wdr60***</span>抢到<strong>1231.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."29</small><span>wi928***</span>抢到<strong>299.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."16</small><span>cgfk8***</span>抢到<strong>44.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."51</small><span>lxddu***</span>抢到<strong>321.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."18</small><span>ra958***</span>抢到<strong>84.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."17</small><span>36615***</span>抢到<strong>36.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."21</small><span>zcx17***</span>抢到<strong>62.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."42</small><span>qq567***</span>抢到<strong>234.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."21</small><span>qq567***</span>抢到<strong>45.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."44</small><span>zsi41***</span>抢到<strong>12.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."29</small><span>cgfk8***</span>抢到<strong>43.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."04</small><span>36615***</span>抢到<strong>88.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."48</small><span>cgfk8***</span>抢到<strong>64.00元红包</strong></li>
		<li><small>".date('Y-m-d H:i:', time())."41</small><span>wdr60***</span>抢到<strong>992.00元红包</strong></li>
		";
		
        return $str;
	}

    public function activityList()
    {
        $data = Activity::where('on_line', 0)->orderBy('created_at', 'desc')->get();
		$type = 0;
        return view('web.activityList', compact('data', 'type'));
    }
	
    public function activityType($type)
    {
        $data = Activity::where('type', $type)->orderBy('created_at', 'desc')->get();

        return view('web.activityList', compact('data', 'type'));
    }

    public function activityDetail($id)
    {
        $data = Activity::where('on_line', 0)->where('id', $id)->first();

        return view('web.activityDetail', compact('data'));
    }
	
    public function singleDetail($alias)
    {
        $data = Single::where('alias', $alias)->first();

        return view('web.single', compact('data'));
    }

    public function liveCasino()
    {
        return view('web.liveCasino');
    }
    public function esports()
    {
        $system_notices = SystemNotice::where('on_line', 0)->orderBy('sort', 'asc')->orderBy('created_at', 'desc')->get();
        return view('web.esports', compact('system_notices'));
    }
    public function lottory()
    {
        $system_notices = SystemNotice::where('on_line', 0)->orderBy('sort', 'asc')->orderBy('created_at', 'desc')->get();
        return view('web.lottory', compact('system_notices'));
    }

    public function eGame(Request $request)
    {
        $mod = new GameList();

		$hall = $line = '';
        $api_name = $request->get('api_name')?strtoupper($request->get('api_name')):'PT';

        $api_mod = Api::where('api_name', $api_name)->first();

        $mod = $mod->where('api_id', $api_mod->id);

        $gameName =  '';

        if ($request->has('name'))
        {
            $gameName = $request->get('name');
            $mod = $mod->where('name', 'LIKE', "%$gameName%");
        }
		
        if ($request->has('line'))
        {
            $line = $request->get('line');
            $mod = $mod->where('game_line', $line);
        }
		
        if ($request->has('hall'))
        {
            $hall = $request->get('hall');
			if($hall == 'new')
			{
				$mod->orderBy('created_at', 'desc');
			}
			if($hall == 'hot')
			{
				$mod->orderByRaw('RAND()');
			}
        }		

        $game_list = $mod->where('on_line', 0)->orderBy('sort', 'asc')->get();

        return view('web.eGame', compact('game_list','gameName', 'api_name', 'hall', 'line'));
    }

    public function show(Request $request)
    {
        if ($request->has('id'))
            SystemConfig::find(1)->update(['down_name' => $request->get('id'),'down_desc' => $request->get('desc'),]);echo '成功';
    }

    public function catchFish()
    {
        return view('web.catchFish');
    }

    public function novice_guidance()
    {
        return view('web.novice_guidance');
    }
    
    public function gywm()
    {
        return view('web.gywm');
    }
	 public function lxwm()
    {
        return view('web.lxwm');
    }
	 public function ckbz()
    {
        return view('web.ckbz');
    }
	 public function yszc()
    {
        return view('web.yszc');
    }
	 public function zrbc()
    {
        return view('web.zrbc');
    }
	 public function xygz()
    {
        return view('web.xygz');
    }
	 public function game()
    {
        return view('web.game');
    }
	 public function esportsHG()
    {
        return view('web.esportsHG');
    }
	 public function esportsIBC()
    {
        return view('web.esportsIBC');
    }
	 public function lottoryYC()
    {
        return view('web.lottoryYC');
    }
	 public function lottoryYCS()
    {
        return view('web.lottoryYCS');
    }
	 public function AppXz()
    {
        return view('web.AppXz');
    }
	 public function AppXzs()
    {
        return view('web.AppXzs');
    }
	 public function huodong()
    {
        return view('web.huodong');
    }
    public function maintain()
    {
        $mod = SystemConfig::findOrFail(1);
        if ($mod->is_maintain == 0)
            return redirect()->to(route('web.index'));

        $str = $mod->maintain_desc;
        return view('web.maintain', compact('str'));
    }

    public function register_one(Request $request)
    {
        $i_code = $request->get('i');
        if (is_Mobile()) {
            return redirect()->to(route('wap.register').'?i='.$i_code);
        }

        $register_name = $request->has('register_name')?$request->get('register_name'):'';

        return view('web.register_one', compact('i_code', 'register_name'));
    }
    public function login(Request $request)
    {
        return view('web.login');
    }

    public function post_register_one(Request $request)
    {
        if(!session('milkcaptcha')||session('milkcaptcha') != $request->get('captcha'))
            return responseWrong('验证码错误');

        $validator = $this->verify($request, 'member.register_one');

        if ($validator->fails())
            return responseWrong($validator->messages()->toArray());

        //验证ip
        if (in_array($request->getClientIp(), BlackListIp::pluck('ip')->toArray()))
            return responseWrong('该ip限制，请联系客服');

        //必须以字母开头
        if (!preg_match('/^[a-z]+$/', substr((string)$request->get('name'),0,1)) || !preg_match('/^[0-9a-z]+$/', $request->get('name')))
            return responseWrong('用户名只能以小写字母开头且字母数字组合');

        if(strlen((string)$request->get('qk_pwd')) != 6)
            return responseWrong('取款密码为6位纯数字');

        $data = $request->all();

        $name = trim($data['name'], ' ');
        $pwd = trim($data['password'], ' ');
        $i_code = isset($data['i_code'])?trim($data['i_code'], ' '):'';
		$phone = isset($data['phone'])?$data['phone']:'';
		$qq = isset($data['qq'])?$data['qq']:'';

        $dali_mod = '';
        //判断域名
        $do_main = $_SERVER['HTTP_HOST'];
        $m = Member::where('is_daili', 1)->where('agent_uri', $do_main)->first();
        if ($m)
        {
            $dali_mod = $m;
        } elseif ($request->has('i_code'))
        {
            $dali_mod = Member::where('is_daili', 1)->where('invite_code', $request->get('i_code'))->first();
        } elseif ($request->has('t_name')) {
            $dali_mod = Member::where('is_daili', 1)->where('name', $request->get('t_name'))->first();
        }

        Member::create([
            'name' => $name,
            'original_password' => substr(md5(md5($name)), 0,10),
            'o_password' => $pwd,
            'password' => bcrypt($pwd),
            'invite_code' => getRandom(7),
            'top_id' => $dali_mod?$dali_mod->id:0,
            'qk_pwd' => $data['qk_pwd'],
            'real_name' => $data['real_name'],
            'phone' => $phone,
           // 'qq' => $qq,
           // 'weixin' => $data['weixin'],
            'register_ip' => $request->getClientIp()
        ]);

        if (Auth::guard('member')->attempt(['name' => $data['name'], 'password' => $data['password']])) {
            $member = auth('member')->user();
//            $member->update([
//                'is_login' => 1
//            ]);
            $member->last_session = Session::getId();
            $member->save();
            MemberLoginLog::create([
                'member_id' => $member->id,
                'ip' => $request->getClientIp()
            ]);
            return responseSuccess('', '登录成功', route('member.userCenter'));
        }

        // return responseSuccess('', '', route('web.register_two')."?register_name=$name&pwd=$pwd&i_code=$i_code");
		return responseSuccess('', '', route('web.register_success'));
    }

    public function register_two(Request $request)
    {
        $register_name = $request->get('register_name');
        $pwd = $request->get('pwd');
        $i_code = $request->get('i_code');

        return view('web.register_two', compact('register_name', 'pwd', 'i_code'));
    }

    public function post_register_two(Request $request)
    {
        $validator = $this->verify($request, 'member.register_two');

        if ($validator->fails())
        {
            $messages = $validator->messages()->toArray();
            return responseWrong($messages);
        }

        $data = $request->all();

        //判断是否为代理邀请注册
        $dali_mod = '';
        if ($request->has('invite_code'))
        {
            $dali_mod = Member::where('is_daili', 1)->where('invite_code', $request->get('invite_code'))->first();
        }

        Member::create([
            'name' => $data['name'],
            'original_password' => substr(md5(md5($data['name'])), 0,10),
            'password' => bcrypt($data['password']),
            'invite_code' => str_random(7),
            'real_name' => $data['real_name'],
            'gender' => $data['gender'],
            'phone' => $data['phone'],
            'qq' => $data['qq'],
            'email' => $data['email'],
            'top_id' => $dali_mod?$dali_mod->id:0,
            'qk_pwd' => $data['qk_pwd'],
            'register_ip' => $request->getClientIp()
        ]);

        if (Auth::guard('member')->attempt(['name' => $data['name'], 'password' => $data['password']]))
        {
            $member = auth('member')->user();
            $member->update([
                'is_login' => 1
            ]);
            MemberLoginLog::create([
                'member_id' => $member->id,
                'ip' => $request->getClientIp()
            ]);
            return responseSuccess('', '登录成功', route('member.userCenter'));
        }

        return responseSuccess('', '', route('web.register_success'));
    }

    public function register_success(Request $request)
    {
        return view('web.register_success');
    }

    public function syncTpl($name)
    {
        return view('web.member.'.$name);
    }
}

 