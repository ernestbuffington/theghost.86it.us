<?php

/*-----------------------------------------------------------*/
/* Realm Designz Advanced Theme Features                     */
/* =====================================                     */
/* Copyright (c) 2019 By The RealmDesignz Designers Team     */
/*                                                           */
/* Theme Name: XtremeV3                                      */
/* Author    : The Mortal (www.RealmDesignz.com)             */
/* Version   : v3.0                                          */
/* Created On: 25th December, 2018                           */
/* Purpose   : Evolution-Xtreme v3 CMS                       */
/*                                                           */
/* Notes     : Very Nice Grey Style Design.                  */
/*-----------------------------------------------------------*/

if (realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME']))
	exit('Quit trying to hack my website!');

$current_theme = basename(dirname(__FILE__));

$param_names = array(
	'Block Width',
	'Scroll to Top Hover Color',
	'reCaptcha Skin<br /><span class="textmed">white | dark</span>' 
);

$params = array(
	'block_width',
	'uitotophover',
	'recaptcha_skin'
);

$default = array(
	'230px',
	'#D29A2B',
	'dark'
);

global $ThemeInfo;
$ThemeInfo = LoadThemeInfo($current_theme);