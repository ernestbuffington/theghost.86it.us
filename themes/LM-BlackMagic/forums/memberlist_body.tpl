<section class="member-list-body-wrap clearfix">

	<nav aria-label="breadcrumb" class="d-none d-xl-block px-0">
		<ol class="breadcrumb ">
			<li class="breadcrumb-item"><a href="{U_INDEX}"><i class="fas fa-home"></i></a></li>
			<li class="breadcrumb-item active" aria-current="page"><a href="{U_VIEW_FORUM}">member list</a></li>
		</ol>
	</nav>

	<div class="table-responsive">

		<table class="table table-striped table-dark">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">{L_USERNAME}</th>
					<th scope="col">{L_FROM}</th>
					<th scope="col">{L_AGE}</th>
					<th scope="col">{L_POSTS}</th>
					<th scope="col">{L_JOINED}</th>
					<th scope="col">{L_LAST_VISIT}</th>
					<th scope="col">{L_ONLINE_STATUS}</th>
				</tr>
			</thead>
			<tbody>
				<!-- BEGIN memberrow -->
				<tr>
					<th scope="row">{memberrow.ROW_NUMBER}</th>
					<td class="text-nowrap"><a href="{memberrow.U_VIEWPROFILE}">{memberrow.USERNAME}</a></td>
					<td class="text-nowrap">{memberrow.FLAG}{memberrow.FROM}</td>
					<td class="text-nowrap">{memberrow.AGE}</td>
					<td class="text-nowrap">{memberrow.POSTS}</td>
					<td class="text-nowrap">{memberrow.JOINED}</td>
					<td class="text-nowrap">{memberrow.LAST_ACTIVE}</td>
					<td class="text-nowrap">{memberrow.STATUS}</td>
				</tr>
				<!-- END memberrow -->
			</tbody>
		</table>
		
	</div>

	<!-- BEGIN pagination -->
	<div class="row no-gutters mt-2 justify-content-center float-lg-right evo-pagination">{pagination.PAGINATION}</div><!-- END pagination -->

</section>