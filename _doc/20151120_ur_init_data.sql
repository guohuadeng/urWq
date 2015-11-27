ALTER TABLE ims_users_profile  ADD `jd_account` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT NULL COMMENT '京东账号' ;

ALTER TABLE ims_mc_members ADD `jd_account` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT NULL COMMENT '京东账号';
ALTER TABLE ims_mc_members ADD `modifytime` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '修改时间';
ALTER TABLE  `ims_mc_members` ADD UNIQUE (
`uid`
);
ALTER TABLE  `ims_mc_card_members` ADD INDEX (  `cid` ) ;
ALTER TABLE  `ims_mc_card_members` ADD INDEX (  `openid` ) ;
INSERT INTO `ims_profile_fields` (field,available,title,description,displayorder,required,unchangeable,showinregister) VALUES ( 'jd_account', '1', '京东帐号', '', '0', '0', '0', '1');


-- ----------------------------
-- 账号基础设置，主要是短信，重要: uniacid的确定，当前 
-- ----------------------------
update ims_account_wechats
-- ----------------------------
-- Records of ims_survey
-- ----------------------------
INSERT INTO `ims_survey` VALUES ('5', '2', 'UR问卷调研（Survey）', 'UR致力于为您提供高品质的时尚产品和优质服务！完成问卷即可获赠300会员积分！', '&lt;p&gt;UR致力于为您提供&lt;/p&gt;\r\n&lt;p&gt;高品质的时尚产品和优质服务！&lt;/p&gt;\r\n&lt;p&gt;为了提升您的购物体验，请您提供宝贵的意见，&lt;/p&gt;', '感谢您完成本问卷。', 'images/4/2015/10/siSsfaybNmCAuCypMPf4acnYSIcCCI.png', '0', '1446735510', '1446735028', '1449327028', '3', '1', '1', '0', '1', '300');


-- ----------------------------
-- Records of ims_survey_fields
-- ----------------------------
INSERT INTO `ims_survey_fields` VALUES ('290', '5', '如果您是VIP，希望获得哪项尊享体验（多选）', 'checkbox', '1', '', 'A. 沙龙聚会/时尚派对\r\nB. 节日礼物\r\nC. 清洗及改衣服务\r\nD. 享受其它商户权益\r\nE. 其它（请注明：[_]）', '', '16');
INSERT INTO `ims_survey_fields` VALUES ('291', '5', '您希望在官方微博微信了解哪些信息（多选）', 'checkbox', '1', '', 'A. 品牌最新促销活动\r\nB. 新店开业信息\r\nC. 品牌新品推荐\r\nD. 时尚资讯\r\nE. 穿衣搭配', '', '17');
INSERT INTO `ims_survey_fields` VALUES ('289', '5', '不考虑品牌和价格的因素，您在购物时考虑最多的3个因素是什么？（多选）', 'checkbox', '1', '', 'A. 面料材质\r\nB. 款式设计\r\nC. 剪裁效果\r\nD. 整体颜色\r\nE. 搭配效果\r\nF. 穿着效果\r\nG. 细节设计效果\r\nH. 新货上架速度\r\nI. 橱窗陈列效果\r\nJ. 店员服务质量\r\nK. 店铺内部环境\r\nL. 其它（请注明：[_]）', '', '15');
INSERT INTO `ims_survey_fields` VALUES ('288', '5', '您觉得UR商品的版型相比较其他品牌？（单选）', 'radio', '1', '', 'A. 偏修身\r\nB. 正合体\r\nC. 偏宽松', '', '14');
INSERT INTO `ims_survey_fields` VALUES ('287', '5', '您觉得UR商品的尺码相比较ZARA？（单选）', 'radio', '1', '', 'A. 尺码偏小\r\nB. 尺码适中\r\nC. 尺码偏大', '', '13');
INSERT INTO `ims_survey_fields` VALUES ('285', '5', '您常购买商品的风格？（多选）', 'checkbox', '1', '', 'A. 优雅名媛型\r\nB. 假日休闲型\r\nC. 魅力潮流型\r\nD. 都市精英型\r\nE. 简约经典型\r\nF. 夸张艺术型', '', '11');
INSERT INTO `ims_survey_fields` VALUES ('286', '5', '您觉得UR商品的性价比相比较其他品牌？（单选）', 'radio', '1', '', 'A. 价格偏低\r\nB. 价格合理\r\nC. 价格偏高', '', '12');
INSERT INTO `ims_survey_fields` VALUES ('284', '5', '您对收银服务的整体感觉与以下哪一项最符合？（单选）', 'radio', '1', '', 'A. 店员服务亲切到位，熟练掌握操作，迅速完成收银\r\nB. 对您的咨询未有清晰回答，收银速度一般\r\nC. 店员不熟悉活动内容，对您的询问未能清晰解答，收银时间长\r\nD. 出现收银台排队但有空置收银机的情况', '', '10');
INSERT INTO `ims_survey_fields` VALUES ('283', '5', '您对试衣间环境的整体感觉与以下哪一项最符合？（单选）', 'radio', '1', '', 'A. 试衣间整洁舒适，数量充足，店员有清晰指引\r\nB. 试衣间数量少，等待时间长\r\nC. 试衣间环境不整洁', '', '9');
INSERT INTO `ims_survey_fields` VALUES ('276', '5', '您的性别', 'radio', '1', '', 'A. 女\r\nB. 男', '', '2');
INSERT INTO `ims_survey_fields` VALUES ('277', '5', '您的年龄范围', 'radio', '1', '', 'A. 17岁以下\r\nB. 18-24岁\r\nC. 25-30岁\r\nD. 31-35岁\r\nE. 36-40岁\r\nF. 41岁以上', '', '3');
INSERT INTO `ims_survey_fields` VALUES ('278', '5', '您从哪些渠道关注UR品牌？（多选）', 'checkbox', '1', '', 'A. UR店内\r\nB. 官方微博微信\r\nC. 明星街拍\r\nD. 杂志刊物\r\nE. 朋友推荐', '', '4');
INSERT INTO `ims_survey_fields` VALUES ('279', '5', '您对门店形象的整体感觉与以下哪一项最符合？（单选）', 'radio', '1', '', 'A. 橱窗奢华大气，整体布局整齐有序\r\nB. 店面设计一般，没有深刻印象\r\nC. 门店设计风格不吸引，环境一般\r\nD. 其它（请注明：[_]）', '', '5');
INSERT INTO `ims_survey_fields` VALUES ('280', '5', '您对门店环境的整体感觉与以下哪一项最符合？（单选）', 'radio', '1', '', 'A. 门店温度适中，音乐声柔和，环境整体感觉舒适\r\nB. 门店温度太冷（或温度太热）\r\nC. 店面陈列杂乱，不利于选购\r\nD. 音乐声音太大，地面不干净\r\nE. 其它（请注明：[_]）', '', '6');
INSERT INTO `ims_survey_fields` VALUES ('281', '5', '您对店员接待的整体感觉与以下哪一项最符合？（单选）', 'radio', '1', '', 'A. 笑容亲切自然，有目光接触，主动热情地打招呼\r\nB. 有招呼语，没有笑容和目光接触\r\nC. 忙于自己业务，没有员工主动接待\r\nD. 其它（请注明：[_]）', '', '7');
INSERT INTO `ims_survey_fields` VALUES ('282', '5', '店员与您沟通的过程与以下哪一项最符合？（单选）', 'radio', '1', '', 'A. 主动关注您的需求，推荐合适的产品/尺码并提供搭配建议，保持舒适的距离\r\nB. 主动与您聊天，一直尾随，有压迫感\r\nC. 没有主动了解需求，员工只是自己在推荐', '', '8');

