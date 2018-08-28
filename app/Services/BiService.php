<?php
namespace App\Services;

use App\Models\Api;
use App\Services\CurlService;

class BiService extends JoDES {

    protected $url;
    protected $merchant_code;
    protected $desKey;
    protected $signKey;
    protected $platformCode;
    protected $encode_url;
    protected $password;

    public function __construct()
    {
        $mod = Api::where('api_name', 'BI')->first();
        $this->url = $mod->api_domain;
        $this->merchant_code = $mod->api_token;
        $this->desKey = $mod->api_id;
        $this->signKey = $mod->api_key;
        $this->platformCode = $mod->api_name;
        $this->password = $mod->api_password;
        $this->encode_url= $mod->api_username;

    }

    public function register($platformCode, $username)
    {
        $t = time();
        $str_check = "platformCode=" . $platformCode . '&userName=' . $username .'&userPassWord='.$this->password .'&TimeStamp='.$t;
        $data = [
            'str' => $str_check,
            'key' => $this->desKey
        ];
        $str_encheck = $this->send_post($this->encode_url.'/', $data);
        $url = 'http://'.$this->url.'/Api/Register?parameter=' . $str_encheck . '&WebSiteCode=' . $this->signKey;
        $res = $this->https_request($url);

        return $res;
    }

    public function zzmoney($game,$username,$type,$money)
    {
        $t = time();
        $s = "platformCode=" . $game . '&userName=' . $username . '&transferType=' . $type . '&credit=' . $money.'&TimeStamp='.$t;
        //$urlen = ($this->encode($data, $this->desKey));

        $data = [
            'str' => $s,
            'key' => $this->desKey
        ];
        //$en_url = $this->encode_url."?str=$str_check&key=$this->desKey";
        $pp = $this->send_post($this->encode_url.'/', $data);

        $url = 'http://'.$this->url.'/Api/Transfer?parameter=' . $pp . '&WebSiteCode=' . $this->signKey;

        $res = $this->https_request($url);

        return $res;
    }

    //查询余额
    public function balances($game,$username)
    {
        $t=time();
        $s = 'platformCode='.$game.'&userName='.$username.'&userPassWord='.$this->password.'&TimeStamp='.$t;

        $data = [
            'str' => $s,
            'key' => $this->desKey
        ];
        $pp = $this->send_post($this->encode_url.'/', $data);

        $url='http://'.$this->url.'/Api/GetUserBalance?parameter='.$pp.'&WebSiteCode='.$this->signKey;
        $res=$this->https_request($url);

        return $res;
    }

    //登录
    public function loginbi($game,$username,$gametype=null,$devices=null,$gameId = null, $gameName = null, $isFree = null, $credit = null)
    {
        $t= time();
        if ($devices == null && $this->isMobile())
            $devices = 1;
        $str = 'platformCode='.$game.'&userName='.$username.'&userPassWord='.$this->password.'&TimeStamp='.$t;
        //
        if ($gametype ==0 || $gametype != null)
            $str .= '&gameType='.$gametype;
        //
        if ($devices != 0)
            $str .= '&devices='.$devices;
        //
        if ($gameId != null)
            $str .='&gameId='.$gameId;
        //
        if ($gameName != null)
            $str .='&gameName='.$gameName;
        //
         if ($devices != 0)
            $str .='&isFree='.$isFree;
        //
        if ($credit != null)
            $str .='&credit='.$credit;
        
        $data = [
            'str' => $str,
            'key' => $this->desKey
        ];

        $pp = $this->send_post($this->encode_url.'/', $data);

        $url='http://'.$this->url.'/Api/Login?parameter='.$pp.'&WebSiteCode='.$this->signKey;

        return $url;
    }

    protected function send_post($url,$post_data) {
        // $result = (new CurlService())->post($url, $post_data);
        // $str = 'platformCode=AG&userName=aa123456&userPassWord=456123&TimeStamp=1532061351&gameType=';
        // $key = 'rU,urGX:';
        $result = $this->encode($post_data['str'], $post_data['key']);
        return $result;
    }

  //   public function loginbi($game,$username,$gametype=null,$devices=null,$gameId = null, $gameName = null, $isFree = null, $credit = null)
      //   {
      //       $t= time();
      //       if ($devices == null && $this->isMobile())
      //           $devices = 1;
      //       $str = 'platformCode='.$game.'&userName='.$username.'&userPassWord='.$this->password.'&TimeStamp'.$t;
      //       //
      //       if ($gametype ==0 || $gametype != null)
      //           $str .= '&gameType='.$gametype;
      //       //
      //       if ($devices != 0)
      //           $str .= '&devices='.$devices;
      //       //
      //       if ($gameId != null)
      //           $str .='&gameId='.$gameId;
      //       //
      //       if ($gameName != null)
      //           $str .='&gameName='.$gameName;
      //       //
      //        if ($devices != 0)
      //           $str .='&isFree='.$isFree;
            // //
      //       if ($credit != null)
      //           $str .='&credit='.$credit;
            
