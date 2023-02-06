<section class="viewforum__body_wrapper">

	<nav aria-label="breadcrumb" class="d-none d-xl-block px-0">
		<ol class="breadcrumb ">
			<li class="breadcrumb-item"><a href="{U_INDEX}"><i class="fas fa-home"></i></a></li>
			<!-- IF PARENT_FORUM --><li class="breadcrumb-item"><a href="{U_VIEW_PARENT_FORUM}">{PARENT_FORUM_NAME}</a></li><!-- ENDIF -->
			<li class="breadcrumb-item" aria-current="page"><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></li>
		</ol>
	</nav>

	<div class="viewtopic__buttons col-12 col-lg-2 px-0">
			<a class="btn btn-dark col-md-auto" href="{U_POST_NEW_TOPIC}">{L_POST_NEW_TOPIC}</a>
		</div>

	<div class="container-fluid">
		
		<!-- <div class="clearfix"></div> -->

		<!-- IF HAS_SUBFORUMS -->
		<div class="phpbb-sub-forums-wrap">
			<!-- BEGIN catrow -->
			<div class="row phpbb-forums">
				<div class="col-12 col-lg-6 phpbb-forum-info">{catrow.CAT_DESC}</div>
				<div class="col-1 phpbb-forum-topic-count d-none d-lg-block">{L_TOPICS}</div>
				<div class="col-1 phpbb-topic-reply-count d-none d-lg-block">{L_POSTS}</div>
				<div class="col-4 phpbb-forum-freshness d-none d-lg-block">{L_LASTPOST}</div>
			</div>
			<!-- BEGIN forumrow -->
			<div class="row phpbb-forum">

				<!-- IF catrow.forumrow.FORUM_IS_LINK == 0 -->
				<div class="col-1 phpbb-forum-row d-none d-lg-block text-center">
					<!-- IF catrow.forumrow.FORUM_HAS_NEW_POSTS == true -->
					<div class="phpbb__list_icon_unread">
					<!-- ELSE -->
					<div class="phpbb__list_icon">
					<!-- ENDIF -->
						<i class="far fa-comment fa-2x"></i>
					</div>
				</div>
				<!-- ENDIF -->

				<div class="col-12 col-lg-5">
					<a href="{catrow.forumrow.U_VIEWFORUM}">{catrow.forumrow.FORUM_NAME}</a><br />{catrow.forumrow.FORUM_DESC}
				</div>

				<div class="col-1 phpbb-forum-row d-none d-lg-block text-center">{catrow.forumrow.TOPICS}</div>

				<div class="col-1 phpbb-forum-row d-none d-lg-block text-center">{catrow.forumrow.POSTS}</div>

				<div class="col-1 phpbb-forum-row d-none <!-- IF catrow.forumrow.LAST_POST_COUNT != 0 -->d-lg-block<!-- ENDIF --> text-center">
					<img src="{catrow.forumrow.LAST_POST_AVATAR}" style="max-width: 48px; max-height: 48px" border="0">
				</div>

				<!-- {catrow.forumrow.LAST_POST} -->
				<div class="col-<!-- IF catrow.forumrow.LAST_POST_COUNT -->3<!-- ELSE -->4<!-- ENDIF --> <!-- IF catrow.forumrow.LAST_POST_COUNT == 0 --> phpbb-forum-row<!-- ENDIF --> phpbb-forum-row-freshness d-none d-lg-block">{catrow.forumrow.LAST_POST_IMG} {catrow.forumrow.LAST_POST_TIME}<br />{catrow.forumrow.LAST_POST_USERNAME}</div>
			</div>
			<!-- END forumrow -->
			<!-- END catrow -->
		</div>
		<!-- ENDIF -->

		<!-- IF NUM_TOPICS != 0 -->

			<!-- IF NUM_TOPICS || ! HAS_SUBFORUMS -->
			<div class="phpbb-sub-forums-wrap<!-- IF HAS_SUBFORUMS --> mt-3<!-- ENDIF -->">

				<div class="row phpbb-forums"> 
					<div class="col-12 col-lg-6 phpbb-forum-info">{L_TOPICS}</div>
					<div class="col-1 phpbb-forum-topic-count d-none d-lg-block">{L_REPLIES}</div>
					<div class="col-1 phpbb-topic-reply-count d-none d-lg-block">{L_VIEWS}</div>
					<div class="col-4 phpbb-forum-freshness d-none d-lg-block">{L_LASTPOST}</div>
				</div>

				<!-- BEGIN topicrow -->
				<!-- BEGIN divider -->
				<div class="row viewforum__body_divider p-3">{topicrow.divider.L_DIV_HEADERS}</div>
				<!-- END divider -->
				<div class="row phpbb-topics">

					<div class="col-1 d-none d-lg-block text-center" style="padding: 6px;">
						<!-- IF topicrow.FORUM_HAS_NEW_POSTS == true -->
						<div class="phpbb__viewforum_icon_unread">
						<!-- ELSE -->
						<div class="phpbb__viewforum_icon">
						<!-- ENDIF -->
							<i class="far fa-comment"></i>
						</div>
					</div>

					<div class="col-12 col-lg-5 text-truncate" style="padding: 12px;">
						<!-- IF topicrow.FORUM_HAS_NEW_POSTS == true --><span class="d--inline-block d-lg-none badge phpbb-sub-is-new mr-1">New</span><!-- ENDIF --><a href="{topicrow.U_VIEW_TOPIC}">{topicrow.TOPIC_TITLE}</a>

						<div class="col-3 px-0 float-left float-lg-right">
							<small>{topicrow.GOTO_PAGE}</small>
						</div>

						<div class="col-12 px-0 text-truncate d-block d-lg-none">
							<small>Last post {topicrow.LAST_POST_AUTHOR}</small>
						</div>

					</div>

					<div class="col-1 d-none d-lg-block text-center" style="padding: 12px;">{topicrow.REPLIES}</div>
					<div class="col-1 d-none d-lg-block text-center" style="padding: 12px;">{topicrow.VIEWS}</div>

					<div class="col-4 d-none d-lg-block phpbb-forum-row-freshness">{topicrow.LAST_POST_IMG} {topicrow.LAST_POST_TIME}<br />{topicrow.LAST_POST_AUTHOR}</div>

				</div>
				<!-- END topicrow -->

				<div class="row px-0 mt-3 justify-content-center float-lg-right">
					{PAGINATION}
				</div>
				<div class="clearfix"></div>

				<!-- IF S_USER_HAS_MOD_RIGHTS == true -->
				<div class="divider"></div>
				<div class="col-12 px-0 text-right">
					<a class="col-md-auto btn btn-outline-warning" href="{S_MODCP_URI}">Moderate this forum</a>
					<div class="clearfix"></div>
				</div>
				<!-- ENDIF -->

			</div>

			<!-- ENDIF -->

			<!-- ELSE -->
			<div class="alert alert-primary text-center mt-3" style="margin-left: -15px; margin-right: -15px;" role="alert">{L_NO_TOPICS}</div>
			<!-- ENDIF -->




	</div>
</section> 