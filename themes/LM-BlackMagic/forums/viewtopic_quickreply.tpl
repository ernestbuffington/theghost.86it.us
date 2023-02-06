<!-- BEGIN switch_open_qr_yes -->
<section class="viewtopic__quick_reply_wrapper d-block">
<!-- END switch_open_qr_yes -->

<!-- BEGIN switch_open_qr_no -->
<section class="viewtopic__quick_reply_wrapper d-none">
<!-- END switch_open_qr_no -->

	<div class="container-fluid">	

		<form action="{S_POST_ACTION}" method="post" name="post">

			<div class="row justify-content-center mb-4 mt-4"><span class="messages__posting_title">{L_QUICK_REPLY}</span></div>

			<div class="row">

				<!-- BEGIN switch_username_select -->
				<!-- Below if the field for guests posting in the forums. -->
				<label for="username" class="col-sm-12 col-lg-6 px-0 col-form-label">{L_USERNAME}</label>
				<div class="col-sm-12 col-lg-6 px-0"><input class="col-12" type="text" name="username" id="username" value="{USERNAME}" required></div>
				<!-- END switch_username_select -->

			</div>

		</form>

	</div>


</section>