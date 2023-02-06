<div class="col-12 col-lg-6 mb-2 px-0 poll-body">

	<h4>{POLL_QUESTION}</h4>

	<!-- BEGIN poll_option -->
	<div class="col-12 mb-2">
		<!-- [ {poll_option.POLL_OPTION_RESULT} ]&nbsp;[ {poll_option.POLL_OPTION_PERCENT_VALUE} ]&nbsp;{poll_option.POLL_OPTION_CAPTION}<br />{poll_option.POLL_PROGRESS_BAR} -->
		( {poll_option.POLL_OPTION_RESULT} ) ( {poll_option.POLL_OPTION_PERCENT_VALUE} ) {poll_option.POLL_OPTION_CAPTION}
		<div class="progress" style="height: 3px">
		  <div class="progress-bar" role="progressbar" style="width: {poll_option.POLL_OPTION_PERCENT_VALUE};" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
		</div>
	</div>
	<!-- END poll_option -->

</div>