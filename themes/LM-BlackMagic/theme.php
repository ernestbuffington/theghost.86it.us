<?php

if (realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])) 
{
	exit('Access Denied');
}

define('BOOTSTRAP', true);

$theme_name = basename(dirname(__FILE__));

global $currentlang, $blackmagic_version_cache;
$blackmagic_version_cache = cache_json_data('https://lonestar-modules.com/versioning/blackmagic.json', NUKE_THEMES_DIR.$theme_name.'/version.cache');

include(NUKE_THEMES_DIR.$theme_name.'/theme_info.php');
include(NUKE_THEMES_DIR.$theme_name.'/language/lang-'.$currentlang.'.php');
include(NUKE_THEMES_DIR.$theme_name.'/functions.php');

/**
 *	This is just a function to simply grab the theme option values.
 *	Save me having to add a global in each of the functions below.
 *
 * 	@since 1.0.0
 */
// function bm_option( $option ) 
// {
// 	global $ThemeInfo;
// 	return $ThemeInfo[ $option ];
// }

/**
 *	Here you are able to change whether or not the sidebars are shown while viewing module in cellphone/mobile.
 *
 * 	@since 1.0.0
 */
function mobile_block_show() 
{
	global $name;
	$disable_blocks_when_using_module_on_phone = 1;
	if ( $name && $disable_blocks_when_using_module_on_phone != 0 || defined('ADMIN_FILE') ):
		return ' mobile-disable-blocks';
	else:
		return '';
	endif;
	
}

/**
 *	Get the language translation
 */
function __bm( $translate ) 
{
	global $themeLang, $theme_name;
	return $themeLang[$theme_name][$translate];
}

/*-------------------*/
/* OpenTable Section */
/*-------------------*/
function OpenTable() 
{
?>
	<div class="main-table-wrapper clearfix">
<?php
}

function CloseTable() 
{
?>
	</div>
<?php
}

function FormatStory($thetext, $notes, $aid, $informant) 
{
?>

<?php
}

