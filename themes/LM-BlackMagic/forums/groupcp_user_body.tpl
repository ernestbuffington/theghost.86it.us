<section class="memberhips__body_wrapper">

	<nav aria-label="breadcrumb" class="d-none d-xl-block px-0">
		<ol class="breadcrumb ">
			<li class="breadcrumb-item"><a href="{U_INDEX}"><i class="fas fa-home"></i></a></li>
			<li class="breadcrumb-item active" aria-current="page"><a href="modules.php?name=Groups">Groups</a></li>
		</ol>
	</nav>

	<div class="container-fluid">

		<!-- BEGIN switch_groups_joined -->
		<div class="row phpbb-membership-groups">{L_GROUP_MEMBERSHIP_DETAILS}</div>
		<div class="row phpbb-membership-wrap">

			<!-- BEGIN switch_groups_member -->
			
			<div class="col-12 col-lg-6 phpbb-membership-title d-flex justify-content-center justify-content-md-start">{L_YOU_BELONG_GROUPS}</div>
			<form class="col-12 col-lg-6 px-0" method="post" action="{S_USERGROUP_ACTION}">
			<div class="row col-12 mx-0 phpbb-membership-select">
				<div class="col-12 col-lg-8">
					{GROUP_MEMBER_SELECT}
				</div>
				<div class="col-12 col-lg-4">
					<input type="submit" value="{L_VIEW_INFORMATION}" class="col-12 phpbb-group-button btn btn-outline-primary" />
					{S_HIDDEN_FIELDS}
				</div>
			</div>
			</form>
			<!-- END switch_groups_member -->

			<!-- BEGIN switch_groups_pending -->
			<div class="row phpbb-membership-groups">
				{L_PENDING_GROUPS}
			</div>

			<div class="row phpbb-membership-wrap">

				<div class="col-12 col-lg-6 phpbb-membership-title d-flex justify-content-center justify-content-md-start">{L_SELECT_A_GROUP}</div>
				<form class="col-12 col-lg-6 px-0" method="post" action="{S_USERGROUP_ACTION}">
				<div class="row col-12 mx-0 phpbb-membership-select">
					<div class="col-12 col-lg-8">
						{GROUP_PENDING_SELECT}
					</div>
					<div class="col-12 col-lg-4">
						<input type="submit" value="{L_VIEW_INFORMATION}" class="col-12 phpbb-group-button btn btn-outline-primary" />
						{S_HIDDEN_FIELDS}
					</div>
				</div>
				</form>
			</div>
			<!-- END switch_groups_pending -->
		</div>
		<!-- END switch_groups_joined -->

		<!-- BEGIN switch_groups_remaining -->
		<div class="row phpbb-membership-groups">
			{L_GROUP_MEMBERSHIP_DETAILS}
		</div>
		<div class="row phpbb-membership-wrap">
			<div class="col-12 col-lg-6 phpbb-membership-title d-flex justify-content-center justify-content-md-start"">{L_SELECT_A_GROUP}</div>
			<form class="col-12 col-lg-6 px-0" method="post" action="{S_USERGROUP_ACTION}">
			<div class="row col-12 mx-0 phpbb-membership-select">
				<div class="col-12 col-lg-8">
					{GROUP_LIST_SELECT}
				</div>
				<div class="col-12 col-lg-4">
					<input type="submit" value="{L_VIEW_INFORMATION}" class="col-12 phpbb-group-button btn btn-outline-primary" />
					{S_HIDDEN_FIELDS}			
				</div>
			</div>
			</form>
		</div>
		<!-- END switch_groups_remaining -->

	</div>

</section>