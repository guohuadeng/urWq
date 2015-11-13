/*
Navicat MySQL Data Transfer

Source Server         : wq.sunpop.cn
Source Server Version : 50540
Source Host           : wq.sunpop.cn:3306
Source Database       : wq

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-11-12 22:40:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ims_survey
-- ----------------------------
DROP TABLE IF EXISTS `ims_survey`;
CREATE TABLE `ims_survey` (
  `sid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `information` varchar(500) NOT NULL DEFAULT '',
  `thumb` varchar(200) NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL,
  `pertotal` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `suggest_status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `only_once` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `activity_store` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `credit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`),
  KEY `weid` (`weid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_survey
-- ----------------------------
INSERT INTO `ims_survey` VALUES ('1', '4', '调研v3', '调研v3简介', '&lt;p&gt;UR致力于为您提供&lt;/p&gt;\r\n&lt;p&gt;高品质的时尚产品和优质服务！&lt;/p&gt;\r\n&lt;p&gt;为了提升您的购物体验，&lt;/p&gt;\r\n&lt;p&gt;请您提供宝贵的意见，&lt;/p&gt;\r\n&lt;p&gt;完成问卷即可获赠300会员积分，&lt;/p&gt;\r\n&lt;p&gt;谢谢！&lt;/p&gt;', '调研提交成功以后提示的信息', 'images/4/2015/10/siSsfaybNmCAuCypMPf4acnYSIcCCI.png', '0', '1446650971', '1446650759', '1449242761', '66', '0', '1', '0', '1', '979');
INSERT INTO `ims_survey` VALUES ('2', '4', 'UR消费者调研问卷', 'UR致力于为您提供高品质的时尚产品和优质服务！完成问卷即可获赠300会员积分！', '&lt;p&gt;UR致力于为您提供&lt;/p&gt;\r\n&lt;p&gt;高品质的时尚产品和优质服务！&lt;/p&gt;\r\n&lt;p&gt;为了提升您的购物体验，请您提供宝贵的意见，&lt;/p&gt;', '感谢您完成本问卷。', 'images/4/2015/10/siSsfaybNmCAuCypMPf4acnYSIcCCI.png', '0', '1446735510', '1446735028', '1449327028', '3', '1', '1', '0', '1', '300');
INSERT INTO `ims_survey` VALUES ('4', '4', 'eafsd', 'efasd', '&lt;p&gt;feasd&lt;/p&gt;', 'feasd', 'images/4/2015/10/siSsfaybNmCAuCypMPf4acnYSIcCCI.png', '0', '1447091601', '1447091582', '1449683582', '1', '1', '1', '1', '0', '0');

-- ----------------------------
-- Table structure for ims_survey_fields
-- ----------------------------
DROP TABLE IF EXISTS `ims_survey_fields`;
CREATE TABLE `ims_survey_fields` (
  `sfid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `essential` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bind` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(300) NOT NULL DEFAULT '',
  `description` varchar(500) NOT NULL DEFAULT '',
  `displayorder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sfid`)
) ENGINE=MyISAM AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_survey_fields
-- ----------------------------
INSERT INTO `ims_survey_fields` VALUES ('1', '1', '调研测试单选', 'radio', '1', '', 'A. 主动关注您的需求，推荐合适的产品/尺码并提供搭配建议，保持舒适的距离\r\nB. 主动与您聊天，一直尾随，有压迫感\r\nC. 没有主动了解需求，员工只是自己在推荐', '', '1');
INSERT INTO `ims_survey_fields` VALUES ('2', '1', '调研测试多选', 'checkbox', '1', '', 'A. 11\r\nB. 22\r\nC. 33 [_]', '', '2');
INSERT INTO `ims_survey_fields` VALUES ('3', '1', '调研测试文本', 'radio', '1', '', 'A. ww1\r\nB. ww2\r\nC. ww3', '', '3');
INSERT INTO `ims_survey_fields` VALUES ('204', '2', '您对试衣间环境的整体感觉与以下哪一项最符合？（单选）', 'radio', '1', '', 'A. 试衣间整洁舒适，数量充足，店员有清晰指引\r\nB. 试衣间数量少，等待时间长\r\nC. 试衣间环境不整洁', '', '7');
INSERT INTO `ims_survey_fields` VALUES ('212', '2', '您希望在官方微博微信了解哪些信息（多选）', 'checkbox', '1', '', 'A. 品牌最新促销活动\r\nB. 新店开业信息\r\nC. 品牌新品推荐\r\nD. 时尚资讯\r\nE. 穿衣搭配', '', '15');
INSERT INTO `ims_survey_fields` VALUES ('211', '2', '如果您是VIP，希望获得哪项尊享体验（多选）', 'checkbox', '1', '', 'A. 沙龙聚会/时尚派对\r\nB. 节日礼物\r\nC. 清洗及改衣服务\r\nD. 享受其它商户权益\r\nE. 其它（请注明：[_]）', '', '14');
INSERT INTO `ims_survey_fields` VALUES ('210', '2', '除品牌和价格的因素，最影响您购买的其他因素是？（多选）', 'checkbox', '1', '', 'A. 面料材质\r\nB. 整体颜色\r\nC. 细节设计效果\r\nD. 店员服务质量\r\nE. 款式设计\r\nF. 搭配效果\r\nG. 新货上架速度\r\nH. 店铺内部环境\r\nI. 剪裁效果\r\nJ. 穿着效果\r\nK. 橱窗陈列效果\r\nL. 其它（请注明：[_]）', '', '13');
INSERT INTO `ims_survey_fields` VALUES ('208', '2', '您觉得UR商品的尺码相比较ZARA？（单选）', 'radio', '1', '', 'A. 尺码偏小\r\nB. 尺码适中\r\nC. 尺码偏大', '', '11');
INSERT INTO `ims_survey_fields` VALUES ('209', '2', '您觉得UR商品的版型相比较其他品牌？（单选）', 'radio', '1', '', 'A. 偏修身\r\nB. 正合体\r\nC. 偏宽松', '', '12');
INSERT INTO `ims_survey_fields` VALUES ('207', '2', '您觉得UR商品的性价比相比较其他品牌？（单选）', 'radio', '1', '', 'A. 价格偏低\r\nB. 价格合理\r\nC. 价格偏高', '', '10');
INSERT INTO `ims_survey_fields` VALUES ('205', '2', '您对收银服务的整体感觉与以下哪一项最符合？（单选）', 'radio', '1', '', 'A. 店员服务亲切到位，熟练掌握操作，迅速完成收银\r\nB. 对您的咨询未有清晰回答，收银速度一般\r\nC. 店员不熟悉活动内容，对您的询问未能清晰解答，收银时间长\r\nD. 出现收银台排队但有空置收银机的情况', '', '8');
INSERT INTO `ims_survey_fields` VALUES ('206', '2', '您常购买商品的风格？（多选）', 'checkbox', '1', '', 'A. 优雅名媛型\r\nB. 假日休闲型\r\nC. 魅力潮流型\r\nD. 都市精英型\r\nE. 简约经典型\r\nF. 夸张艺术型', '', '9');
INSERT INTO `ims_survey_fields` VALUES ('203', '2', '店员与您沟通的过程与以下哪一项最符合？（单选）', 'radio', '1', '', 'A. 主动关注您的需求，推荐合适的产品/尺码并提供搭配建议，保持舒适的距离\r\nB. 主动与您聊天，一直尾随，有压迫感\r\nC. 没有主动了解需求，员工只是自己在推荐', '', '6');
INSERT INTO `ims_survey_fields` VALUES ('199', '2', '您的性别', 'radio', '1', '', '男 Male\r\n女 Female', '', '2');
INSERT INTO `ims_survey_fields` VALUES ('200', '2', '您的年龄范围', 'radio', '1', '', '17岁以下\r\n18-24岁\r\n25-30岁\r\n31-35岁\r\n36-40岁\r\n41岁以上', '', '3');
INSERT INTO `ims_survey_fields` VALUES ('201', '2', '您对门店环境的整体感觉与以下哪一项最符合？（单选）', 'radio', '1', '', 'A. 门店温度适中，音乐声柔和，环境整体感觉舒适\r\nB. 门店温度太冷（或温度太热）\r\nC. 店面陈列杂乱，不利于选购\r\nD. 音乐声音太大，地面不干净\r\nE. 其它（请注明：[_]）', '', '4');
INSERT INTO `ims_survey_fields` VALUES ('202', '2', '您对店员接待的整体感觉与以下哪一项最符合？（单选）', 'radio', '1', '', 'A. 笑容亲切自然，有目光接触，主动热情地打招呼\r\nB. 有招呼语，没有笑容和目光接触\r\nC. 忙于自己业务，没有员工主动接待\r\nD. 其它（请注明：[_]）', '', '5');
INSERT INTO `ims_survey_fields` VALUES ('156', '4', 'asdf', 'radio', '1', '', 'eafsd\r\nasdf', '', '0');
