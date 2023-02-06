<?php 

/**
 * Here I have defined each location into variables, for the location used for "Black Magic" theme.
 */
define('blackmagic_version', '1.0');
// define('blackmagic_version', time());
define('blackmagic_theme_dir', 'themes/'.$theme_name.'/');
define('blackmagic_assets_dir', blackmagic_theme_dir.'assets/');
define('blackmagic_images_dir', blackmagic_theme_dir.'images/');
define('blackmagic_style_dir', blackmagic_theme_dir.'style/');
define('blackmagic_js_dir', blackmagic_style_dir.'js/');
define('blackmagic_hdr_images', blackmagic_images_dir.'hdr/');
define('blackmagic_ftr_images', blackmagic_images_dir.'ftr/');

define('blackmagic_jQuery', blackmagic_style_dir.'blackmagic.js?');
define('blackmagic_animate_stylesheet', blackmagic_style_dir.'animate.css');
define('blackmagic_main_stylesheet', blackmagic_style_dir.'style.css');
define('blackmagic_forums_stylesheet', blackmagic_style_dir.'forums.css');
define('blackmagic_menu_stylesheet', blackmagic_style_dir.'menu-js.js');

define('blackmagic_admin_stylesheet', blackmagic_style_dir.'administration.css');

/**
 * Comment out the below define, If you want to use the Evo floating admin menu.
 */
define('_disable_floating_admin', true);

/**
 * Comment out the below define, If you want to use the default Evo Private Message alert.
 */
// define('_disable_default_evo_pm_alert', true);

/**
 * Social button url define
 *
 * There is no news feed from Nuke Evolution Xtreme as of yet, But i plan on making a brand new,
 * News module, which is a lot more advanced than the one currently coming default with the CMS.
 * So for the time being just leave this set to false, so it does not show the button.
 *
 * However, You can link it to another RSS feed if you so wish, Just replace "false" with the URL like so "https://store.steampowered.com/feeds/news.xml"
 *
 * The button to link an RSS feed, is for others to get info from your site, not for you to display a feed.
 * If you are unsure about anything regarding RSS feeds, just contact me at my site @ https://lonestar-modules.com
 */
define( 'social_rss_feed_url', false );

/**
 * You can link to any loction within Twitch, Whether it be a user Profile, Channel or Video.
 *
 * Video: https://www.twitch.tv/directory/game/Insurgency%3A%20Sandstorm/videos/all
 */
define( 'social_twitch_url', false );

/**
 * You can link to various places on steam, examples below.
 *
 * Profile: https://steamcommunity.com/profiles/76561198007944179/
 * Groups:  https://steamcommunity.com/groups/mwdclan
 * Store:   https://store.steampowered.com/app/581320/Insurgency_Sandstorm/
 */
define( 'social_steam_url', false );

/**
 * I personally have not had much dealing with Discord, So i am unsure what you can actually link to.
 *
 * So for now, you can just enter the full url, for where you would like the link to go.
 *
 * Group Discord: https://discord.com/channels/545027966506237952/634781638668189716
 */
define( 'social_discord_url', false );
/**
 * This can either be linked to a profile or a group, example below.
 *
 * Profile: shaun.parr.9 
 * Group:   groups/140343839339816
 * 
 * You only need to enter the info above, the facebook url itself is hard coded, so you do not need to add it.
 */
define( 'social_facebook_url', false );

/**
* All you need is the Twitter handle
*
* Profile: Lonest4r1983
*/
define( 'social_twitter_url', 'EvolutionXtrem1' );

/**
* All you need is the Profile name
*
* Profile: ladbible
*/
define( 'social_instagram_url', false );

/**
 * Here we add any asset files, Never add asset files after the main stylesheet.
 */
add_css_to_head( blackmagic_assets_dir.'bootstrap/css/bootstrap.min.css', 'file', '4.3.1' );
add_js_to_body( blackmagic_assets_dir.'bootstrap/js/popper.min.js', 'file', 'v2.4.4' );
add_js_to_body( blackmagic_assets_dir.'bootstrap/js/bootstrap.min.js', 'file', '4.3.1' );

/**
 * Modern copy to clipboard. No Flash. Just 2kb
 *
 * @package clipboard
 * @version 2.0.6
 * @license https://raw.githubusercontent.com/lokesh/lightbox2/master/LICENSE  MIT
 * @link    http://www.kamranahmed.info/toast
 *
 */
add_js_to_body( blackmagic_assets_dir.'clipboard/clipboard.min.js', 'file', '2.0.6' );

/**
 * Bootstrap toast
 *
 * @package bootoast
 * @version 1.0.1
 * @author  machado@odahcam.com <https://github.com/odahcam/bootoast/>
 * @license http://www.opensource.org/licenses/mit-license.php  MIT
 * @link    https://clipboardjs.com
 *
 */
add_css_to_head( blackmagic_assets_dir.'bootoast/css/bootoast.min.css', 'file', '1.0.1' );
add_js_to_body( blackmagic_assets_dir.'bootoast/js/bootoast.min.js', 'file', '1.0.1' );

/**
 * Here we have all the necessary files required for "Black Magic" theme.
 */
add_css_to_head( blackmagic_admin_stylesheet, 'file', blackmagic_version );

add_js_to_body( blackmagic_menu_stylesheet, 'file', blackmagic_version );
add_js_to_body( blackmagic_jQuery, 'file', blackmagic_version );
add_css_to_head( blackmagic_animate_stylesheet, 'file', '3.7.2' );

add_css_to_head( blackmagic_main_stylesheet, 'file', blackmagic_version );

/**
 * Remove the Evo back to top button
 *
 * @since 1.0.0
 */
define('remove_evo_btt', true);
if ( remove_evo_btt == true ):

	$remove_evo_btt  = '<style>';
	$remove_evo_btt .= '#back-to-top {';
	$remove_evo_btt .= '    pointer-events: none !important;';
	$remove_evo_btt .= '    opacity: 0 !important;';
	$remove_evo_btt .= '}';
	$remove_evo_btt .= '</style>';
	add_css_to_head($remove_evo_btt, 'inline');

endif;

/**
 * LM-BlackMagic Back to top.
 *
 * @since 1.0.0
 */
function bm_back_to_top_init()
{
	if ( remove_evo_btt == true ):
		
		echo '<div data-toggle="btn-tooltip" title="Back to top" class="bm-back-to-top"></div>';

	endif;
}

function bm_trim_words( $text, $num_words = 55, $more = null ) 
{
	if ( null === $more ) {
		$more = '&hellip;';
	}
 
	$original_text = $text;
	$text          = strip_tags( $text );
	$num_words     = (int) $num_words; 

	$words_array = preg_split( "/[\n\r\t ]+/", $text, $num_words + 1, PREG_SPLIT_NO_EMPTY );
	$sep         = ' ';
 
	if ( count( $words_array ) > $num_words ) {
		array_pop( $words_array );
		$text = implode( $sep, $words_array );
		$text = $text . $more;
	} else {
		$text = implode( $sep, $words_array );
	}
	return $text;
}

function BlackMagic_banners()
{
	global $theme_name;
	$__BANNERS__ = [
		'images' => [
			'themes/'.$theme_name.'/images/banners/bg1.jpg',
			'themes/'.$theme_name.'/images/banners/bg2.jpg',
			'themes/'.$theme_name.'/images/banners/bg3.png',
			'themes/'.$theme_name.'/images/banners/bg4.png'
		],
		'options' => [
			'next_previous' => true,
			'show_indicators' => true
		]
	];
	return $__BANNERS__;
}

?>