<section class="index__body_glance">

	<div class="container-fluid glance-container">

		<!-- BEGIN switch_glance_news -->
		<div class="row"<!-- BEGIN switch_news_off --> style="display: none;"<!-- END switch_news_off -->>

			<div class="col-12 col-lg-6 phpbb-forum-info forum-glance">{NEWS_HEADING}</div>
			<div class="col-2 phpbb-forum-topic-count forum-glance d-none d-lg-block">{L_FORUM}</div>
			<div class="col-1 phpbb-topic-reply-count forum-glance d-none d-lg-block">{L_REPLIES}</div>
			<div class="col-3 phpbb-forum-freshness forum-glance d-none d-lg-block">{L_LASTPOST}</div>

		</div>
		<!-- END switch_glance_news -->


		<!-- BEGIN news -->
		<div class="row phpbb-forum forum-glance farscape">

			<div class="col-12 col-lg-6">
				<a href="{news.TOPIC_LINK}">{news.TOPIC_TITLE}</a><br />{news.TOPIC_POSTER}
			</div>
			<div class="col-2 d-none d-lg-block">
				<a{news.FORUM_COLOR} href="{news.FORUM_LINK}">{news.FORUM_TITLE}</a>
			</div>
			<div class="col-1 d-none d-lg-block text-center">{news.TOPIC_REPLIES}</div>
			<div class="col-3 d-none d-lg-block phpbb-forum-row-freshness">{news.LAST_POST_IMG}{news.TOPIC_TIME}<br />{news.LAST_POSTER}</div>

		</div>
		<!-- END news -->

		<!-- BEGIN switch_glance_recent -->
		<div class="row">

			<div class="col-12 col-lg-6 phpbb-forum-info forum-glance">				
				<div class="row">					
					<div class="col-6">{RECENT_HEADING}</div>
					<div class="col-6">{switch_glance_recent.PREV_URL}&nbsp;&nbsp;{switch_glance_recent.NEXT_URL}</div>
				</div>
			</div>
			<div class="col-2 phpbb-forum-topic-count forum-glance d-none d-lg-block">{L_FORUM}</div>
			<div class="col-1 phpbb-topic-reply-count forum-glance d-none d-lg-block">{L_REPLIES}</div>
			<div class="col-3 phpbb-forum-freshness forum-glance d-none d-lg-block">{L_LASTPOST}</div>

		</div>
		<!-- END switch_glance_recent -->

		<!-- BEGIN recent -->
		<div class="row phpbb-forum forum-glance">

			<div class="col-12 col-lg-6"><a href="{recent.TOPIC_LINK}">{recent.TOPIC_TITLE}</a><br />{recent.TOPIC_POSTER}</div>
			<div class="col-2 d-none d-lg-block"><a{recent.FORUM_COLOR} href="{recent.FORUM_LINK}">{recent.FORUM_TITLE}</a></div>
			<div class="col-1 d-none d-lg-block text-center">{recent.TOPIC_REPLIES}</div>
			<div class="col-3 d-none d-lg-block phpbb-forum-row-freshness">{recent.LAST_POST_IMG} {recent.LAST_POST_TIME}<br />{recent.LAST_POSTER}</div>

		</div>
		<!-- END recent -->

	</div>

</section>