<?php
#---------------------------------------------------------------------------------------#
# HEADER NAVIGATION SYSTEM                                                              #
#---------------------------------------------------------------------------------------#
# THEME INFO                                                                            #
# CarbinFiber Theme v1.0 (Fixed & Full Width)                                           #
#                                                                                       #
# Final Build Date 08/17/2019 Saturday 7:40pm                                           #
#                                                                                       #
# A Very Nice Black Carbin Fiber Styled Design.                                         #
# Copyright © 2019 By: TheGhost AKA Ernest Allen Bffington                              #
# e-Mail : ernest.buffington@gmail.com                                                  #
#---------------------------------------------------------------------------------------#
# CREATION INFO                                                                         #
# Created On: 1st August, 2019 (v1.0)                                                   #
#                                                                                       #
# Updated On: 1st August, 2019 (v3.0)                                                   #
# HTML5 Theme Code Updated By: Lonestar (Lonestar-Modules.com)                          #
#                                                                                       #
# Read CHANGELOG File for Updates & Upgrades Info                                       #
#                                                                                       #
# Designed By: TheGhost                                                                 #
# Web Site: https://theghost.86it.us                                                    #
# Purpose: PHP-Nuke Titanium | Xtreme Evo                                               #
#---------------------------------------------------------------------------------------#
# CMS INFO                                                                              #
# PHP-Nuke Copyright (c) 2006 by Francisco Burzi phpnuke.org                            #
# PHP-Nuke Titanium (c) 2019 : Enhanced PHP-Nuke Web Portal System                      #
#---------------------------------------------------------------------------------------#

#------------------------------------#
# CSS Drop-Down Navigation System v3 #
#------------------------------------#
if (realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])){ exit('Access Denied');}

global $user, $cookie, $prefix, $sitekey, $db, $name, $banners, $user_prefix, $userinfo, $admin, $admin_file, $ThemeInfo;

########################
# DO NOT EDIT THIS LINE
#####################################################################################################################
echo '<div id="cssmenu" class="align-center">';
echo '<ul>';
#####################################################################################################################

//echo '<li class="active"><a href="index.php"><i class="fa fa-fw fa-home"></i> Home</a></li>';
echo '<li class="has-sub"><a href="index.php"><i class="fab fa-fort-awesome"></i> HOME</a>';
echo '<ul>';
echo '<li><a href="modules.php?name=Web_Links"><i class="fas fa-link"></i> Web Links</a></li>';
echo '<li><a href="modules.php?name=Surveys"><i class="fas fa-list-ol"></i> Surveys</a></li>';
echo '<li><a href="modules.php?name=ECalendar"><i class="fas fa-calendar-check"></i> ECalendar</a></li>';
echo '<li><a href="modules.php?name=Members_List"><i class="fas fa-users"></i> Member List</a></li>';
echo '<li><a href="modules.php?name=Feedback"><i class="far fa-comments"></i> Feedback</a></li>';
echo '<li><a href="modules.php?name=Link_Us"><i class="fas fa-link"></i> Link Us</a></li>';
echo '<li><a href="modules.php?name=Content"><i class="fas fa-suitcase"></i> Content</a></li>';
echo '<li><a href="modules.php?name=Docs"><i class="fas fa-balance-scale"></i> Docs</a></li>';
echo '<li><a href="modules.php?name=Donations"><i class="far fa-money-bill-alt"></i> Donations</a></li>';
echo '<li><a href="modules.php?name=FAQ"><i class="far fa-life-ring"></i> FAQ</a></li>';
echo '<li><a href="modules.php?name=Supporters"><i class="fas fa-handshake"></i> Supporters</a></li>';
echo '<li><a href="modules.php?name=NukeSentinel"><i class="fas fa-shield-alt"></i> Sentinel</a></li>';
//echo '<li><a href="modules.php?name=FAQ"><i class="fas fa-link"></i> FAQ</a></li>';