/*----------------*/
/* Header Section */
/*----------------*/
function themeheader() 
{
	global $admin_file, $sitename, $userinfo, $theme_name;

	bm_back_to_top_init(); ?>

		<div class="container-fluid main-site-container">
		<header>	

			<!-- Social Links -->
			<div class="social-links-container">
				<ul class="social-links">
					<?php if ( $userinfo['user_level'] == 2 || is_admin() ): ?>
					<li><a data-toggle="btn-tooltip" title="Administration" class="social-admin" href="<?php echo get_admin_filename(); ?>.php" target="_parent"><i class="fas fa-tachometer-alt"></i></a></li>
					<?php endif; ?>

					<?php if ( is_admin() ): ?>
					<li><a data-toggle="btn-tooltip" title="Administration Logout" class="social-admin-logout" href="<?php echo get_admin_filename(); ?>.php?op=logout" target="_parent"><i class="fas fa-power-off"></i></a></li>
					<?php endif; ?>

					<?php if ( social_rss_feed_url != false ): ?>
					<li><a data-toggle="btn-tooltip" title="News Feed" class="social-rss" href="<?php echo social_rss_feed_url; ?>" target="_parent"><i class="fas fa-rss"></i></a></li>
					<?php endif ?>

					<?php if ( social_twitch_url != false ): ?>
					<li><a data-toggle="btn-tooltip" title="Twitch" class="social-twitch" href="<?php echo social_twitch_url; ?>" target="_parent"><i class="fab fa-twitch"></i></a></li>
					<?php endif ?>

					<?php if ( social_steam_url != false ): ?>
					<li><a data-toggle="btn-tooltip" title="Steam" class="social-steam" href="<?php echo social_steam_url; ?>" target="_parent"><i class="fab fa-steam"></i></a></li>
					<?php endif ?>

					<?php if ( social_discord_url != false ): ?>
					<li><a data-toggle="btn-tooltip" title="Discord" class="social-discord" href="<?php echo social_discord_url; ?>" target="_parent"><i class="fab fa-discord"></i></a></li>
					<?php endif ?>

					<?php if ( social_facebook_url != false ): ?>
					<li><a data-toggle="btn-tooltip" title="Facebook" class="social-facebook" href="https://www.facebook.com/<?php echo social_facebook_url; ?>" target="_parent"><i class="fab fa-facebook"></i></a></li>
					<?php endif ?>

					<?php if ( social_twitter_url != false ): ?>
					<li><a data-toggle="btn-tooltip" title="Twitter" class="social-twitter" href="https://twitter.com/<?php echo social_twitter_url; ?>" target="_parent"><i class="fab fa-twitter"></i></a></li>
					<?php endif ?>

					<?php if ( social_instagram_url != false ): ?>
					<li><a data-toggle="btn-tooltip" title="Instagram" class="social-instagram" href="https://www.instagram.com/<?php echo social_instagram_url; ?>" target="_parent"><i class="fab fa-instagram"></i></a></li>
					<?php endif ?>

					<?php if ( is_user() ): ?>
					<li><a data-toggle="btn-tooltip" title="Logout" class="social-logout" href="modules.php?name=Your_Account&op=logout" target="_parent"><i class="fas fa-sign-out-alt"></i></a></li>
					<?php else: ?>
					<li><a data-toggle="btn-tooltip" title="Login" class="social-login" href="modules.php?name=Your_Account" target="_parent"><i class="fas fa-sign-in-alt"></i></a></li>
					<?php endif; ?>
				</ul>
			</div>

			<div class="site-nav-container">
				<nav class="navbar navbar-expand-lg navbar-dark">
					<div class="d-flex flex-grow-1">
						<a class="navbar-brand" href="index.php"><?php echo $sitename ?></a>
						<div class="w-100 text-right">
							<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#myNavbar">
								<span class="navbar-toggler-icon"></span>
							</button>
						</div>
					</div>
					<div class="collapse navbar-collapse flex-grow-1 text-lg-right text-sm-left" id="myNavbar">
						<ul class="nav main-menu navbar-nav ml-auto flex-nowrap">
							<li class="nav-item"><a href="index.php" class="text-lg-uppercase nav-link m-2 menu-item nav-active">Home</a></li>
							<li class="nav-item dropdown">
								<a href="modules.php?name=Forums" class="text-lg-uppercase nav-link m-2 menu-item">Forums</a>
								<ul class="sub-menu dropdown-menu">
									<li class="nav-item"><a href="modules.php?name=Groups">Groups</a></li>
									<li class="nav-item"><a href="modules.php?name=Forums&file=search">Search</a></li>
									<li class="nav-item"><a href="modules.php?name=Forums&file=search&search_id=newposts">Newest Posts</a></li>
									<li class="nav-item"><a href="modules.php?name=Forums&file=search&search_id=unanswered">Unanswered Posts</a></li>
									<li class="nav-item"><a href="modules.php?name=Forums&file=statistics">Statistics</a></li>
								</ul>
							</li>
							<li class="nav-item dropdown">
								<a href="modules.php?name=File_Repository" class="text-lg-uppercase nav-link m-2 menu-item"><span class="menu-title">Downloads</span></a>
								<ul class="sub-menu dropdown-menu">
									<li class="nav-item"><a href="modules.php?name=File_Repository&action=newdownloads">Newest Files</a></li>
									<li class="nav-item"><a href="modules.php?name=File_Repository&action=mostpopular">Popular Files</a></li>
									<li class="nav-item"><a href="modules.php?name=File_Repository&action=statistics">Statistics</a></li>
									<li class="nav-item"><a href="modules.php?name=File_Repository&action=search">Search</a></li>
									<li class="nav-item"><a href="modules.php?name=File_Repository&action=submitdownload">Upload File</a></li>
								</ul>
							</li>
							<li class="nav-item"><a href="modules.php?name=Shopify" class="text-lg-uppercase nav-link m-2 menu-item">Shop</a></li>
							<li class="nav-item"><a href="modules.php?name=Image_Repository" class="text-lg-uppercase nav-link m-2 menu-item">Imagehost</a></li>
							<li class="nav-item"><a href="modules.php?name=Members_List" class="text-lg-uppercase nav-link m-2 menu-item">Members</a></li>
							<?php if ( is_user() ): ?>
							<li class="nav-item dropdown">
								<a href="modules.php?name=Your_Account" class="text-lg-uppercase nav-link m-2 menu-item">Account</a>
								<ul class="sub-menu dropdown-menu to-left">
									<li class="nav-item"><a href="modules.php?name=Private_Messages">Private Messages (<?php echo has_new_or_unread_private_messages() ?>)</a></li>
									<li class="nav-item"><a href="modules.php?name=Profile&mode=editprofile">My Profile</a></li>
									<li class="nav-item"><a href="modules.php?name=Your_Account&op=logout">Logout</a></li>
									<li class="nav-item"><a href="modules.php?name=Your_Account&op=ShowCookiesRedirect">Clear Cookies</a></li>
								</ul>
							</li>
							<?php else: ?>
							<li class="nav-item"><a href="modules.php?name=Your_Account&op=new_user" class="text-lg-uppercase nav-link m-2 menu-item">Register</a></li>
							<?php endif; ?>
						</ul>
					</div>
				</nav>
			
			</div>

			<?php $__BM_BANNERS__ = BlackMagic_banners(); ?>

			<div id="blackmagicCarouselIndicators" class="carousel slide px-0" data-ride="carousel">

				<?php if ( $__BM_BANNERS__['options']['show_indicators'] && (count($__BM_BANNERS__['images']) > 1) ): ?>
				<ol class="carousel-indicators">

					<?php foreach( $__BM_BANNERS__['images'] as $key => $url ): ?>
					<li data-target="#blackmagicCarouselIndicators" data-slide-to="<?php echo $key; ?>"<?php echo (($key == 0) ? ' class="active"' : ''); ?>></li>
					<?php endforeach; ?>

				</ol>
				<?php endif; ?>

				<div class="carousel-inner" style="position: relative;">
				<?php foreach( $__BM_BANNERS__['images'] as $key => $url ): ?>

					<div class="carousel-item<?php echo (($key == 0) ? ' active' : ''); ?>">
						<div class="banner-image-3" style="background-image: url(<?php echo $url; ?>)"></div>
					</div>						

				<?php endforeach; ?>
				</div>

				<?php if( $__BM_BANNERS__['options']['next_previous'] && (count($__BM_BANNERS__['images']) > 1) ): ?>
				<a class="carousel-control-prev" href="#blackmagicCarouselIndicators" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#blackmagicCarouselIndicators" role="button" data-slide="next" style="z-index: 200" data-carousel-nav>
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
				<?php endif; ?>

			</div>

		</header>

		<!-- Main site content container -->
		<div class="container-fluid main-container clearfix">

			<div class="row m-0 main-site-content">

				<?php if( blocks_visible('left') && !defined('ADMIN_FILE') ): ?>
				<div class="sidebar-left col-sidebar<?php echo mobile_block_show(); ?> order-1 pr-3">
					<?php echo blocks('left') ?>
				</div>
				<?php endif; ?>

				<div class="col-content order-2">

<?php
}

