<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */
defined('IN_IA') or exit('Access Denied');
load()->model('app');
$dos = array('display', 'login_out');
$do = in_array($do, $dos) ? $do : 'display';
load()->func('tpl');

if (empty($_W['fans']['follow'])){
	template('mc/checkpage');
	exit();
   
}

$mcard = pdo_fetch('SELECT * FROM ' . tablename('mc_card_members') . ' WHERE uniacid = :uniacid AND uid = :uid', array(':uniacid' => $_W['uniacid'], ':uid' => $_W['member']['uid']));

if($do == 'login_out') {
	unset($_SESSION);
	session_destroy();
	isetcookie('logout', 1, 60);
	$logoutjs = "<script language=\"javascript\" type=\"text/javascript\">window.location.href=\"" . url('auth/login/') . "\";</script>";
	exit($logoutjs);
}

if ($do == 'display') {
	$navs = app_navs('profile');
	$modules = uni_modules();
	$groups = $others = array();
	if(!empty($navs)) {
		foreach($navs as $row) {
			if(!empty($row['module'])) {
				$groups[$row['module']][] = $row;
			} else {
				$others[] = $row;
			}
		}
	}
	
	$profile = mc_fetch($_W['member']['uid'], array('nickname', 'avatar', 'mobile', 'groupid'));
	$mcgroups = mc_groups();
	$profile['group'] = $mcgroups[$profile['groupid']];
	if(isset($setting['uc']['status']) && $setting['uc']['status'] == '1') {
		$uc = $setting['uc'];
		$sql = 'SELECT * FROM ' . tablename('mc_mapping_ucenter') . ' WHERE `uniacid`=:uniacid AND `uid`=:uid';
		$pars = array();
		$pars[':uniacid'] = $_W['uniacid'];
		$pars[':uid'] = $_W['member']['uid'];
		$mapping = pdo_fetch($sql, $pars);
		if(empty($mapping)) {
	
		} else {
			mc_init_uc();
			$u = uc_get_user($mapping['centeruid'], true);
			$ucUser = array(
				'uid' => $u[0],
				'username' => $u[1],
				'email' => $u[2]
			);
		}
	}
	if (empty($setting['passport']['focusreg'])) { 
		//$setting['passport'] 这个是和ucenter有关的
		$reregister = false;
		/*根据ur实际情况，无须处理email，这里改为检查是否已领取会员卡，没领取就提示		
		if ($_W['member']['email'] == md5($_W['openid']).'@we7.cc') {
			$reregister = true;
		}
		*/
	}
	//begin 检查是否领会员卡		
	if(empty($mcard)) {
		$reregister = true;
		$cardinfo = null;
		$creditstotal = 0;
	}else{
		$cardinfo = $mcard['cardsn'];
		load()->func('communication');
		//$creditstotal = ihttp_get('http://spc.ur.com.cn:8088/PSS/@weixin/jianXin/getTotalIntegral?openid='.$_W['openid'].'&VIPNo='.$mcard['cardsn']);
		$creditstotal = ihttp_get('http://spc.ur.com.cn:8088/PSS/@weixin/jianXin/getTotalIntegral?openid=o4r_GjifJCuXmcvKKef7j6VKiJxY&VIPNo=8urP0000087');
		$creditstotal = json_decode($creditstotal['content'],true)['total'];
	}
	//end  检查是否领会员卡

}
template('mc/home');
