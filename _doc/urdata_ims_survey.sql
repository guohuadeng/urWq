/*
Navicat MySQL Data Transfer

Source Server         : wq.sunpop.cn
Source Server Version : 50540
Source Host           : wq.sunpop.cn:3306
Source Database       : wq

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-11-06 01:54:01
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_survey
-- ----------------------------
INSERT INTO `ims_survey` VALUES ('1', '4', '调研v3', '调研v3简介', '&lt;p&gt;UR致力于为您提供&lt;/p&gt;\r\n&lt;p&gt;高品质的时尚产品和优质服务！&lt;/p&gt;\r\n&lt;p&gt;为了提升您的购物体验，&lt;/p&gt;\r\n&lt;p&gt;请您提供宝贵的意见，&lt;/p&gt;\r\n&lt;p&gt;完成问卷即可获赠300会员积分，&lt;/p&gt;\r\n&lt;p&gt;谢谢！&lt;/p&gt;', '调研提交成功以后提示的信息', 'images/4/2015/10/siSsfaybNmCAuCypMPf4acnYSIcCCI.png', '0', '1446650971', '1446650759', '1449242761', '66', '0', '1', '0', '1', '979');
INSERT INTO `ims_survey` VALUES ('2', '4', 'UR消费者调研问卷', 'UR致力于为您提供高品质的时尚产品和优质服务！完成问卷即可获赠300会员积分！', '&lt;p&gt;UR致力于为您提供&lt;/p&gt;\r\n&lt;p&gt;高品质的时尚产品和优质服务！&lt;/p&gt;\r\n&lt;p&gt;为了提升您的购物体验，&lt;/p&gt;\r\n&lt;p&gt;请您提供宝贵的意见，&lt;/p&gt;\r\n&lt;p&gt;完成问卷即可获赠300会员积分，&lt;/p&gt;\r\n&lt;p&gt;谢谢！&lt;/p&gt;', '尊贵的会员，\r\n感谢您完成本问卷。', 'images/4/2015/10/siSsfaybNmCAuCypMPf4acnYSIcCCI.png', '0', '1446735510', '1446735028', '1449327028', '199', '1', '1', '0', '1', '300');

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
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_survey_fields
-- ----------------------------
INSERT INTO `ims_survey_fields` VALUES ('1', '1', '调研测试单选', 'radio', '1', '', 'A. 主动关注您的需求，推荐合适的产品/尺码并提供搭配建议，保持舒适的距离\r\nB. 主动与您聊天，一直尾随，有压迫感\r\nC. 没有主动了解需求，员工只是自己在推荐', '', '1');
INSERT INTO `ims_survey_fields` VALUES ('2', '1', '调研测试多选', 'checkbox', '1', '', 'A. 11\r\nB. 22\r\nC. 33 [_]', '', '2');
INSERT INTO `ims_survey_fields` VALUES ('3', '1', '调研测试文本', 'radio', '1', '', 'A. ww1\r\nB. ww2\r\nC. ww3', '', '3');
INSERT INTO `ims_survey_fields` VALUES ('119', '2', '您希望在官方微博微信了解哪些信息（多选）', 'checkbox', '1', '', 'A. 品牌最新促销活动\r\nB. 新店开业信息\r\nC. 品牌新品推荐\r\nD. 时尚资讯\r\nE. 穿衣搭配', '', '17');
INSERT INTO `ims_survey_fields` VALUES ('116', '2', '您觉得UR商品的版型相比较其他品牌？（单选）', 'radio', '1', '', 'A. 偏修身\r\nB. 正合体\r\nC. 偏宽松', '', '14');
INSERT INTO `ims_survey_fields` VALUES ('117', '2', '不考虑品牌和价格的因素，您在购物时考虑得最多的3个因素是什么？（多选）', 'radio', '1', '', 'A. 面料材质\r\nB. 款式设计\r\nC. 剪裁效果\r\nD. 整体颜色\r\nE. 搭配效果\r\nF. 穿着效果\r\nG. 细节设计效果\r\nH. 新货上架速度\r\nI. 橱窗陈列效果\r\nJ. 店员服务质量\r\nK. 店铺内部环境\r\nL. 其它（请注明：[_]）', '', '15');
INSERT INTO `ims_survey_fields` VALUES ('118', '2', '如果您是VIP，希望获得哪项尊享体验（多选）', 'checkbox', '1', '', 'A. 沙龙聚会/时尚派对\r\nB. 节日礼物\r\nC. 清洗及改衣服务\r\nD. 享受其它商户权益\r\nE. 其它（请注明：[_]）', '', '16');
INSERT INTO `ims_survey_fields` VALUES ('115', '2', '您觉得UR商品的尺码相比较ZARA？（单选）', 'radio', '1', '', 'A. 尺码偏小\r\nB. 尺码适中\r\nC. 尺码偏大', '', '13');
INSERT INTO `ims_survey_fields` VALUES ('114', '2', '您觉得UR商品的性价比相比较其他品牌？（单选）', 'radio', '1', '', 'A. 价格偏低\r\nB. 价格合理\r\nC. 价格偏高', '', '12');
INSERT INTO `ims_survey_fields` VALUES ('110', '2', '店员与您沟通的过程与以下哪一项最符合？（单选）', 'radio', '1', '', 'A. 主动关注您的需求，推荐合适的产品/尺码并提供搭配建议，保持舒适的距离\r\nB. 主动与您聊天，一直尾随，有压迫感\r\nC. 没有主动了解需求，员工只是自己在推荐', '', '8');
INSERT INTO `ims_survey_fields` VALUES ('113', '2', '您常购买商品的风格？（多选）', 'checkbox', '1', '', 'A. 优雅名媛型\r\nB. 假日休闲型\r\nC. 魅力潮流型\r\nD. 都市精英型\r\nE. 简约经典型\r\nF. 夸张艺术型', '', '11');
INSERT INTO `ims_survey_fields` VALUES ('112', '2', '您对收银服务的整体感觉与以下哪一项最符合？（单选）', 'radio', '1', '', 'A. 优雅名媛型\r\nB. 假日休闲型\r\nC. 魅力潮流型\r\nD. 都市精英型\r\nE. 简约经典型\r\nF. 夸张艺术型', '', '10');
INSERT INTO `ims_survey_fields` VALUES ('111', '2', '您对试衣间环境的整体感觉与以下哪一项最符合？（单选）', 'radio', '1', '', 'A. 试衣间整洁舒适，数量充足，店员有清晰指引\r\nB. 试衣间数量少，等待时间长\r\nC. 试衣间环境不整洁', '', '9');
INSERT INTO `ims_survey_fields` VALUES ('109', '2', '您对店员接待的整体感觉与以下哪一项最符合？（单选）', 'radio', '1', '', 'A. 笑容亲切自然，有目光接触，主动热情地打招呼\r\nB. 有招呼语，没有笑容和目光接触\r\nC. 忙于自己业务，没有员工主动接待\r\nD. 其它（请注明：[_]）', '', '7');
INSERT INTO `ims_survey_fields` VALUES ('108', '2', '您对门店环境的整体感觉与以下哪一项最符合？（单选）', 'radio', '1', '', 'A. 门店温度适中，音乐声柔和，环境整体感觉舒适\r\nB. 门店温度太冷（或温度太热）\r\nC. 店面陈列杂乱，不利于选购\r\nD. 音乐声音太大，地面不干净\r\nE. 其它（请注明：[_]）', '', '6');
INSERT INTO `ims_survey_fields` VALUES ('106', '2', '您从哪些渠道关注UR品牌？（多选）', 'checkbox', '1', '', 'A. UR店内\r\nB. 官方微博微信\r\nC. 明星街拍\r\nD. 杂志刊物\r\nF. 朋友推荐', '', '4');
INSERT INTO `ims_survey_fields` VALUES ('107', '2', '您对门店形象的整体感觉与以下哪一项最符合？（单选）', 'radio', '1', '', 'A. 橱窗奢华大气，整体布局整齐有序\r\nB. 店面设计一般，没有深刻印象\r\nC. 门店设计风格不吸引，环境一般\r\nD. 其它（请注明：[_]）', '', '5');
INSERT INTO `ims_survey_fields` VALUES ('104', '2', '您的性别', 'radio', '1', '', 'A. 女\r\nB. 男', '', '2');
INSERT INTO `ims_survey_fields` VALUES ('105', '2', '您的年龄范围', 'radio', '1', '', 'A. 16岁以下\r\nB. 17-24岁\r\nC. 25-30岁\r\nD. 31-35岁\r\nE. 36-40岁\r\nF. 41岁以上', '', '3');
