<section class="messages_read__body_wrapper">

	<nav aria-label="breadcrumb" class="px-0">
		<ol class="breadcrumb ">
			<li class="breadcrumb-item"><a href="{U_INDEX}"><i class="fas fa-home"></i></a></li>
			<li class="breadcrumb-item"><a href="{MODULE_URI}">{MODULE_NAME}</a></li>
			<li class="breadcrumb-item active" aria-current="page"><a href="{S_PRIVMSGS_ACTION}">{BOX_NAME}</a></li>
		</ol>
	</nav>

	<div class="container-fluid">

		<div class="row">

			<div class="col-12 px-0">
				<!-- IF MESSAGE_FROM_ID != 1 && REPLY_URI -->
   		 		<a class="col-md-auto btn btn-dark mb-2" href="{REPLY_URI}">{REPLY_LOCALE}</a>
    			<!-- ENDIF -->
    			<!-- IF EDIT_URI -->
    			<a class="col-md-auto btn btn-dark mb-2" href="{EDIT_URI}">{EDIT_LOCALE}</a>
    			<!-- ENDIF -->
			</div>

			<div class="col-12 col-lg-2 d-none d-lg-block messages_read__author_pane">
				<!-- START - I ONLY GET DISPLAYED WHEN ON A DESKTOP SCREEN -->
				<div class="col-12">	
					{MESSAGE_FROM}
				</div>
				<div class="col-12">
					{SENDER_AVATAR}
				</div>
				<!-- END - I ONLY GET DISPLAYED WHEN ON A DESKTOP SCREEN -->
			</div>

			<div class="col-12 col-lg-10 messages_read__body p-3">

				<div class="d-flex">
					<div class="col-3 d-flex d-lg-none pl-0" style="align-items: center;">
						{SENDER_AVATAR}
					</div>
					<div class="col-9 pl-3 pl-lg-0">
						<div class="col-12 pl-3 pl-lg-0 text-truncate">
							{L_SUBJECT}: <a href="{MESSAGE_INBOX_URI}">{POST_SUBJECT}</a> 
							<!-- START - I ONLY GET DISPLAYED WHEN ON A DESKTOP SCREEN -->
							<span class="d-none d-lg-inline-block">- {L_POSTED}: {POST_DATE}</span>
							<!-- END - I ONLY GET DISPLAYED WHEN ON A DESKTOP SCREEN -->
						</div>

						<div class="col-12 pl-3 pl-lg-0 text-truncate d-block d-lg-none">
							<!-- START - I ONLY GET DISPLAYED WHEN SCREEN GOES RESPONSIVE -->
							{L_POSTED}: {POST_DATE}
							<!-- END - I ONLY GET DISPLAYED WHEN SCREEN GOES RESPONSIVE -->
						</div>
					</div>
				</div>
				<div class="divider"></div>
				<div class="col-12 px-0">
					<span class="postbody">{MESSAGE}</span><!-- BEGIN postrow -->{ATTACHMENTS}<!-- END postrow -->
				</div>

			</div>

			<div class="col-12 px-0 mt-3 d-none d-lg-block text-right">
				<form method="post" action="{S_PRIVMSGS_ACTION}">
					{S_HIDDEN_FIELDS}
					<input class="btn btn-dark" type="submit" name="save" value="{L_SAVE_MSG}" />
					<input class="btn btn-dark" type="submit" name="delete" value="{L_DELETE_MSG}" />
					<!-- BEGIN switch_attachments --> <input class="btn btn-danger" type="submit" name="pm_delete_attach" value="{L_DELETE_ATTACHMENTS}" /><!-- END switch_attachments -->
				</form>
			</div>

			<div class="col-12 px-0 mt-3 d-block d-lg-none text-right">
				<div class="divider mt-1"></div>
				<form method="post" action="{S_PRIVMSGS_ACTION}">
					{S_HIDDEN_FIELDS}
					<input class="col-12 btn btn-dark mb-2" type="submit" name="save" value="{L_SAVE_MSG}" />
					<input class="col-12 btn btn-dark" type="submit" name="delete" value="{L_DELETE_MSG}" />
					<!-- BEGIN switch_attachments --><input class="col-12 mt-2 btn btn-danger" type="submit" name="pm_delete_attach" value="{L_DELETE_ATTACHMENTS}" /><!-- END switch_attachments -->
				</form>
			</div>

			

		</div>

	</div>

</section>