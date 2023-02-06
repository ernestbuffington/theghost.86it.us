<section class="whoview__body_wrapper">

	<!-- <nav aria-label="breadcrumb" class="d-none d-xl-block px-0">
		<ol class="breadcrumb ">
			<li class="breadcrumb-item"><a href="{U_INDEX}"><i class="fas fa-home"></i></a></li>
			<li class="breadcrumb-item" aria-current="page"><a href="{TOPIC_URL}">{TOPIC_TITLE}</a></li>
			<li class="breadcrumb-item active" aria-current="page">{TITLE}</li>
		</ol>
	</nav> -->

	<div class="container-fluid">
		
		<form method="post" action="{S_MODE_ACTION}" name="post">
			<div class="row">
			<!-- BEGIN memberrow -->
				<div class="col-12 col-lg-4 px-0 px-lg-2">
					
					<div class="d-flex whoviewed__topic_user_wrap p-2 mb-3">
						<div class="col-12 col-lg-12">
							<div class=""><a class="messages_a" href="{memberrow.U_VIEWPROFILE}">{memberrow.USERNAME}</a></div>
							<div class="">{L_TOPIC_COUNT}: {memberrow.VIEW_COUNT}</div>
							<div class="text-truncate">{L_LAST_VIEWED}: {memberrow.VIEW_TIME}</div>
						</div>
					</div>
					
				</div>
			<!-- END memberrow -->
			</div>
		</form>

	</div>
</section>