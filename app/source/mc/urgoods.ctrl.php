<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */
defined('IN_IA') or exit('Access Denied');
load()->func('communication');
$dos = array('display', 'info');
$do = in_array($_GPC['do'], $dos) ? $_GPC['do'] : 'display';
if($do == 'display') {
	$mcard = pdo_fetch('SELECT * FROM ' . tablename('mc_card_members') . ' WHERE uniacid = :uniacid AND uid = :uid', array(':uniacid' => $_W['uniacid'], ':uid' => $_W['member']['uid']));
	//begin 检查是否领会员卡		
	if(empty($mcard)) {
			$reregister = true;
	}
	//end  检查是否领会员卡
	$cardinfo = (empty($mcard)) ? '快来领会员卡抢优惠'  : $mcard['cardsn'];
	$result = ihttp_get('http://spc.ur.com.cn:8088/PSS/@weixin/jianXin/getPosDataInfo?openid='.$_W['openid']
.'&VIPNo=8urP0245111');
	$result = json_decode($result['content'],true);
}else if($do == 'info'){
	$result = ihttp_get('http://spc.ur.com.cn:8088/PSS/@weixin/jianXin/getPosDataListInfo?billNo='.$_GPC['no']);
	$result = json_decode($result['content'],true);
}
template('mc/urgoods');
