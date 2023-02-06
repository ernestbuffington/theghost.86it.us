<!--MOD GLANCE BEGIN --><!-- {GLANCE_OUTPUT} --><!-- MOD GLANCE END -->
<section class="index__body_wrapper">

	<nav aria-label="breadcrumb" class="breadcrumb-nav d-none d-xl-block px-0">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="{U_INDEX}"><i class="fas fa-home"></i></a></li>
			<li class="breadcrumb-item active">{L_FORUM}</li>
		</ol>
		<a class="unread-topics btn btn-dark" style="display: margin-right: 3px" href="{U_SEARCH_NEW}">Unread Content</a>
	</nav>

	<div class="container-fluid">

		<!-- additional buttons -->
		<!-- <div class="row">
			<a class="btn btn-dark" style="margin-right: 3px" href="">View posts since last visit</a>
			<a class="btn btn-dark" style="margin-right: 3px" href="">View your posts</a>
			<a class="btn btn-dark" style="margin-right: 3px" href="">View unanswered posts</a>
			<a class="btn btn-dark" style="margin-right: 3px" href="">Recent Topics</a>
		</div> -->

		<div class="row phpbb-forums">
			<div class="col-12 col-lg-6 phpbb-forum-info">{L_FORUM}</div>
			<div class="col-1 phpbb-forum-topic-count d-none d-lg-block">{L_TOPICS}</div>
			<div class="col-1 phpbb-topic-reply-count d-none d-lg-block">{L_POSTS}</div>
			<div class="col-4 phpbb-forum-freshness d-none d-lg-block">{L_FRESHNESS}</div>
		</div>
		<!-- BEGIN catrow -->
		<div class="row phpbb-cat-head">{catrow.CAT_DESC}</div>
		<!-- BEGIN forumrow -->
		<!-- IF ! forumrow.PARENT -->
		<div class="row phpbb-forum">

			<!-- IF catrow.forumrow.FORUM_IS_LINK == 0 -->
			<div class="col-1 d-none d-lg-block text-center">
				<!-- IF catrow.forumrow.TOTAL_UNREAD != 0 -->
				<div class="phpbb__list_icon_unread">
				<!-- ELSE -->
				<div class="phpbb__list_icon">
				<!-- ENDIF -->
					<i class="far fa-comment fa-2x"></i>
				</div>
			</div>
			<!-- ENDIF -->

			<!-- BEGIN switch_forum_link_off -->
			<!-- IF catrow.forumrow.FORUM_ICON_IMG -->
			<div class="col-1 d-none d-lg-block text-center">{catrow.forumrow.FORUM_ICON_IMG}</div>
			<!-- ENDIF -->
			<!-- END switch_forum_link_off -->
			<!-- BEGIN switch_forum_link_on -->
			<div class="col-1 d-none d-lg-block text-center"><i class="fas fa-link fa-3x"></i></div>
			<!-- END switch_forum_link_on -->

			<div class="col-12 col-lg-<!-- IF catrow.forumrow.FORUM_ICON_IMG -->4<!-- ELSE -->5<!-- ENDIF -->">

				<!-- IF catrow.forumrow.FORUM_HAS_NEW_POSTS == true --><span class="d--inline-block d-lg-none badge phpbb-sub-is-new mr-1">New</span><!-- ENDIF --><a{catrow.forumrow.FORUM_COLOR} href="{catrow.forumrow.U_VIEWFORUM}"<!-- IF catrow.forumrow.FORUM_LINK_COUNT --> target="_blank"<!-- ENDIF -->>{catrow.forumrow.FORUM_NAME}</a>
				<div class="col-12 px-0">
					<small class="text-muted">{catrow.forumrow.FORUM_DESC}</small>
					<ul class="p-0 phpbb-sub-forum-list">
					<!-- BEGIN sub -->
					<!-- DEFINE $HAS_SUB = 1 -->	  				
	  					<li class="d-inline-block text-truncate phpbb-sub-forum">	  						
	  						<a href="{catrow.forumrow.sub.U_VIEWFORUM}" {catrow.forumrow.sub.FORUM_COLOR} title="{catrow.forumrow.sub.FORUM_DESC_HTML}"><!-- IF catrow.forumrow.sub.UNREAD --><span class="d-inline-block badge phpbb-sub-is-new mr-1">New</span><!-- ENDIF -->{catrow.forumrow.sub.FORUM_NAME}</a>
	  					</li>
	  				<!-- UNDEFINE $HAS_SUB -->
					<!-- END sub -->
					</ul>

				</div>

				<!-- IF catrow.forumrow.LAST_POST_TOPIC -->
				<div class="col-12 px-0 text-truncate d-block d-lg-none">
					<small>Last post <a href="">{catrow.forumrow.LAST_POST_USERNAME}</a> in <a href="{catrow.forumrow.LAST_TOPIC_URL}">{catrow.forumrow.LAST_POST_TOPIC}</a></small>
				</div>
				<!-- ENDIF -->

			</div>
			<!-- BEGIN switch_forum_link_off -->
			<div class="col-1 d-none d-lg-block text-center">{catrow.forumrow.TOTAL_TOPICS}</div>
			<div class="col-1 d-none d-lg-block text-center">{catrow.forumrow.TOTAL_POSTS}</div>
			<div class="col-1 d-none <!-- IF catrow.forumrow.TOTAL_POSTS != 0 -->d-lg-block<!-- ENDIF --> text-center"><img src="{catrow.forumrow.LAST_POST_AVATAR}" style="max-width: 48px; max-height: 48px" border="0"></div>
			<div class="col-3<!-- IF catrow.forumrow.TOTAL_POSTS == 0 --> phpbb-forum-row<!-- ENDIF --> phpbb-forum-row-freshness d-none d-lg-block">{catrow.forumrow.LAST_POST}{catrow.forumrow.LAST_POSTTIME}<br />{catrow.forumrow.LAST_POST_USERNAME}</div>
			<!-- END switch_forum_link_off -->
			<!-- BEGIN switch_forum_link_on -->
			<div class="col-12 col-lg-6 phpbb-forum-row text-left text-lg-right">{catrow.forumrow.FORUM_LINK_COUNT}</div>
			<!-- END switch_forum_link_on -->
		</div>
		<!-- ENDIF -->
		<!-- END forumrow -->
		<!-- END catrow -->
		
		<!-- <div class="divider"></div> -->

	</div>
</section>