/*----------------*/
/* Footer Section */
/*----------------*/
function themefooter() 
{
?>

				</div> <!-- /.col-content -->

				<?php if( blocks_visible('right') && !defined('ADMIN_FILE') ): ?>
				<div class="sidebar-right col-sidebar<?php echo mobile_block_show(); ?> order-3 pl-3">
					<?php echo blocks('right') ?>
				</div>
				<?php endif; ?>	

			</div> <!-- /.main-site-content -->

		</div>

		<?php 

		if ( is_admin() ):

			update_modules();

		endif;

	// Get the nuke evolution footer
	// ----------------------------------
	// DO NOT CHANGE OR REMOVE THIS, DOING SO WILL RESULT
	// IN YOU BEEN MARKED AS A THEME RIPPER/COPYRIGHTS VIOLATOR
	ob_start();
	echo footmsg();
	$contents = ob_get_clean();

?>

		<footer class="main-site-footer text-center"><?php echo $contents ?></footer>
	
	</div>

<?php
}

/*--------------------*/
/* News Index Section */
/*--------------------*/
function themeindex() 
{
	$args = func_get_args();
	foreach( $args as $key => $value ):
		
		$author 		 = $args[0];
		$informant 		 = $args[1];
		$date 			 = $args[2];
		$the_title 		 = $args[3];
		$counter 		 = $args[4];
		$blog_ID 		 = $args[5];
		$the_content 	 = $args[6];
		$the_content_len = strlen ( $the_content );
		$notes 			 = $args[7];
		$comments 		 = $args[8];
		$topicname 		 = $args[9];
		$topicimage 	 = $args[10];
		$topictext	 	 = $args[11];

	endforeach;
?>

	<div class="row mx-0 blog-post">

		<div class="col-12 px-0">
			<div class="blog-content">

				<h2 class="blog-title"><a href="modules.php?name=News&file=article&sid=<?php echo $blog_ID ?>"> <?php echo $the_title ?></a></h2>
				<?php if ( defined('HOME_FILE') ): ?>
				<p class="blog-text"><?php echo bm_trim_words($the_content, 55, ' <a href="modules.php?name=News&file=article&sid='.$blog_ID.'">[...]</a>'); ?></p>
				<?php else: ?>
				<p class="blog-text"><?php echo $the_content; ?></p>
				<?php endif; ?>

			</div>
		</div>

		<div class="col-12 blog-posted-info clearfix">
			<div class="row">
				<div class="col-6 blog-author"><?php echo __bm('by') ?> <?php echo $author ?></div>
				<div class="col-6 blog-date text-lg-right"><?php echo $date ?></div>
			</div>
		</div>

	</div>

	<div class="block-divider"></div>

<?php
}

