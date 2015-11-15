<?php
/*
 * "DROP PROCEDURE IF EXISTS schema_add;
 * DELIMITER //
 * CREATE PROCEDURE schema_add() BEGIN
 * DECLARE CurrentDatabase VARCHAR(100);
 * SELECT DATABASE() INTO CurrentDatabase;
 * IF NOT EXISTS (SELECT * FROM information_schema.columns WHERE table_schema=CurrentDatabase AND table_name = 'ims_users_profile' AND column_name = 'jd_account') THEN
 * ALTER TABLE `ims_users_profile` ADD `jd_account` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '无' COMMENT '京东账号';
 * END IF;
 * IF NOT EXISTS (SELECT * FROM information_schema.columns WHERE table_schema=CurrentDatabase AND table_name = 'ims_mc_members' AND column_name = 'jd_account') THEN
 * ALTER TABLE `ims_mc_members` ADD `jd_account` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '无' COMMENT '京东账号';
 * END IF;
 * IF NOT EXISTS (SELECT * FROM information_schema.columns WHERE table_schema=CurrentDatabase AND table_name = 'ims_mc_members' AND column_name = 'modifytime') THEN
 * ALTER TABLE `ims_mc_members` ADD `modifytime` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '修改时间';
 * END IF;
 * END;//
 * DELIMITER ;
 * CALL schema_add();
 * INSERT INTO `ims_profile_fields`(field,available, title,description,displayorder,required,unchangeable,showinregister) SELECT 'jd_account', '1', '京东帐号', '', '0', '0', '0', '1' FROM DUAL WHERE NOT EXISTS(SELECT `field` FROM `ims_profile_fields` WHERE `field` = 'jd_account');"
 */
if (! pdo_fieldexists ( 'users_profile', 'jd_account' )) {
	pdo_query ( "ALTER TABLE " . table ( 'users_profile' ) . " ADD `jd_account` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '无' COMMENT '京东账号'" );
}
if (! pdo_fieldexists ( 'mc_members', 'jd_account' )) {
	pdo_query ( "ALTER TABLE " . table ( 'mc_members' ) . " ADD `jd_account` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '无' COMMENT '京东账号'" );
}
if (! pdo_fieldexists ( 'mc_members', 'modifytime' )) {
	pdo_query ( "ALTER TABLE " . table ( 'mc_members' ) . " ADD `modifytime` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '修改时间'" );
}
if (empty ( pdo_fetch ( 'SELECT field,title FROM ' . tablename ( 'profile_fields' ) . ' WHERE field = :field', array (
		':field' => 'jd_account' 
) ) )) {
	$data = array (
			'field' => 'jd_account',
			'available' => '1',
			'title' => '京东帐号',
			'description' => '',
			'displayorder' => '0',
			'required' => '0',
			'unchangeable' => '0',
			'showinregister' => '1' 
	);
	pdo_insert ( 'profile_fields', $data );
}

?>
