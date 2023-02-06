<section class="viewtopic__body_wrapper">

	<nav aria-label="breadcrumb" class="d-none d-xl-block px-0">
		<ol class="breadcrumb ">
			<li class="breadcrumb-item"><a href="{U_INDEX}"><i class="fas fa-home"></i></a></li>
			<!-- IF PARENT_FORUM --><li class="breadcrumb-item"><a href="{U_VIEW_PARENT_FORUM}">{PARENT_FORUM_NAME}</a></li><!-- ENDIF -->
			<li class="breadcrumb-item active" aria-current="page"><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></li>
			<!-- IF TOPIC_TITLE --><li class="breadcrumb-item active" aria-current="page">{TOPIC_TITLE}</li><!-- ENDIF -->
		</ol>
	</nav>

	<div class="container-fluid">

		<!-- IF PAGINATION -->
		<div class="row px-0 mb-2 justify-content-center float-lg-right">
			{PAGINATION}
		</div>
		<!-- ENDIF -->
		<div class="clearfix"></div>

		<div class="row mb-3 p-3 viewtopic__title">
			<div class="col-12 px-0 viewtopic__title_forum">
				<h3>{TOPIC_TITLE}</h3>
				<p class="m-0">{L_BY} <a href="">{TOPIC_AUTHOR}</a></p>
			</div>
		</div>

		<div class="row viewtopic__buttons justify-content-center float-md-left">

			<!-- TOPIC BUTTON (NEW POST) -->
			<a class="btn btn-dark mr-1 d-none d-md-block" href="{U_POST_NEW_TOPIC}">{L_POST_NEW_TOPIC}</a>
			<a class="btn btn-dark mr-1 d-md-none d-sm-block" href="{U_POST_NEW_TOPIC}" title="{L_POST_NEW_TOPIC}"><i class="fas fa-comment"></i></a>

			<!-- TOPIC BUTTON (REPLY POST) -->
			<a class="btn btn-dark mr-1 d-none d-md-block" href="{U_POST_REPLY_TOPIC}">{L_POST_REPLY_TOPIC}</a>
			<a class="btn btn-dark mr-1 d-md-none d-sm-block" href="{U_POST_REPLY_TOPIC}"><i class="fas fa-reply fa__topic_icons"></i></a>

			<!-- TOPIC BUTTON (PRINT POST) -->
			<a class="btn btn-dark mr-1" target="_blank" href="{U_PRINTER_TOPIC}" title="{L_PRINTER_TOPIC}"><i class="fas fa-print fa__topic_icons"></i></a>

			<!-- TOPIC BUTTON (WHO HAS VIEWED THE POST) -->
			<a class="btn btn-dark mr-1" href="{U_WHOVIEW_TOPIC}" title="{L_WHOVIEW_ALT}"><i class="fas fa-eye fa__topic_icons"></i></a>

			<!-- BEGIN thanks_button -->
    		<a class="btn btn-dark" href="{thanks_button.U_THANK_TOPIC}"><i class="fas fa-thumbs-up fa__topic_icons" title="{thanks_button.L_THANK_TOPIC}"></i></a>
    		<!-- END thanks_button -->

		</div>
		<div class="clearfix"></div>

		<!-- POLL DISPLAY START -->
		{POLL_DISPLAY}
		<!-- POLL DISPLAY END -->

		<!-- BEGIN postrow -->

		<div id="{postrow.POST_ID}"></div>

		<div class="viewtopic__postrow_wrap">

			<div class="row viewtopic__author_post_info">
				<div class="col-12 col-md-3 col-xl-2 viewtopic__author_name_wrap">
					<a href="{postrow.PROFILE_URL}">{postrow.POSTER_NAME}</a>
				</div>
				<div class="col-12 col-md-9 col-xl-10 viewtopic__author_posted_on">
					<div class="viewtopic__posted_date" style="float: left">{L_POSTED}:&nbsp;{postrow.POST_DATE}</div>
					<div class="viewtopic__options" style="float: right">
						<a class="btn btn-dark" href="{postrow.QUOTE_URL}" title="{postrow.QUOTE_ALT}"><i class="fas fa-quote-right"></i></a>
						<!-- IF postrow.EDIT_URL -->
						<a class="btn btn-dark" href="{postrow.EDIT_URL}" title="{postrow.EDIT_ALT}"><i class="fas fa-pen-square"></i></a>
						<!-- ENDIF -->
						<!-- IF postrow.DELETE_URL -->
						<a class="btn btn-dark" href="{postrow.DELETE_URL}" title="{postrow.DELETE_ALT}"><i class="fas fa-trash-alt"></i></a>
						<!-- ENDIF -->
						<!-- IF postrow.IP_URL -->
						<a class="btn btn-dark" href="{postrow.IP_URL}" title="{postrow.IP_ALT}"><i class="fas fa-map-pin"></i></a>
						<!-- ENDIF -->
						<!-- IF postrow.REPORT_URL -->
						<a class="btn btn-dark" href="{postrow.REPORT_URL}" title="{postrow.REPORT_ALT}"><i class="fas fa-flag"></i></a>
						<!-- ENDIF -->
						<span class="ml-1 mr-2"><a data-clipboard-btn data-toast-text="Copied to clipboard" href="javascript:;" data-clipboard-text="modules.php?name=Forums&file=viewtopic&p={postrow.POST_ID}#{postrow.POST_ID}">#{postrow.POST_ID}</a></span>
					</div>
				</div>
			</div>

			<div class="row mb-4 viewtopic_body_pane clearfix">
				
				<!-- BEGIN responsive topic author pane -->
				<div class="col-12 viewtopic__author_pane_top">
					<div class="col-2 p-0 viewtopic__avatar_wrap align-middle">
						<!-- BEGIN switch_showavatars --><a href="{postrow.PROFILE_URL}">{postrow.POSTER_AVATAR}</a><!-- END switch_showavatars -->
					</div>
					<div class="col-10 p-0 viewtopic__author_pane_top_info">
						<div class="col-12 pr-0"><a href="{postrow.PROFILE_URL}">{postrow.POSTER_NAME}</a></div>
						<div class="col-12 pr-0">{postrow.POST_DATE}</div>
					</div>
				</div>

				<div class="col-12 p-2 d-block d-lg-none viewtopic__options_responsive">
					<a class="btn btn-dark" href="{postrow.QUOTE_URL}" title="{postrow.QUOTE_ALT}"><i class="fas fa-quote-right"></i></a>
					<!-- IF postrow.EDIT_URL -->
					<a class="btn btn-dark" href="{postrow.EDIT_URL}" title="{postrow.EDIT_ALT}"><i class="fas fa-pen-square"></i></a>
					<!-- ENDIF -->
					<!-- IF postrow.DELETE_URL -->
					<a class="btn btn-dark" href="{postrow.DELETE_URL}" title="{postrow.DELETE_ALT}"><i class="fas fa-trash-alt"></i></a>
					<!-- ENDIF -->
					<!-- IF postrow.IP_URL -->
					<a class="btn btn-dark" href="{postrow.IP_URL}" title="{postrow.IP_ALT}"><i class="fas fa-map-pin"></i></a>
					<!-- ENDIF -->
					<!-- IF postrow.REPORT_URL -->
					<a class="btn btn-dark" href="{postrow.REPORT_URL}" title="{postrow.REPORT_ALT}"><i class="fas fa-flag"></i></a>
					<!-- ENDIF -->

				</div>
				<!-- END responsive topic author pane -->


				<div class="col-12 col-md-3 col-xl-2 viewtopic__author_pane">
					<!-- <div class="col-12">{postrow.POSTER_NAME}</div> -->
					<!-- BEGIN switch_showavatars --><div class="viewtopic__author_avatar"><a href="{postrow.PROFILE_URL}">{postrow.POSTER_AVATAR}</a></div><!-- END switch_showavatars -->
					<div class="viewtopic__rank">{postrow.USER_RANK_01}</div>
					<div class="viewtopic__rank">{postrow.POSTER_POSTS} {L_POST_COUNT}</div>
					<div class="col-12 px-0 mt-4">
						<a class="btn btn-dark" href="{postrow.PM_URL}" title="{postrow.PM_ALT}"><i class="fas fa-comments"></i></a>
						<a class="btn btn-dark" href="{postrow.EMAIL_USER}" title="{postrow.EMAIL_ALT}"><i class="fas fa-envelope-square"></i></a>
						<a class="btn btn-dark" href="{postrow.SEARCH_USER_POSTS}" title="{postrow.SEARCH_ALT}"><i class="fas fa-search"></i></a>
					</div>
				</div>
				<div class="col-12 col-md-9 col-xl-10 viewtopic__body p-3">
					<div class="col-12 px-0">{postrow.MESSAGE}</div>
					<div class="col-12 px-0">{postrow.ATTACHMENTS}</div>
					<div class="col-12 px-0 viewtopic__signature_row">{postrow.SIGNATURE}</div>
					<!-- IF postrow.EDITED_MESSAGE -->
	            	<div class="alert alert-info mt-2" role="alert">{postrow.EDITED_MESSAGE}</div>
	            	<!-- ENDIF -->
				</div>

			</div>

			<div class="row px-0">
				<!-- BEGIN move_message -->
				<div class="col-12 alert alert-info" role="alert">
					{postrow.move_message.MOVE_MESSAGE}
				</div>
				<!-- END move_message -->
				<!-- BEGIN thanks -->
				<div class="col-12 alert alert-info" role="alert">
					<i class="fas fa-thumbs-up"></i> {postrow.thanks.THANKFUL}
					<a class="viewtopic__thanks" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">{postrow.thanks.THANKS_TOTAL}</a> {postrow.thanks.THANKED}
					<div class="collapse" id="collapseExample">
						<div class="card card-body">{postrow.thanks.THANKS}</div>
					</div>
				</div>
				<!-- END thanks -->
			</div>
		</div>
		<!-- END postrow -->

		<div class="row viewtopic__buttons justify-content-center float-md-left">

			<!-- TOPIC BUTTON (NEW POST) -->
			<a class="btn btn-dark mr-1 d-none d-md-block" href="{U_POST_NEW_TOPIC}">{L_POST_NEW_TOPIC}</a>
			<a class="btn btn-dark mr-1 d-md-none d-sm-block" href="{U_POST_NEW_TOPIC}" title="{L_POST_NEW_TOPIC}"><i class="fas fa-comment"></i></a>

			<!-- TOPIC BUTTON (REPLY POST) -->
			<!-- IF U_POST_REPLY_TOPIC -->
			<a class="btn btn-dark mr-1 d-none d-md-block" href="{U_POST_REPLY_TOPIC}">{L_POST_REPLY_TOPIC}</a>
			<!-- ENDIF -->
			<a class="btn btn-dark mr-1 d-md-none d-sm-block" href="{U_POST_REPLY_TOPIC}"><i class="fas fa-reply fa__topic_icons"></i></a>

			<!-- TOPIC BUTTON (PRINT POST) -->
			<a class="btn btn-dark mr-1" target="_blank" href="{U_PRINTER_TOPIC}" title="{L_PRINTER_TOPIC}"><i class="fas fa-print fa__topic_icons"></i></a>

			<!-- TOPIC BUTTON (WHO HAS VIEWED THE POST) -->
			<a class="btn btn-dark mr-1" href="{U_WHOVIEW_TOPIC}" title="{L_WHOVIEW_ALT}"><i class="fas fa-eye fa__topic_icons"></i></a>

			<!-- BEGIN thanks_button -->
    		<a class="btn btn-dark" href="{thanks_button.U_THANK_TOPIC}"><i class="fas fa-thumbs-up fa__topic_icons" title="{thanks_button.L_THANK_TOPIC}"></i></a>
    		<!-- END thanks_button -->

		</div>
		<div class="clearfix"></div>

		<!-- IF PAGINATION -->
		<div class="row px-0 justify-content-center float-lg-right">
			{PAGINATION}
		</div>
		<div class="clearfix"></div>
		<div class="divider"></div>
		<!-- ENDIF -->

		<!-- BEGIN switch_quick_reply -->
		<!-- {QRBODY} -->
		<!-- END switch_quick_reply -->

		<!-- Split button -->
		<!-- IF S_TOPIC_DELETE_URL -->
		<!-- <div class="divider"></div> -->
		<div class="btn-group col-md-2 px-0" style="margin-left: -15px;">
			<a class="btn btn-dark" href="{S_TOPIC_DELETE_URL}">{S_TOPIC_DELETE_BTN}</a>

			<button type="button" class="col-3 btn btn-dark dropdown-toggle px-3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="sr-only">Toggle Dropdown</span>
			</button>
			<div class="dropdown-menu viewtopic__mod_options">
				<a class="dropdown-item" href="{S_TOPIC_DELETE_URL}"><i class="fas fa-trash-alt"></i> {S_TOPIC_DELETE_BTN}</a>
				<a class="dropdown-item" href="{S_TOPIC_MOVE_URL}"><i class="fas fa-arrows-alt"></i> {S_TOPIC_MOVE_BTN}</a>
				<a class="dropdown-item" href="{S_TOPIC_LOCK_URL}"><!-- IF S_TOPIC_LOCK_STATE == 1 --><i class="fas fa-lock-open"></i><!-- ELSE --><i class="fas fa-lock"></i><!-- ENDIF --> {S_TOPIC_LOCK_BTN}</a>
				<a class="dropdown-item" href="{S_TOPIC_SPLIT_URL}"><i class="fas fa-columns"></i> {S_TOPIC_SPLIT_BTN}</a>
				<a class="dropdown-item" href="{S_TOPIC_MERGE_URL}"><i class="fas fa-object-group"></i> {S_TOPIC_MERGE_BTN}</a>
			</div>
		</div>
		<!-- ENDIF -->		

	</div>

</section>