/*----------------------*/
/* News Article Section */
/*----------------------*/
function themearticle() 
{
	$args = func_get_args();
	foreach( $args as $key => $value ):
		
		$author 		 = $args[0];
		$informant 		 = $args[1];
		$date 			 = $args[2];
		$the_title 		 = $args[3];
		$the_content 	 = $args[4];
		$blog_ID	 	 = $args[5];
		$topicname	 	 = $args[6];
		$topicimage		 = $args[7];
		$topictext 		 = $args[8];

	endforeach;

?>

	<div class="row mx-0 blog-post">

		<div class="col-12 px-0">
			<div class="blog-content blog-article">

				<h2 class="blog-title"><?php echo $the_title ?></h2>
				<p><?php echo $the_content; ?></p>

			</div>
		</div>

		<div class="col-12 blog-posted-info clearfix">
			<div class="row">
				<div class="col-sm-12 col-lg-6 blog-author"><?php echo __bm('by') ?> <?php echo $author ?></div>
				<div class="col-sm-12 col-lg-6 blog-date text-sm-left text-lg-right"><?php echo $date ?></div>
			</div>
		</div>

	</div>

	<div class="block-divider"></div>

<?php
}

/*-------------------*/
/* Centerbox Section */
/*-------------------*/
function themecenterbox($title, $content) 
{
?>

	<div class="center-blocks">

		<div class="section-wrapper"><h3 class="section-title"><?php echo $title ?></h3></div>
		<div class="section-content">
			<?php echo $content; ?>
		</div>

	</div>

<?php
}


/*-----------------*/
/* Sidebox Section */
/*-----------------*/
function themesidebox($title, $content, $bid = 0) 
{
	global $ThemeInfo;
	$block_width = ($ThemeInfo['block_width']) ? str_replace( array( '%', 'px' ), '', $ThemeInfo['block_width'] ).'px' : '230px';
?>

	<div class="aside-container" style="width: <?php echo $block_width ?>;">
		<div class="title-wrapper">
			<h3 class="widget-title"><?php echo $title ?></h3>
			<div class="clearfix"></div>
		</div>
		<div class="aside-content"><?php echo $content; ?></div>
	</div>

<?php
}

?>