<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */
defined('IN_IA') or exit('Access Denied');
load()->func('communication');
$dos = array('display');
$do = in_array($_GPC['do'], $dos) ? $_GPC['do'] : 'display';
if($do == 'display') {
	$mcard = pdo_fetch('SELECT * FROM ' . tablename('mc_card_members') . ' WHERE uniacid = :uniacid AND uid = :uid', array(':uniacid' => $_W['uniacid'], ':uid' => $_W['member']['uid']));
	//begin 检查是否领会员卡		
	if(empty($mcard)) {
			$reregister = true;
	}
	//end  检查是否领会员卡
	$cardinfo = (empty($mcard)) ? '快来领会员卡抢优惠'  : $mcard['cardsn'];
	$VIPNo = (empty($mcard)) ? ''  : $mcard['cardsn'];
	$result = ihttp_get('http://spc.ur.com.cn:8088/PSS/@weixin/jianXin/getDetailIntegral?openid='.$_W['openid'].'&VIPNo='.$VIPNo);
	//test
	//$result = ihttp_get('http://spc.ur.com.cn:8088/PSS/@weixin/jianXin/getDetailIntegral?openid=o4r_GjifJCuXmcvKKef7j6VKiJxY&VIPNo=8urP0000087');
	$result = json_decode($result['content'],true);
	$result["gain"] = array();
	$result["use"] = array();
	foreach(array_reverse($result['list']) AS $index=>$item){
	   if($item['bonus'] >= 0){
			array_push($result["gain"], $item);
	   }else{
			array_push($result["use"], $item);
	   }
	}
}
template('mc/urcredit');
