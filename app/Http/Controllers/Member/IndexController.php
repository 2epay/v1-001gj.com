<?php

namespace App\Http\Controllers\Member;

use App\Http\Controllers\Web\WebBaseController;
use App\Models\Api;
use App\Models\Activity;
use App\Models\ActivityApply;
use App\Models\BankCard;
use App\Models\Drawing;
use App\Models\Feedback;
use App\Models\MemberDailiApply;
use App\Models\MemberMessage;
use App\Models\MemberApi;
use App\Models\Recharge;
use App\Models\GameRecord;
use App\Models\SystemConfig;
use App\Models\SystemNotice;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Traits\ValidationTrait;
use Hash;
use App\Http\Controllers\Api\ApiClientController;
use DB;
class IndexController extends ApiClientController
{
    use ValidationTrait;

    /**
     *
     * 基本信息
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function userCenter()
    {
        $api_mod= Api::where('on_line', 0)->orderBy('sort', 'asc')->orderBy('created_at', 'desc')->get();

        return view('member.single_info', compact('api_mod'));
    }

    /**
     *
     * 银行资料
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function bank_load()
    {
        return view('member.bank_load');
    }

    /**
     *
     * 账户设置
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function account_load()
    {
        $api_list = Api::where('on_line', 0)->orderBy('created_at', 'desc')->get();

        return view('member.account_load', compact('api_list'));
    }

    public function message_list()
    {
        //$this->getMember()->messages()->where('is_read', 0)->update(['is_read' => 1]);
        return view('member.message_list');
    }
    public function FuYinguser()
    {
        //$this->getMember()->messages()->where('is_read', 0)->update(['is_read' => 1]);
        return view('member.FuYinguser');
    }
    public function FuYingedzh()
    {
        //$this->getMember()->messages()->where('is_read', 0)->update(['is_read' => 1]);
        return view('member.FuYingedzh');
    }
    public function FuYingzxck()
    {
        //$this->getMember()->messages()->where('is_read', 0)->update(['is_read' => 1]);
        return view('member.FuYingzxck');
    }
    public function FuYingzxqk()
    {
        //$this->getMember()->messages()->where('is_read', 0)->update(['is_read' => 1]);
        return view('member.FuYingzxqk');
    }
    public function FuYingznx()
    {
        //$this->getMember()->messages()->where('is_read', 0)->update(['is_read' => 1]);
        return view('member.FuYingznx');
    }
    public function FuYinghdzx()
    {
        //$this->getMember()->messages()->where('is_read', 0)->update(['is_read' => 1]);
        return view('member.FuYinghdzx');
    }
    /**
     *
     * 安全密码
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function safe_psw()
    {
        return view('member.safe_psw');
    }

    /**
     *
     * 登录密码
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function login_psw()
    {
        return view('member.login_psw');
    }

    /**
     *
     * 会员存款
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function finance_center()
    {
        return view('member.finance_center');
    }

    /**
     *
     * 会员提款
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function member_drawing()
    {
        $member = $this->getMember();
        if (!$member->bank_username)
            return redirect()->to(route('member.update_bank_info'));
        return view('member.member_drawing');
    }

    /**
     *
     * 户内转账
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function indoor_transfer()
    {
        $api_mod = Api::where('on_line', 0)->orderBy('sort', 'asc')->get();

        return view('member.indoor_transfer', compact('api_mod'));
    }

    /**
     *
     * 客户报表
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function customer_report(Request $request)
    {
        $type = $request->has('type')?$request->get('type'):0;

        return view('member.customer_report', compact('type'));
    }
    
    /**
     *
     * 注单查询
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function singlenote_report(Request $request)
    {
        $type = 3;

        return view('member.singlenote_report', compact('type'));
    }   

    /**
     *
     * 公告信息
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function service_center()
    {
        $system_notices = SystemNotice::where('on_line', 0)->orderBy('sort', 'asc')->orderBy('created_at', 'desc')->get();

        return view('member.service_center', compact('system_notices'));
    }

    /**
     *
     * 投诉建议
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function complaint_proposal()
    {
        return view('member.complaint_proposal');
    }

    public function post_agent_apply(Request $request)
    {
        $validator = $this->verify($request, 'wap.post_agent_apply');

        if ($validator->fails())
        {
            $messages = $validator->messages()->toArray();
            return responseWrong($messages);
        }


        $data = $request->all();
        $member = $this->getMember();

        if ($member->is_daili == 1)
            return responseWrong('已经是代理');

        MemberDailiApply::create([
            'member_id' => $member->id,
            'phone' => $data['phone'],
            'msn_qq' => $data['qq'],
            'about' => $data['about']
        ]);

        return responseSuccess('','申请成功', route('web.index'));
    }

    public function update_bank_info()
    {
        return view('member.update_bank_info');
    }

    public function post_update_bank_info(Request $request)
    {
        $sys = SystemConfig::find(1);
        if ($sys->is_sms_on == 0)
        {
            if (!$request->has('v_code'))
                return responseWrong('请输入 手机验证码');

            if (session('phone_v_code') != $request->get('v_code'))
                return responseWrong('验证码错误 '.session('phone_v_code'));
        }

        $validator = $this->verify($request, 'member.update_bank_info');

        if ($validator->fails())
        {
            $messages = $validator->messages()->toArray();
            return responseWrong($messages);
        }
        $data = $request->all();
        $member = $this->getMember();

        $member->update($data);

       return responseSuccess('', '', route('member.member_drawing'));
    }

    //修改取款密码
    public function update_qk_password(Request $request)
    {
        $validator = $this->verify($request, 'member.update_qk_password');

        if ($validator->fails())
        {
            $messages = $validator->messages()->toArray();
            return responseWrong($messages);
        }

        $data = $request->all();
        $member = $this->getMember();

        if ($member->qk_pwd != $data['old_password'])
        {
            return responseWrong('原密码错误');
        }

        $member->update([
            'qk_pwd' => $data['password']
        ]);

        return responseSuccess('', '修改成功');
    }

    public function update_login_password(Request $request)
    {
        $validator = $this->verify($request, 'member.update_login_password');

        if ($validator->fails())
        {
            $messages = $validator->messages()->toArray();
            return responseWrong($messages);
        }

        $data = $request->all();
        $member = $this->getMember();
        if (!Hash::check($data['old_password'], $member->password))
        {
            return responseWrong('原密码错误');
        }

        $member->update([
            'password' => bcrypt($data['password']),
            //'original_password' => $data['password']
        ]);

        return responseSuccess('', '修改成功');
    }

    public function recharge_type(Request $request)
    {
        if(!$request->has('type'))
            return responseWrong('请选择充值类型');

        $type = $request->get('type');
        $route = '';
        if ($type == 1)
            $route = route('member.weixin_pay');
        elseif ($type == 2)
            $route = route('member.ali_pay');
        elseif ($type == 3)
            $route = route('member.bank_pay');
        elseif ($type == 4)
            $route = route('member.third_bank_pay');
        elseif ($type == 5)
            $route = route('member.third_pay_scan');

        return responseSuccess('','', $route);
    }
    //Twoepay
    public function payment_twoepay()
    {
        return view('member.payment');
    }

    public function payment_response(Request $request)
    {
        $ddh = $request->ddh; //支付宝订单号
           
        $key = $request->key; //KEY验证
           
        $name = $request->name; //备注信息  接收网关data 参数  支付订单号
           
        $lb = $request->lb; //分类 =1 支付宝 =2财付通 =3 微信       1,3
           
        $money = $request->money;//金额
             
        $paytime = $request->paytime;//充值时间
           
        $key2 = '670c825c88b2f18732a4cf3e591eb282';//APPKEY 和云端和软件上面保持一致 
        $_SystemConfig = SystemConfig::firstOrFail();
        // if($key==$key2){//验证KEY是否正确
        if($key==$_SystemConfig->payment_key){//验证KEY是否正确
              //KEY正确执行
          
              //判断支付来源
              if($lb==1) $leibie='支付宝';//可根据网站自定义数据
              if($lb==2) $leibie='财付通QQ钱包';//可根据网站自定义数据
              if($lb==3) $leibie='微信支付';//可根据网站自定义数据
              
              //执行完毕回执输出ok 字符
              
            
            // $data = $request->all();
            // var_dump($data);
            // $member = auth('member')->user();
            // $member = $this->getMember();
            // Recharge::where('bill_no' , '=', $data['name'])->create([
            //     // 'bill_no' => $data['name'], //getBillNo()
            //     // 'member_id' => '0', // $member->id
            //     // 'name' => $data['name'], // $member->name,
            //     'money' => $data['money'],
            //     'payment_type' => 1,
            //     // 'account' => 'DEMO', // $data['account'],
            //     // 'status' => 1,
            //     // 'hk_at' => $data['paytime'].' '.$data['date_h'].':'.$data['date_i'].':'.$data['date_s']
            // ]);

            if ($request->get('money') < 1)
                return responseWrong('充值金额不达标');
            $mod = Recharge::where('bill_no', '=', $name)->firstOrFail();
            if ($mod->status !== 1) {
                return ;
            }
            $data = $request->all();
            try{
                DB::transaction(function() use($mod, $data,$request) {

                    // $diff_money = $request->get('diff_money') > 0 ? $request->get('diff_money') : 0 ;

                    $mod->update([
                        'status' => 2,
                        'confirm_at' => date('Y-m-d H:i:s'),
                        'diff_money' => 0
                    ]);

                    //用户中心账户加钱
                    // $m = $mod->money;
                    $mod->member()->increment('money', $data['money']);
                    echo "ok";
                });
            }catch(Exception $e){
                DB::rollback();
                return respF('创建失败');
            }
       }else{
           //密匙错误
           echo 'key error'; 
       }
        
    }

    public function create_rechare(Request $request)
    {
        $member = auth('member')->user();
        $bill_no = getBillNo();
        try {
            Recharge::create([
                'bill_no' => $bill_no,
                'member_id' => $member->id,
                'name' => $member->name,
                'money' => $request->money,
                'payment_type' => 1,
                // 'account' => $data['account'],
                'status' => 1,
                'hk_at' => $request->paytime//.' '.$data['date_h'].':'.$data['date_i'].':'.$data['date_s']
            ]);
            $status = 1;
        } catch (Exception $e) {
            $status = 0;
        }
        return response()->json([
            'success'  =>  $bill_no,
            'status'   =>  $status
        ]);
    }
    //微信支付
    public function weixin_pay()
    {
        return view('member.weixin_pay');
        // return view('member.qq_pay');
    }

    //支付宝支付
    public function ali_pay()
    {
        return view('member.ali_pay');
    }

    //支付宝支付
    public function qq_pay()
    {
        return view('member.qq_pay');
    }
    
    public function third_bank_pay()
    {
        return view('member.third_bank_pay');
    }

    public function third_pay_scan()
    {
        return view('member.third_pay_scan');
    }

    //银行卡支付
    public function bank_pay()
    {
        $bank_card_list = BankCard::where('on_line', 0)->orderBy('created_at', 'desc')->get();

        return view('member.bank_pay', compact('bank_card_list'));
    }

    //提交微信支付
    public function post_weixin_pay(Request $request)
    {
        $validator = $this->verify($request, 'member.post_weixin_pay');

        if ($validator->fails())
        {
            $messages = $validator->messages()->toArray();
            return responseWrong($messages);
        }

        $data = $request->all();
        $member = $this->getMember();

        Recharge::create([
            'bill_no' => getBillNo(),
            'member_id' => $member->id,
            'name' => $member->name,
            'money' => $data['money'],
            'payment_type' => 2,
            'account' => $data['account'],
            'status' => 1,
            'hk_at' => $data['paytime'].' '.$data['date_h'].':'.$data['date_i'].':'.$data['date_s']
        ]);

        return responseSuccess('','提交成功', route('member.customer_report').'?type=0');
    }

    //提交支付宝支付
    public function post_ali_pay(Request $request)
    {
        $validator = $this->verify($request, 'member.post_ali_pay');

        if ($validator->fails())
        {
            $messages = $validator->messages()->toArray();
            return responseWrong($messages);
        }

        $data = $request->all();
        $member = $this->getMember();

        Recharge::create([
            'bill_no' => getBillNo(),
            'member_id' => $member->id,
            'name' => $member->name,
            'money' => $data['money'],
            'payment_type' => 1,
            'account' => $data['account'],
            'status' => 1,
            'hk_at' => $data['paytime'].' '.$data['date_h'].':'.$data['date_i'].':'.$data['date_s']
        ]);

        return responseSuccess('','提交成功', route('member.customer_report').'?type=0');
    }
    
    //提交QQ钱包支付
    public function post_qq_pay(Request $request)
    {
        $validator = $this->verify($request, 'member.post_ali_pay');

        if ($validator->fails())
        {
            $messages = $validator->messages()->toArray();
            return responseWrong($messages);
        }

        $data = $request->all();
        $member = $this->getMember();

        Recharge::create([
            'bill_no' => getBillNo(),
            'member_id' => $member->id,
            'name' => $member->name,
            'money' => $data['money'],
            'payment_type' => 8,
            'account' => $data['account'],
            'status' => 1,
            'hk_at' => $data['paytime'].' '.$data['date_h'].':'.$data['date_i'].':'.$data['date_s']
        ]);

        return responseSuccess('','提交成功', route('member.customer_report').'?type=0');
    }

    //提交银行卡支付
    public function post_bank_pay(Request $request)
    {
        $validator = $this->verify($request, 'member.post_bank_pay');

        if ($validator->fails())
        {
            $messages = $validator->messages()->toArray();
            return responseWrong($messages);
        }

        $data = $request->all();
        $member = $this->getMember();

        Recharge::create([
            'bill_no' => getBillNo(),
            'member_id' => $member->id,
            'name' => $data['name'],
            'money' => $data['money'],
            'payment_type' => 3,
            'account' => $data['account'],
            'payment_desc' => $data['payment_desc'],
            'status' => 1,
            'hk_at' => $data['paytime'].' '.$data['date_h'].':'.$data['date_i'].':'.$data['date_s']
        ]);

        return responseSuccess('','提交成功', route('member.customer_report').'?type=0');
    }

    //提交提款
    public function post_drawing(Request $request)
    {
        $member = $this->getMember();

        if (!$member->bank_username)
            return responseWrong('请先设置银行卡信息','', route('member.update_bank_info'));

        $validator = $this->verify($request, 'member.post_drawing');

        if ($validator->fails())
        {
            $messages = $validator->messages()->toArray();
            return responseWrong($messages);
        }
        $data = $request->all();

        if ($data['money'] > $member->money)
            return responseWrong('提款金额大于余额');
        if ($data['qk_pwd'] != $member->qk_pwd)
            return responseWrong('取款密码不正确');
        
        // $money_sum = GameRecord::where('member_id', $member->id)->sum('validBetAmount');
        // if($money_sum <= $member->money)
        // {
            // return responseWrong('游戏流水小于1倍余额，暂时不能取款');
        // }                

        try{
            DB::transaction(function() use($data, $member) {

                Drawing::create([
                    'bill_no' => getBillNo(),
                    'member_id' => $member->id,
                    'name' => $member->bank_username,
                    'money' => $data['money'],
                    'account' => $member->bank_card,
                    'bank_name' => $member->bank_name,
                    'bank_card' => $member->bank_card,
                    'bank_address' => $member->bank_address
                ]);

                $member->decrement('money', $data['money']);

            });
        }catch(\Exception $e){
            DB::rollback();
            return responseWrong('失败');
        }

        return responseSuccess('','提交成功', route('member.customer_report').'?type=1');
    }

    //提交额度转换
    public function post_transfer(Request $request)
    {
        $validator = $this->verify($request, 'member.post_transfer');

        if ($validator->fails())
        {
            $messages = $validator->messages()->toArray();
            return responseWrong($messages);
        }
        $input = $request->all();
        $member = $this->getMember();
        $api = Api::findOrFail($input['account2']);

        $api_name = $api->api_name;
        $username = $member->name;
        $password = $member->original_password;
        $amount = $input['money'];
        $transfer_type = $input['transfer_type'];
        $account1 = $input['account1']==1?'money':'fs_money';

        $data = [];
        //转账类型
        if ($transfer_type == 0)//转入游戏
        {
            if ($account1 == 'money' && $member->money < $amount)
                return responseWrong('账户余额不足');
            if ($account1 == 'fs_money' && $member->fs_money < $amount)
                return responseWrong('账户余额不足');

            $res = $this->deposit($api_name, $username, $password, $amount, $account1);
            if ($res['Code'] != 0)
                return responseWrong('失败！错误代码'.$res['Code'].' 请联系客服解决');
        } elseif ($transfer_type == 1)//转出游戏
        {
            $res = $this->withdrawal($api_name, $username, $password, $amount, $account1);
            if ($res['Code'] != 0)
                return responseWrong('失败！错误代码'.$res['Code'].' 请联系客服解决');
        }

        return responseSuccess('','提交成功', route('member.customer_report').'?type=2');
        // return responseSuccess('','提交成功');

    }
    
    //一键转入转出
    public function post_one_transfer(Request $request)
    {
        $validator = $this->verify($request, 'member.post_one_transfer');

        if ($validator->fails())
        {
            $messages = $validator->messages()->toArray();
            return responseWrong($messages);
        }
        $input = $request->all();
        $member = $this->getMember();

        $api_name = $input['api_name'];
        
        $username = $member->name;
        $password = $member->original_password;

        $transfer_type = $input['transfer_type'];

        //转账类型
        if ($transfer_type == 0)//转入游戏
        {
            if ($member->money < 1)
                return responseWrong('账户余额不足');

            $res = $this->deposit($api_name, $username, $password, floor($member->money), 'money');
            if ($res['Code'] != 0)
                return responseWrong('失败！错误代码'.$res['Code'].' 请联系客服解决');
        }
        elseif ($transfer_type == 1)//转出游戏
        {
            $game_money = $this->balance($member->id, $api_name);
            if ($game_money['Data'] < 1)
                return responseWrong('游戏账户余额不足');
            
            $res = $this->withdrawal($api_name, $username, $password, floatval($game_money['Data']), 'money');
            if ($res['Code'] != 0)
                return responseWrong('失败！错误代码'.$res['Code'].' 请联系客服解决');
        }

        return responseSuccess('','提交成功', route('member.customer_report').'?type=2');
        // return responseSuccess('','提交成功');
    }   

    //提交反馈
    public function post_feedback(Request $request)
    {
        $validator = $this->verify($request, 'member.post_feedback');

        if ($validator->fails())
        {
            $messages = $validator->messages()->toArray();
            return responseWrong($messages);
        }

        $data = $request->all();

        Feedback::create([
            'type' => $data['type'],
            'content' => $data['content'],
            'phone' => $data['phone'],
            'member_id' => $this->getMember()->id
        ]);

        return responseSuccess('', '谢谢您的反馈！', route('member.complaint_proposal'));
    }
    
    public function my_activity()
    {
        $member = $this->getMember();
        $data = ActivityApply::where('member_id', $member->id)->orderBy('status', 'asc')->get();
        
        return view('member.my_activity', compact('data'));
    }
    
    //申请活动
    public function post_apply_activity(Request $request)
    {
        $data = $request->all();
        $member = $this->getMember();
        
        $check = ActivityApply::where(['activity_id' => $data['activity_id'], 'member_id'=>$member->id])->first();
        if(isset($check->id))
        {
            return responseWrong('你已申请过该活动');
        }
        else
        {
            $check_activity = Activity::where('id', $data['activity_id'])->first();
            
            if($check_activity->type == 2)
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
        
                $first_recharge = $first_mod->where('status', 2)->where('member_id', $member->id)->orderBy('created_at', 'asc')->first();
                
                if(!isset($first_recharge->id))
                {
                    return responseWrong('请充值后再来申请');
                }
                else
                {
                    if(isset($check_activity->start_at))
                    {
                        if(date('Y-m-d H:i:s', time()) < $check_activity->start_at)
                        {
                            return responseWrong("活动将于 $check_activity->start_at 开始");
                        }
                    }
                    
                    if(isset($check_activity->end_at))
                    {
                        if(date('Y-m-d H:i:s', time()) > $check_activity->end_at)
                        {
                            return responseWrong("活动已结束，请申请其他活动");
                        }
                    }
                    
                    if($first_recharge->money < $check_activity->money)
                    {
                        return responseWrong("首存金额需达到 $check_activity->money 才能申请该活动");
                    }
                }
            }
            
            if($check_activity->type == 4)
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
        
                if(isset($check_activity->start_at))
                {
                    if(date('Y-m-d H:i:s', time()) < $check_activity->start_at)
                    {
                        return responseWrong("活动将于 $check_activity->start_at 开始");
                    }
                }
                
                if(isset($check_activity->end_at))
                {
                    if(date('Y-m-d H:i:s', time()) > $check_activity->end_at)
                    {
                        return responseWrong("活动已结束，请申请其他活动");
                    }
                }
                
                $recharge_money = $ck_mod->where('member_id', $member->id)->where('status', 2)->sum('money');
                    
                if($recharge_money < $check_activity->money)
                {
                    return responseWrong("充值金额需达到 $check_activity->money 才能申请该活动");
                }
            }
            
            ActivityApply::create([
                'activity_id' => $data['activity_id'],
                'member_id' => $member->id
            ]);             
        }

           return responseSuccess('', '申请成功', route('member.my_activity'));
    }
    
    public  function applyAgent()
    {
        $status = 9;
        $message = '<font color="gray">以下信息均为必填项，申请后将有客服联系你，请填写真实信息，否则不通过</font>';
        
        $member = $this->getMember();
        
        $apply_result = MemberDailiApply::where('member_id', $member->id)->orderBy('created_at', 'desc')->first();
        
        if(isset($apply_result->id))
        {
            if($apply_result->status == 0)
            {
                $message = '<span><font color="gray">你的代理申请正在审核，请耐心等待</font></span>';
                $status = 0;
            }           
            
            if($apply_result->status == 1)
            {
                $message = '<span>你的代理申请已通过，请使用当前账号进行</span><span><a href="'.route('daili.login').'" class="btn btn-success">代理登录</a></span>';
                $status = 1;
            }
            
            if($apply_result->status == 2)
            {
                $message = '<span>你的代理申请不通过，原因：<font color="red">'.$apply_result->fail_reason.'</font></span>';
                $status = 2;
            }
        }
        
        return view('web.apply_agent', compact('member', 'status', 'message'));
    }
}