      //       $data = [
      //           'str' => $str,
      //           'key' => $this->desKey
      //       ];

      //       $pp = $this->send_post($this->encode_url.'/', $data);

      //       $url='http://'.$this->url.'/Api/Login?parameter='.$pp.'&WebSiteCode='.$this->signKey;

      //       return $url;
      //   }

    public function playGame($platformCode, $username, $GameType = null)
    {
        $t=time();
        $str = 'platformCode='.$platformCode.'&userName='.$username.'&userPassWord='.$this->password.'&TimeStamp='.$t.'&GameType='.$GameType;
        $data = [
            'str' => $str,
            'key' => $this->desKey
        ];

        $pp = $this->send_post($this->encode_url.'/', $data);

        $url='http://'.$this->url.'/Api/PlayGame?parameter='.$pp.'&WebSiteCode='.$this->signKey;

        return $url;

    }

    //下注记录
    public function GetMerchantReport($platformCode, $StartTime, $EndTime, $PageIndex, $PageSize, $TimeStamp) {
        $Str = "platformCode=" . $platformCode . "&StartTime=" . $StartTime . "&EndTime=" . $EndTime . "&TimeStamp=" . $TimeStamp . "&PageIndex=" . $PageIndex . "&PageSize=" . $PageSize . "";

        $data = [
            'str' => $Str,
            'key' => $this->desKey
        ];
        $DesStr = $this->send_post($this->encode_url.'/', $data);

        $url = 'http://report.gebbs.net/QueryApi/GetMerchantReport?parameter=' . $DesStr . '&WebSiteCode=' . $this->signKey;
        $data_array = $this->https_request($url);
        return $data_array;
    }

    // 商户余额
    public function BusinessBalance(){
        $url='http://'.$this->url.'/Api/BusinessBalance?WebSiteCode='.$this->signKey;
        $Business_data= $this->https_request($url);
        return $Business_data;
    }


    public function https_request($url,$data = null)
    {
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, $url);

        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);

        if (!empty($data))
        {
            curl_setopt($curl, CURLOPT_POST, 1);
            curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
        }

        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

       $output = curl_exec($curl);

        curl_close($curl);
        //$output=json_decode($output,true);
        return $output;
    }

    //判断是否手机
    function isMobile()
    {
        if (isset ($_SERVER['HTTP_X_WAP_PROFILE']))
        {
            return true;
        }
        if (isset ($_SERVER['HTTP_VIA']))
        {
            return stristr($_SERVER['HTTP_VIA'], "wap") ? true : false;
        }
        if (isset ($_SERVER['HTTP_USER_AGENT']))
        {
            $clientkeywords = array ('nokia',
                'sony',
                'ericsson',
                'mot',
                'samsung',
                'htc',
                'sgh',
                'lg',
                'sharp',
                'sie-',
                'philips',
                'panasonic',
                'alcatel',
                'lenovo',
                'iphone',
                'ipod',
                'blackberry',
                'meizu',
                'android',
                'netfront',
                'symbian',
                'ucweb',
                'windowsce',
                'palm',
                'operamini',
                'operamobi',
                'openwave',
                'nexusone',
                'cldc',
                'midp',
                'wap',
                'mobile'
            );
            if (preg_match("/(" . implode('|', $clientkeywords) . ")/i", strtolower($_SERVER['HTTP_USER_AGENT'])))
            {
                return true;
            }
        }
        if (isset ($_SERVER['HTTP_ACCEPT']))
        {
            if ((strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') !== false) && (strpos($_SERVER['HTTP_ACCEPT'], 'text/html') === false || (strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') < strpos($_SERVER['HTTP_ACCEPT'], 'text/html'))))
            {
                return true;
            }
        }
        return false;
    }

}

class JoDES {
 
    private static $_instance = NULL;
    /**
     * @return JoDES
     */
    public static function share() {
        if (is_null(self::$_instance)) {
            self::$_instance = new JoDES();
        }
        return self::$_instance;
    }
 
    /**
     * 加密
     * @param string $str 要处理的字符串
     * @param string $key 加密Key，为8个字节长度
     * @return string
     */

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
 
    /**
     * 解密
     * @param string $str 要处理的字符串
     * @param string $key 解密Key，为8个字节长度
     * @return string
     */
    public function decode($str, $key) {
        $strBin = base64_decode($str);
        $str = mcrypt_cbc(MCRYPT_DES, $key, $strBin, MCRYPT_DECRYPT, $key);
        $str = $this->pkcs5Unpad($str);
        return $str;
    }
 
    function hex2bin($hexData) {
        $binData = "";
        for ($i = 0; $i < strlen($hexData); $i += 2) {
            $binData .= chr(hexdec(substr($hexData, $i, 2)));
        }
        return $binData;
    }
 
    function pkcs5Unpad($text) {
        $pad = ord($text {strlen($text) - 1});
        if ($pad > strlen($text))
            return false;
 
        if (strspn($text, chr($pad), strlen($text) - $pad) != $pad)
            return false;
 
        return substr($text, 0, - 1 * $pad);
    }
 
}