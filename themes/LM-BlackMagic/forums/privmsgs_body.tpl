<section class="messages__wrapper">

	<nav aria-label="breadcrumb" class="d-none d-xl-block px-0">
		<ol class="breadcrumb ">
			<li class="breadcrumb-item"><a href="{U_INDEX}"><i class="fas fa-home"></i></a></li>
			<li class="breadcrumb-item"><a href="{MODULE_URI}">{MODULE_NAME}</a></li>
			<li class="breadcrumb-item active" aria-current="page">{BOX_NAME}</li>
		</ol>
	</nav>

	<div class="container-fluid">

		<div class="row">

			<div class="col-md-6 col-lg-3">
				<a class="messages_a" href="{INBOX_URI}">
					<div class="messages__inbox">

						<h2 class="number">{TOTAL_INBOX}</h2>
						<span class="desc">{INBOX_TITLE}</span>
						<div class="icon">
							<i class="fas fa-inbox"></i>
						</div>

					</div>
				</a>
			</div>
			<div class="col-md-6 col-lg-3">
				<a class="messages_a" href="{SENTBOX_URI}">
					<div class="messages__inbox">

						<h2 class="number">{TOTAL_SENTBOX}</h2>
						<span class="desc">{SENTBOX_TITLE}</span>
						<div class="icon">
							<i class="fas fa-share"></i>
						</div>

					</div>
				</a>
			</div>
			<div class="col-md-6 col-lg-3">
				<a class="messages_a" href="{OUTBOX_URI}">
					<div class="messages__inbox">

						<h2 class="number">{TOTAL_OUTBOX}</h2>
						<span class="desc">{OUTBOX_TITLE}</span>
						<div class="icon">
							<i class="fas fa-level-up-alt"></i>
						</div>

					</div>
				</a>
			</div>
			<div class="col-md-6 col-lg-3">
				<a class="messages_a" href="{SAVEBOX_URI}">
					<div class="messages__inbox">

						<h2 class="number">{TOTAL_SAVEBOX}</h2>
						<span class="desc">{SAVEBOX_TITLE}</span>
						<div class="icon">
							<i class="fas fa-save"></i>
						</div>

					</div>
				</a>
			</div>

		</div>

	</div>
</section>

<div class="divider mb-3"></div>

<!-- IF BOX_SIZE_STATUS -->
<section>
	<div class="container-fluid">
		<div class="row mb-2 ml-2 mr-2">
			<!-- Inbox percentage meter -->
			<h3 class="progress-percentage">{BOX_SIZE_STATUS}</h3>
			<div class="progress">
  				<div class="progress-bar bg-success" role="progressbar" style="width: {INBOX_LIMIT_PERCENT}%" aria-valuenow="{INBOX_LIMIT_PERCENT}" aria-valuemin="0" aria-valuemax="100"></div>
			</div>
		</div>
		<div class="row mb-4 ml-2 mr-2">
			<!-- Attachements percentage meter -->
			<h3 class="progress-percentage">{ATTACH_BOX_SIZE_STATUS}</h3>
			<div class="progress">
  				<div class="progress-bar bg-success" role="progressbar" style="width: {ATTACHBOX_LIMIT_PERCENT}%" aria-valuenow="{ATTACHBOX_LIMIT_PERCENT}" aria-valuemin="0" aria-valuemax="100"></div>
			</div>
		</div>
	</div>
</section>

<div class="divider mb-3"></div>
<!-- ENDIF -->

<section>

	<div class="row pb-2">
		<div class="col-12 text-sm-center text-lg-left">
			<a class="btn btn-dark" href="{POST_PM_URL}">{L_POST_PM}</a>
			<!-- IF MASS_PM_PERMS == true -->
			<a class="btn btn-dark" href="{MASS_PM_URL}">{L_MASS_PM}</a>
			<!-- ENDIF -->
		</div>
	</div>

	<div class="container-fluid clearfix">
		
		<div class="row messages__list">

			<form class="col-12 px-0" method="post" name="privmsg_list" action="{S_PRIVMSGS_ACTION}">

			<!-- BEGIN listrow -->
			<div class="col-lg-12 messages__list_wrapper">

				<div class="row">

					<div class="col-2 col-lg-1 px-0 text-center">

						<label class="image-radio">
							<!-- IF listrow.PRIVMSG_STATUS_FLAG == true -->
							<div class="messages__list_icon_unread">
							<!-- ELSE -->
							<div class="messages__list_icon">
							<!-- ENDIF -->
								<input class="checkbox" type="checkbox" name="mark[]" value="{listrow.S_MARK_ID}">
								<i class="far fa-comment"></i>
							</div>
						</label>

					</div>
					<div class="col-10 col-lg-11 px-0 messages__list_description">
						<div class="messages__list_description_inner">
							<h4 class="text-truncate"><a href="{listrow.U_READ}">{listrow.SUBJECT}</a></h4>
							<p class="text-truncate"><a href="{listrow.U_FROM_USER_PROFILE}">{listrow.FROM}</a>, {listrow.DATE}</p>
						</div>						
					</div>
				</div>

			</div>
			<!-- END listrow -->

			<!-- IF TOTAL_INBOX > 0 -->
			<input type="submit" name="save" value="{L_SAVE_MARKED}" class="btn btn-dark" />
            <input type="submit" name="delete" value="{L_DELETE_MARKED}" class="btn btn-dark" />
            <input type="submit" name="deleteall" value="{L_DELETE_ALL}" class="btn btn-dark" />
            <!-- ENDIF -->
        	</form>

			<!-- BEGIN switch_no_messages -->
			<div class="col-12 alert alert-danger">{L_NO_MESSAGES}</div>
			<!-- END switch_no_messages -->

		</div>

		

		<!-- <div class="row mt-2 justify-content-center float-lg-right">
			{PAGINATION_BOOTSTRAP}
		</div> -->

		<div class="row mt-2 justify-content-center float-lg-right evo-pagination">
			{PAGINATION}
		</div>

	</div>

</section>