-- ----------------------------
-- Records of menu
-- ----------------------------

update ims_uni_settings menuset='YTo0OntpOjA7YTo0OntzOjQ6InR5cGUiO3M6MzoidXJsIjtzOjU6InRpdGxlIjtzOjEyOiLnjqnlkbPml7blsJoiO3M6NzoiZm9yd2FyZCI7TjtzOjg6InN1Yk1lbnVzIjthOjU6e2k6MDthOjM6e3M6NDoidHlwZSI7czozOiJ1cmwiO3M6NToidGl0bGUiO3M6MTI6IuaXtuWwmuadguW/lyI7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly91ci5jbi93YXAvbG9va2Jvb2suaHRtbCI7fWk6MTthOjM6e3M6NDoidHlwZSI7czozOiJ1cmwiO3M6NToidGl0bGUiO3M6MTI6IuaXtuWwmuinhumikSI7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly91ci5jbi93YXAvbG9va2Jvb2tfdmlkZW8uaHRtbCI7fWk6MjthOjM6e3M6NDoidHlwZSI7czozOiJ1cmwiO3M6NToidGl0bGUiO3M6MTI6IuacrOaciOaWsOWTgSI7czozOiJ1cmwiO3M6MTEzOiJodHRwOi8vbXAud2VpeGluLnFxLmNvbS9zP19fYml6PU1qTTVOVE00T1RreU1nPT0mbWlkPTQwMDQ4MDg4OSZpZHg9MSZzbj0zYzQ3M2VjYjliMzgzN2MzYzU3YjlkMmM4MzZkN2I4ZSZzY2VuZT0xOCI7fWk6MzthOjM6e3M6NDoidHlwZSI7czozOiJ1cmwiO3M6NToidGl0bGUiO3M6MTI6IuaQremFjeWtpuWggiI7czozOiJ1cmwiO3M6MTEzOiJodHRwOi8vbXAud2VpeGluLnFxLmNvbS9zP19fYml6PU1qTTVOVE00T1RreU1nPT0mbWlkPTIwOTg2NjUwNyZpZHg9MyZzbj01MTU4MDRhZDFmNzdiMDcyODNhODUwMzhhN2NmYjhjOSZzY2VuZT0xOCI7fWk6NDthOjM6e3M6NDoidHlwZSI7czozOiJ1cmwiO3M6NToidGl0bGUiO3M6ODoi6LCD56CUdjgiO3M6MzoidXJsIjtzOjc0OiJodHRwOi8vd3Euc3VucG9wLmNuL2FwcC8uL2luZGV4LnBocD9pPTQmYz1lbnRyeSZpZD01JmRvPXN1cnZleSZtPXVyX3N1cnZleSI7fX19aToxO2E6NDp7czo0OiJ0eXBlIjtzOjM6InVybCI7czo1OiJ0aXRsZSI7czoxMjoi5ZOB54mM5Yqo5oCBIjtzOjc6ImZvcndhcmQiO047czo4OiJzdWJNZW51cyI7YTo0OntpOjA7YTozOntzOjQ6InR5cGUiO3M6MzoidXJsIjtzOjU6InRpdGxlIjtzOjEyOiLlk4HniYzku4vnu40iO3M6MzoidXJsIjtzOjQwOiJodHRwOi8vdXIuY24vd2FwL2JyYW5kX2ludHJvZHVjdGlvbi5odG1sIjt9aToxO2E6Mzp7czo0OiJ0eXBlIjtzOjM6InVybCI7czo1OiJ0aXRsZSI7czoxMjoi5paw5bqX5pKt5oqlIjtzOjM6InVybCI7czoxMTM6Imh0dHA6Ly9tcC53ZWl4aW4ucXEuY29tL3M/X19iaXo9TWpNNU5UTTRPVGt5TWc9PSZtaWQ9NDAwMjA4MDUxJmlkeD0zJnNuPTNhNjFkYTNjOTc5MmNiNzA1MTdhNGE2MWQ3NGUxMGY0JnNjZW5lPTE4Ijt9aToyO2E6Mzp7czo0OiJ0eXBlIjtzOjM6InVybCI7czo1OiJ0aXRsZSI7czoxNToi5Yqg55uf5ZWG5oub5YufIjtzOjM6InVybCI7czozMjoiaHR0cDovL3VyLmNuL3dhcC9mcmFuY2hpc2VlLmh0bWwiO31pOjM7YTozOntzOjQ6InR5cGUiO3M6MzoidXJsIjtzOjU6InRpdGxlIjtzOjEyOiLlupfpk7rlnLDlnYAiO3M6MzoidXJsIjtzOjI3OiJodHRwOi8vdXIuY24vd2FwL3Nob3BzLmh0bWwiO319fWk6MjthOjQ6e3M6NDoidHlwZSI7czozOiJ1cmwiO3M6NToidGl0bGUiO3M6MTI6IuS8muWRmOS4reW/gyI7czo3OiJmb3J3YXJkIjtOO3M6ODoic3ViTWVudXMiO2E6NTp7aTowO2E6Mzp7czo0OiJ0eXBlIjtzOjM6InVybCI7czo1OiJ0aXRsZSI7czoxMjoi5rOo5YaM5Lya5ZGYIjtzOjM6InVybCI7czo1NzoiaHR0cDovL3dxLnN1bnBvcC5jbi9hcHAvaW5kZXgucGhwP2k9NCZjPW1jJmE9Ym9uZCZkbz1jYXJkIjt9aToxO2E6Mzp7czo0OiJ0eXBlIjtzOjM6InVybCI7czo1OiJ0aXRsZSI7czoxMjoi5Lya5ZGY5Lit5b+DIjtzOjM6InVybCI7czo0MzoiaHR0cDovL3dxLnN1bnBvcC5jbi9hcHAvaW5kZXgucGhwP2k9NCZjPW1jJiI7fWk6MjthOjM6e3M6NDoidHlwZSI7czozOiJ1cmwiO3M6NToidGl0bGUiO3M6MTI6IuS8muWRmOa0u+WKqCI7czozOiJ1cmwiO3M6MTEzOiJodHRwOi8vbXAud2VpeGluLnFxLmNvbS9zP19fYml6PU1qTTVOVE00T1RreU1nPT0mbWlkPTIwOTg2NjUwNyZpZHg9MiZzbj1lMTQ3MDAyNmUyMTVhZjUyZjQ2MzkzNjUyZGQyYjA1OCZzY2VuZT0xOCI7fWk6MzthOjM6e3M6NDoidHlwZSI7czozOiJ1cmwiO3M6NToidGl0bGUiO3M6MTg6IuS/ruaUueS8muWRmOi1hOaWmSI7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly93cS5zdW5wb3AuY24vYXBwL2luZGV4LnBocD9pPTQmYz1tYyZhPXByb2ZpbGUmIjt9aTo0O2E6Mzp7czo0OiJ0eXBlIjtzOjM6InVybCI7czo1OiJ0aXRsZSI7czoxMjoi5Lya5ZGY6KeE5YiZIjtzOjM6InVybCI7czozNzoiaHR0cDovL3d3dy51ci5jbi93YXAvbWVtYmVyX3JvbGUuaHRtbCI7fX19aTozO2E6MTp7czoxMDoiY3JlYXRldGltZSI7aToxNDQ3NzEyNzI2O319' where uniacid='2';

