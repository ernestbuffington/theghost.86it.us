<?php

if (!defined('ADMIN_FILE')) 
   exit('THIS FILE WAS NOT CALLED WITHIN ADMINISTRATION');

global $admin_file, $themes_name, $blackmagic_version_cache;
$themes_name = 'LM-BlackMagic';

if ( defined('blackmagic_version') ):

	if ( $blackmagic_version_cache['version'] == blackmagic_version ):
		$version_bullet = '<div class="blackmagic-up-to-date" title="'.$admlang['global']['is_up_to_date'].'"></div>';
	else:
		$version_bullet = '<div class="blackmagic-out-of-date" title="'.$admlang['global']['is_out_of_date'].'"></div>';
	endif;

endif;

adminmenu($admin_file.'.php?op=lm-blackmagic', $version_bullet.' LM-BlackMagic', 'black-magic.png');

?>