echo '</ul>';
echo '</li>';
######################################################################################################################
echo '<li class="has-sub"><a href="modules.php?name=Blogs"><i class="fas fa-file-alt"></i> BLOGS</a>';
echo '<ul>';
echo '<li><a href="modules.php?name=Blog_Topics"><i class="fas fa-file-alt"></i> Blog Topics</a></li>';
echo '<li><a href="modules.php?name=Blog_Archive"><i class="fas fa-file-alt"></i> Blog Archives</a></li>';
echo '<li><a href="modules.php?name=Blog_Top"><i class="fas fa-file-alt"></i> Top 10 Blogs</a></li>';
echo '<li><a href="modules.php?name=Blog_Submit"><i class="fas fa-file-alt"></i> SUBMIT BLOG</a></li>';
echo '</ul>';
echo '</li>';
#######################################################################################################################
echo '<li class="has-sub"><a href="modules.php?name=Forums"><i class="fas fa-users"></i> FORUMS</a>';
echo '<ul>';
echo '<li><a href="modules.php?name=Forums&amp;file=search"><i class="fas fa-search"></i> Forum Search</a></li>';
echo '<li><a href="modules.php?name=Forums&amp;file=search&amp;search_id=newposts"><i class="fas fa-hand-point-right"></i> New</a></li>';
echo '<li><a href="modules.php?name=Forums&amp;file=search&amp;search_id=unanswered"><i class="fas fa-hand-point-right"></i> Unanswered</a></li>';
echo '<li><a href="modules.php?name=Forums&amp;file=search&amp;search_id=egosearch"><i class="fas fa-hand-point-right"></i> My Posts</a></li>';
echo '</ul>';
echo '</li>';
#######################################################################################################################
if (!is_user()) 
{
 //   evouserinfo_login();
} 
else 
{

   echo '<li class="has-sub"><a href="modules.php?name=File_Repository"><i class="fas fa-download"></i> DOWNLOADS</a>';
   echo '<ul>';

   echo '<li><a href="modules.php?name=File_Repository"><i class="fas fa-download"></i> Main Downloads</a></li>';
   echo '<li><a href="modules.php?name=File_Repository&action=newdownloads"><i class="fas fa-download"></i> New Downloads</a></li>';
   echo '<li><a href="modules.php?name=File_Repository&action=submitdownload"><i class="fas fa-download"></i> Upload Files</a></li>';
   echo '<li><a href="modules.php?name=File_Repository&action=mostpopular"><i class="fas fa-download"></i> HOT Downloads</a></li>';
   echo '</ul>';
   echo '</li>';

#################################################################################################################
//echo '<li><a href="modules.php?name=Image_Repository"><i class="fa fa-fw fa-image"></i> IMAGE HOST</a></li>';
}

#################################################################################################################
if (is_user()) 
{
echo '<li class="has-sub"><a href="#"><i class="fas fa-bomb"></i> MY LINKS</a>';
echo '<ul>';
echo '<li><a href="modules.php?name=Private_Messages"><i class="fas fa-envelope"></i> My Inbox</a></li>';
echo '<li><a href="modules.php?name=Groups"><i class="fas fa-user-secret"></i> My Groups</a></li>';
echo '<li><a href="modules.php?name=Image_Repository"><i class="fa fa-fw fa-image"></i> My Images</a></li>';
echo '<li><a href="modules.php?name=Bookmarks"><i class="fas fa-bookmark"></i> My Bookmarks</a></li>';
echo '<li><a href="modules.php?name=Profile&mode=editprofile"><i class="fas fa-id-card"></i> Edit My Profile</a></li>';
echo '<li><a href="modules.php?name=Your_Account&op=chgtheme"><i class="fas fa-laptop"></i> Change Theme</a></li>';
echo '<li><a href="modules.php?name=Advertising"><i class="fas fa-ad"></i> Advertise</a></li>';


echo '</ul>';
echo '</li>';
}

if (is_mod_admin('super'))
{
echo '<li class="has-sub"><a href="admin.php#"><i class="fas fa-radiation-alt"></i> ADMIN LINKS</a>';
echo '<ul>';
echo '<li><a href="admin.php?op=adminStory"><i class="fas fa-radiation-alt"></i> New Blog</a></li>';
echo '<li><a href="admin.php?op=topicsmanager"><i class="fas fa-radiation-alt"></i> New Blog Topic</a></li>';
echo '<li><a href="admin.php?op=AddCategory"><i class="fas fa-radiation-alt"></i> New Blog Cat</a></li>';
echo '<li><a href="admin.php?op=modules"><i class="fas fa-radiation-alt"></i> Edit Modules</a></li>';
echo '<li><a href="admin.php?op=newsletter"><i class="fas fa-radiation-alt"></i> News Letter</a></li>';


echo '<li><a href="modules.php?name=Arcade_Tweaks"><i class="fas fa-radiation-alt"></i> Arcade Admin</a></li>';


echo '<li><a href="modules.php?name=cPanel_Login"><i class="fas fa-radiation-alt"></i> cPanel Login</a></li>';

echo '<li><a href="admin.php?op=ABDBOptimize"><i class="fas fa-radiation-alt"></i> Optimize DB</a></li>';
echo '</ul>';
echo '</li>';
}

echo '<li>'.(( !is_user() ) ? '<a href="modules.php?name=Your_Account&op=new_user"><i class="fa fa-fw fa-registered"></i> REGISTER NEW ACCOUNT</a>' : '<a href="modules.php?name=Your_Account"><i class="fa fa-fw fa-registered"></i> MY ACCOUNT</a>').'</li>';
echo '</ul>';
echo '</div>';
?>
