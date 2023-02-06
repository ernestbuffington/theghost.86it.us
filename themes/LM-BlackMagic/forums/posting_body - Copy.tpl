<section class="posting__body_wrapper">

	<nav aria-label="breadcrumb" class="d-none d-xl-block px-0">
		<ol class="breadcrumb ">
			<li class="breadcrumb-item"><a href="{U_INDEX}"><i class="fas fa-home"></i></a></li>
			<!-- BEGIN switch_not_privmsg -->

			<!-- IF PARENT_FORUM --><li class="breadcrumb-item"><a href="{U_VIEW_PARENT_FORUM}">{PARENT_FORUM_NAME}</a></li><!-- ENDIF -->

			<li class="breadcrumb-item" aria-current="page"><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></li>

			<!-- BEGIN reply_mode --><li class="breadcrumb-item active" aria-current="page"><a href="{U_VIEW_TOPIC}">{TOPIC_SUBJECT}</a></li><!-- END reply_mode -->

			<!-- END switch_not_privmsg -->
		</ol>
	</nav>

	<div class="container-fluid">		

		{POST_PREVIEW_BOX}

		<div class="row justify-content-center mt-4"><span class="messages__posting_title">{L_POST_A}</span></div>
		<form action="{S_POST_ACTION}" method="post" name="post" {S_FORM_ENCTYPE}>

			
			{ERROR_BOX}

			<div class="row" style="line-height: 30px; padding: 4px;">
				<!--
					This is not a error, the two fields below are clones of each other, they are just used in seperate areas of the website.
					But because of the way the forums are coded, the username is hidden posting a forum topic, but visible when posting a PM.
				-->

				<!-- BEGIN switch_username_select -->
				<!-- Below if the field for guests posting in the forums. -->
				<label for="username" class="col-sm-12 col-lg-6 px-0 col-form-label">{L_USERNAME}</label>
				<div class="col-sm-12 col-lg-6 px-0"><input class="col-12" type="text" name="username" id="username" value="{USERNAME}" required></div>
				<!-- END switch_username_select -->				
				
				<!-- BEGIN switch_privmsg -->
				<!-- Below is the username field for posting a private message. -->
				<label for="username" class="col-sm-12 col-lg-6 px-0 col-form-label">{L_USERNAME}</label>
				<div class="col-sm-12 col-lg-6 px-0"><input class="col-12" type="text" name="username" id="username" value="{USERNAME}" required></div>
				<!-- END switch_privmsg -->
				
				<!-- BEGIN switch_groupmsg -->
				<!-- MOD: Mass Private group message -->
				<label for="username" class="col-sm-12 col-lg-6 px-0 col-form-label">{L_USERNAME}</label>
				<div class="col-sm-12 col-lg-6 px-0">{USERNAME}</div>
  				<!-- END switch_groupmsg -->

			</div>

			<div class="row" style="line-height: 30px; padding: 4px;">
				<label for="username" class="col-sm-12 col-lg-6 px-0 col-form-label">{L_SUBJECT}</label>
				<div class="col-sm-12 col-lg-6 px-0"><input class="col-12" type="text" name="subject" id="subject" value="{SUBJECT}" required></div>
			</div>

			<!-- IF S_SHOW_TYPE_SELECT -->
			<div class="row" style="line-height: 30px; padding: 4px;">
				<div class="col-12 col-lg-6 px-0">{L_TYPE_TOGGLE}</div>
				<div class="col-12 col-lg-6 px-0">

					<select class="form-control" name="topictype" id="topictype">
						<option value="0"{S_IS_NORMAL}>{L_TYPE_NORMAL_TOPIC}</option>
						<!-- IF S_SHOW_TYPE_STICKY == true -->
						<option value="1"{S_IS_STICKY}>{L_TYPE_STICKY_TOPIC}</option>
						<!-- ENDIF -->

						<!-- IF S_SHOW_TYPE_ANNOUNCE == true -->
						<option value="2"{S_IS_ANNOUNCE}>{L_TYPE_ANNOUNCE_TOPIC}</option>
						<!-- ENDIF -->

						<!-- IF S_SHOW_TYPE_GLOBAL_ANNOUNCE == true -->
						<option value="3"{S_IS_GLOBAL_ANNOUNCE}>{L_TYPE_GLOBAL_ANNOUNCE_TOPIC}</option>
						<!-- ENDIF -->
					</select>

				</div>
			</div>
			<!-- ENDIF -->

			<!-- BEGIN switch_icon_checkbox -->
			<!-- IF ICONS_SHOWN != 0 -->
			<div class="row" style="line-height: 30px; padding: 4px;">

				<label for="post_icon" class="col-sm-12 col-lg-6 px-0 col-form-label">{L_ICON_TITLE}</label>
				<!-- <div class="row col-12 col-lg-6"> -->
					<!-- BEGIN row -->						
					<select class="col-12 col-lg-6" name="post_icon" id="post_icon">
						<!-- BEGIN cell -->
						<option data-icon="{switch_icon_checkbox.row.cell.ICON}" value="{switch_icon_checkbox.row.cell.ICON_ID}"{switch_icon_checkbox.row.cell.ICON_SELECTED}>{switch_icon_checkbox.row.cell.ICON_NAME}</option>		
						<!-- END cell -->
					</select>
					<!-- END row -->
				<!-- </div> -->
			</div>
			<!-- ENDIF -->
			
			<!-- END switch_icon_checkbox -->

			<div class="row" style="padding: 4px;">
				<label for="message" class="col-sm-12 col-lg-6 px-0 col-form-label">{L_MESSAGE_BODY}</label>
				<!-- <textarea id="message" name="message" class="col-12 textarea__posting_area" required="true">{MESSAGE}</textarea> -->
				{BB_BOX}
			</div>

			<div class="divider"></div>

			<div class="col-12 px-0 option-toggle">
				<a class="col-12 col-lg-3 btn btn-dark" data-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">Attachments and other options</a>
			</div>

			<!-- <div class="collapse multi-collapse" id="multiCollapseExample1"> -->
			<div  id="multiCollapseExample1">

				<div class="divider"></div>

				<!-- IF S_SHOW_TYPE_SELECT -->
				<div class="row" style="line-height: 30px; padding: 4px;">
					<div class="col-12 col-lg-6">{L_TYPE_TOGGLE}</div>
					<div class="col-12 col-lg-6">

						<select class="form-control" name="topictype" id="topictype">
							<option value="0"{S_IS_NORMAL}>{L_TYPE_NORMAL_TOPIC}</option>
							<!-- IF S_SHOW_TYPE_STICKY == true -->
							<option value="1"{S_IS_STICKY}>{L_TYPE_STICKY_TOPIC}</option>
							<!-- ENDIF -->

							<!-- IF S_SHOW_TYPE_ANNOUNCE == true -->
							<option value="2"{S_IS_ANNOUNCE}>{L_TYPE_ANNOUNCE_TOPIC}</option>
							<!-- ENDIF -->

							<!-- IF S_SHOW_TYPE_GLOBAL_ANNOUNCE == true -->
							<option value="3"{S_IS_GLOBAL_ANNOUNCE}>{L_TYPE_GLOBAL_ANNOUNCE_TOPIC}</option>
							<!-- ENDIF -->
						</select>

					</div>
				</div>
				<div class="divider"></div>
				<!-- ENDIF -->

				<div class="row" style="line-height: 30px; padding: 4px;">

					<div class="col-sm-12 col-lg-6">{L_OPTIONS}</div>
					<div class="col-sm-12 col-lg-6">
						<!-- BEGIN switch_html_checkbox -->
			        	<!-- <input type="checkbox" name="disable_html" {S_HTML_CHECKED} value="ON" /> {L_DISABLE_HTML} -->
						<div class="col-12 custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" name="disable_html" id="disable_html" value="ON" {S_HTML_CHECKED}>
							<label class="custom-control-label" for="disable_html">{L_DISABLE_HTML}</label>
						</div>
			        	<!-- END switch_html_checkbox -->

			        	<!-- BEGIN switch_bbcode_checkbox -->
		        		<!-- <input type="checkbox" name="disable_bbcode" {S_BBCODE_CHECKED} value="ON" /> {L_DISABLE_BBCODE} -->
		        		<div class="col-12 custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" name="disable_bbcode" id="disable_bbcode" value="ON" {S_BBCODE_CHECKED}>
							<label class="custom-control-label" for="disable_bbcode">{L_DISABLE_BBCODE}</label>
						</div>
		        		<!-- END switch_bbcode_checkbox -->

		        		<!-- BEGIN switch_smilies_checkbox -->
		        		<!-- <input type="checkbox" name="disable_smilies" {S_SMILIES_CHECKED} value="ON" /> {L_DISABLE_SMILIES} -->
		        		<div class="col-12 custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" name="disable_smilies" id="disable_smilies" value="ON" {S_SMILIES_CHECKED}>
							<label class="custom-control-label" for="disable_smilies">{L_DISABLE_SMILIES}</label>
						</div>
		        		<!-- END switch_smilies_checkbox -->

		        		<!-- BEGIN switch_signature_checkbox -->
	        			<!-- <br /><input type="checkbox" name="attach_sig" {S_SIGNATURE_CHECKED} value="ON" /> {L_ATTACH_SIGNATURE} <span class="gensmall">{L_ATTACH_SIGNATURE_HELP}</span> -->
	        			<div class="col-12 custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" name="attach_sig" id="attach_sig" value="ON" {S_SIGNATURE_CHECKED}>
							<label class="custom-control-label" for="attach_sig">{L_ATTACH_SIGNATURE}</label>
						</div>
	        			<!-- END switch_signature_checkbox -->

	        			<!-- BEGIN switch_notify_checkbox -->
				        <!-- <br /><input type="checkbox" name="notify" {S_NOTIFY_CHECKED} value="ON" /> {L_NOTIFY_ON_REPLY} -->
				        <div class="col-12 custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" name="notify" id="notify" value="ON" {S_NOTIFY_CHECKED}>
							<label class="custom-control-label" for="notify">{L_NOTIFY_ON_REPLY}</label>
						</div>
				        <!-- END switch_notify_checkbox -->

				        <!-- BEGIN switch_delete_checkbox -->
				        <!-- <br /><input type="checkbox" name="delete" value="ON" /> {L_DELETE_POST} -->
				        <div class="col-12 custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" name="delete" id="delete" value="ON">
							<label class="custom-control-label" for="delete">{L_DELETE_POST}</label>
						</div>
				        <!-- END switch_delete_checkbox -->

				        <!-- BEGIN switch_topic_glance_priority -->
				        <!-- <br /><input type="checkbox" name="topic_glance_priority" {TOPIC_GLANCE_PRIORITY_CHECKED} value="1" /> {L_TOPIC_GLANCE_PRIORITY} <span class="gensmall">{L_TOPIC_GLANCE_PRIORITY_HELP}</span> -->
						<div class="col-12 custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" name="topic_glance_priority" id="topic_glance_priority" value="1" {TOPIC_GLANCE_PRIORITY_CHECKED}>
							<label class="custom-control-label" for="topic_glance_priority">{L_TOPIC_GLANCE_PRIORITY}</label>
						</div>
				        <!-- END switch_topic_glance_priority -->

				        <!-- BEGIN switch_lock_topic -->
				        <!-- <br /><input type="checkbox" name="lock" {S_LOCK_CHECKED} value="ON" /> {L_LOCK_TOPIC} -->
				        <div class="col-12 custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" name="lock" id="lock" value="ON">
							<label class="custom-control-label" for="lock">{L_LOCK_TOPIC}</label>
						</div>
				        <!-- END switch_lock_topic -->

				        <!-- BEGIN switch_unlock_topic -->
	        			<!-- <br /><input type="checkbox" name="unlock" {S_UNLOCK_CHECKED} value="ON" /> {L_UNLOCK_TOPIC} -->
	        			<div class="col-12 custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" name="unlock" id="unlock" value="ON" {S_UNLOCK_CHECKED}>
							<label class="custom-control-label" for="unlock">{L_UNLOCK_TOPIC}</label>
						</div>
	        			<!-- END switch_unlock_topic -->

	        			<!-- BEGIN switch_Welcome_PM -->
				        <!-- <br /><input type="checkbox" name="w_pm" {S_WELCOME_PM} value="ON" /> {L_WELCOME_PM} -->
				        <div class="col-12 custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" name="w_pm" id="w_pm" value="ON" {S_WELCOME_PM}>
							<label class="custom-control-label" for="w_pm">{L_WELCOME_PM}</label>
						</div>
				        <!-- END switch_Welcome_PM -->
		        	</div>

				</div>

				<!-- 
					Attachment Box
				-->
				{ATTACHBOX}

				<!--
					Poll Options
				-->
				{POLLBOX}

			</div>



			<!--
				Hidden form elements
			-->
			{S_HIDDEN_FORM_FIELDS}

			<!-- 
				Preview message & form Submit buttons
			-->
			<div class="row mt-2 justify-content-center" style="line-height: 30px; padding: 4px;">
				<input class="btn btn-dark mr-2 col-5 col-lg-2" type="submit" tabindex="5" name="preview" id="preview" value="{L_PREVIEW}" />
				<input class="btn btn-dark col-5 col-lg-2" type="submit" id="submit" accesskey="s" tabindex="6" name="post" value="{L_SUBMIT}" />
			</div>

		</form>

		{TOPIC_REVIEW_BOX}

	</div> <!-- /.container-fluid -->

</section>