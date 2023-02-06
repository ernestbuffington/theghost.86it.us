<script>
jQuery.noConflict(), jQuery(function($) 
{

	$( ".review-quote-button" ).click(function(e) {
		e.preventDefault();
		// var post_id = $(this).data("post-id");
		// <!-- BEGIN postrow -->
		// var messages_{postrow.U_POST_ID} =  "[quote=\"{postrow.EXT_POSTER_NAME}\";p=\"{postrow.U_POST_ID}\"]\n{postrow.PLAIN_MESSAGE}\n[/quote]";
		// <!-- END postrow -->
		// var message = messages_+post_id;
		// console.log( message );
		var post_id = $(this).data("post-id");
		var messages = new Array();
		<!-- BEGIN postrow -->
		messages[{postrow.U_POST_ID}] = '[quote=\"{postrow.EXT_POSTER_NAME}\";p=\"{postrow.U_POST_ID}\"]\n{postrow.PLAIN_MESSAGE}\n[/quote]\n';
		<!-- END postrow -->
		// $(this).parent().find('.textarea__posting_area').val()
		var box = $('form[name="post"]').find('textarea[name="message"]');
		if ( box.val() ) {
			box.val(box.val() +'\n' + messages[post_id]);
		} else {
			box.val(messages[post_id]);
		}
    	
    	box.focus();
    	// $('form[name="post"]').find('textarea[name="message"]').val()
		console.log( box );
	});

	
});

</script>

<section class="mt-3 topic_review__body_wrapper">

	<div class="container-fluid px-0">

		<div class="row p-3 mx-0 justify-content-center topic_review__title">{L_TOPIC_REVIEW}</div>

		<div class="col-12 overflow-auto" style="max-height: 400px;">

			<!-- BEGIN postrow -->
			<div class="topic_review_wrap mb-2">
				<div class="row topic_review__author_post_info">

					<div class="col-2 p-2 d-none d-lg-block topic_review__author_name_wrap">
						<a href="{postrow.PROFILE_URL}">{postrow.POSTER_NAME}</a>
					</div>
					<div class="col-10 p-2 d-none d-lg-block topic_review__author_posted_on">
						<div class="viewtopic__posted_date" style="float: left">{L_POSTED}:&nbsp;{postrow.POST_DATE}</div>
						<div class="viewtopic__options" style="float: right">
							<a class="btn btn-dark review-quote-button" href="{postrow.QUOTE_URL}" data-post-id="{postrow.U_POST_ID}"><i class="fas fa-quote-right"></i></a>
						</div>
					</div>

					<div class="col-12 d-block d-lg-none topic_review__author_pane_top">
						<div class="col-2 p-0 viewtopic__avatar_wrap align-middle">
							<!-- BEGIN switch_showavatars -->
							<a href="{postrow.PROFILE_URL}">{postrow.POSTER_AVATAR}</a>
							<!-- END switch_showavatars -->
						</div>
						<div class="col-10 p-0 d-block d-lg-none viewtopic__author_pane_top_info">
							<div class="col-12 pr-0"><a href="{postrow.PROFILE_URL}">{postrow.POSTER_NAME}</a></div>
							<div class="col-12 pr-0">{postrow.POST_DATE}</div>
						</div>
					</div>

				</div>

				<div class="row d-block d-lg-none topic_review_quote_btn">
					<a class="col-12 btn btn-outline-primary review-quote-button" href="{postrow.QUOTE_URL}" data-post-id="{postrow.U_POST_ID}"><i class="fas fa-quote-right"></i></a>
				</div>

				<div class="row">
					
					<div class="col-12 viewtopic__body p-3">
						<div class="col-12 px-0">{postrow.MESSAGE}</div>
						<div class="col-12 px-0">{postrow.ATTACHMENTS}</div>
					</div>
				</div>
			</div>
			<!-- END postrow -->

		</div>

	</div>

</section>