<?php
/**
 * UR会员中心模块微站定义
 *
 * @author cupid
 * @url http://bbs.we7.cc/
 */
defined('IN_IA') or exit('Access Denied');

class Ur_membercenterModuleSite extends WeModuleSite {

	public function doMobileRegister(){
		global $_W, $_GPC;
		$audit=1;
		include $this->template('Register');
	}
	public function doMobileFengmian() {
		//这个操作被定义用来呈现 功能封面
	}
	public function doWebRule() {
		//这个操作被定义用来呈现 规则列表
	}
	public function doWebNav1() {
		//这个操作被定义用来呈现 管理中心导航菜单
	}
	public function doWebNav2() {
		//这个操作被定义用来呈现 管理中心导航菜单
	}
	public function doMobileWebside1() {
		//这个操作被定义用来呈现 微站首页导航图标
	}
	public function doMobileWebside2() {
		//这个操作被定义用来呈现 微站首页导航图标
	}
	public function doMobileMobile1() {
		//这个操作被定义用来呈现 微站个人中心导航
	}
	public function doMobileMobile2() {
		//这个操作被定义用来呈现 微站个人中心导航
	}
	public function doMobileShortcut() {
		//这个操作被定义用来呈现 微站快捷功能导航
	}

}