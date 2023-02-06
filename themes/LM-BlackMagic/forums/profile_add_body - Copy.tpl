<section class="posting__edit_wrapper">

	<nav aria-label="breadcrumb" class="d-none d-xl-block px-0">
		<ol class="breadcrumb ">
			<li class="breadcrumb-item"><a href="{U_INDEX}"><i class="fas fa-home"></i></a></li>
			<li class="breadcrumb-item active">{L_PAGE_TITLE}</li>
		</ol>
	</nav>

	<div class="container-fluid px-0">

		<!-- <div class="row"> -->

			<div class="d-flex justify-content-center mb-4 mt-4"><span class="messages__posting_title">{L_PAGE_TITLE}</span></div>

			<ul class="nav nav-tabs profile-edit-tabs" id="myTab" role="tablist">
				<li class="nav-item"><a class="profile-edit-link nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">{L_REGISTRATION_INFO}</a></li>
				<li class="nav-item"><a class="profile-edit-link nav-link" id="password-tab" data-toggle="tab" href="#password" role="tab" aria-controls="password" aria-selected="false">{L_PROFILE_PASSWORD}</a></li>
				<li class="nav-item"><a class="profile-edit-link nav-link" id="public-info-tab" data-toggle="tab" href="#public-info" role="tab" aria-controls="public-info" aria-selected="false">{L_PROFILE_INFO}</a></li>
				<li class="nav-item"><a class="profile-edit-link nav-link" id="preferences-tab" data-toggle="tab" href="#preferences" role="tab" aria-controls="preferences" aria-selected="false">{L_PREFERENCES}</a></li>			  
				<li class="nav-item"><a class="profile-edit-link nav-link" id="avatar-tab" data-toggle="tab" href="#avatar" role="tab" aria-controls="avatar" aria-selected="false">{L_AVATAR_PANEL}</a></li>
				<li class="nav-item"><a class="profile-edit-link nav-link" href="{SIG_EDIT_LINK}">{SIG_BUTTON_DESC}</a></li>
			</ul>

			<form action="{S_PROFILE_ACTION}" {S_FORM_ENCTYPE} method="post" name="edit_profile">
			<div class="profile-edit-tab-pane tab-content p-3" id="myTabContent">

				<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
					
					<div class="row mx-0 mb-3">
						<label for="username" class="col-12 col-lg-6 px-0">{L_USERNAME}</label>
						<div class="col-12 col-lg-6 px-0"><input class="col-12" type="text" name="username" id="username" value="{USERNAME}"></div>
					</div>

					<div class="row mx-0 mb-3">
						<label for="rname" class="col-12 col-lg-6 px-0">{L_NAME}</label>
						<div class="col-12 col-lg-6 px-0"><input class="col-12" type="text" name="rname" id="rname" value="{RNAME}"></div>
					</div>

					<div class="row mx-0 mb-3">
						<label for="email" class="col-12 col-lg-6 px-0">{L_EMAIL_ADDRESS}</label>
						<div class="col-12 col-lg-6 px-0"><input class="col-12" type="text" name="email" id="email" value="{EMAIL}"></div>
					</div>

					<!-- gender selection -->
					<div class="row mx-0 mb-3">
						<label for="gender" class="col-12 col-lg-6 px-0">{L_GENDER}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="gender" id="gender">
								<option value="1" {GENDER_MALE_SELECTED}>Male</option>
								<option value="2" {GENDER_FEMALE_SELECTED}>Female</option>
								<option value="0" {GENDER_NO_SPECIFY_SELECTED}>Unspecified</option>
							</select>
						</div>
					</div>

					<div class="row mx-0 birthday-select">
						<label for="bday_day" class="col-12 col-lg-6 px-0">{L_BIRTHDAY}</label>
						
						<div class="col-12 col-lg-1 px-0 mb-0 mb-lg-1 bday-wrap">
							<!-- BEGIN birthday_required -->
      						<input type="text" class="form-control" name="bday_day" id="bday_day" placeholder="Day" value="{BDAY_DAY}" maxlength="2"{BIRTHDAY_REQUIRED}>
      						<!-- END birthday_required -->
      						<!-- BEGIN birthday_optional -->
      						<input type="text" class="form-control" name="bday_day" id="bday_day" placeholder="Day" value="{BDAY_DAY}" maxlength="2">
      						<!-- END birthday_optional -->
    					</div>

    					<div class="col-12 col-lg-2 px-0 bday-month-wrap">
    						<!-- BEGIN birthday_required -->
							<select class="form-control" name="bday_month" id="bday_month"{BIRTHDAY_REQUIRED}>
							<!-- END birthday_required -->
							<!-- BEGIN birthday_optional -->
							<select class="form-control" name="bday_month" id="bday_month">
							<!-- END birthday_optional -->
								<option value="0"{MONTH_DEFAULT}>Month</option>
								<option value="1"{MONTH_JAN_SELECTED}>January</option>
								<option value="2"{MONTH_FEB_SELECTED}>Feburary</option>
								<option value="3"{MONTH_MAR_SELECTED}>March</option>
								<option value="4"{MONTH_APR_SELECTED}>April</option>
								<option value="5"{MONTH_MAY_SELECTED}>May</option>
								<option value="6"{MONTH_JUN_SELECTED}>June</option>
								<option value="7"{MONTH_JUL_SELECTED}>July</option>
								<option value="8"{MONTH_AUG_SELECTED}>August</option>
								<option value="9"{MONTH_SEP_SELECTED}>September</option>
								<option value="10"{MONTH_OCT_SELECTED}>October</option>
								<option value="11"{MONTH_NOV_SELECTED}>November</option>
								<option value="12"{MONTH_DEC_SELECTED}>December</option>
							</select>
    					</div>

    					<div class="col-12 col-lg-1 px-0">
    						<!-- BEGIN birthday_required -->
      						<input type="text" class="form-control" name="bday_year" id="bday_year" placeholder="Year" value="{BDAY_YEAR}" maxlength="4"{BIRTHDAY_YEAR_REQUIRED}>
      						<!-- END birthday_required -->
      						<!-- BEGIN birthday_optional -->
      						<input type="text" class="form-control" name="bday_year" id="bday_year" placeholder="Year" value="{BDAY_YEAR}" maxlength="4">
      						<!-- END birthday_optional -->
    					</div>

					</div>
					
				</div>

				<div class="tab-pane fade" id="password" role="tabpanel" aria-labelledby="password-tab">

					<!-- BEGIN switch_edit_profile -->
					<div class="row mx-0 mb-1">
						<label for="cur_password" class="col-12 col-lg-6 px-0">{L_CURRENT_PASSWORD}</label>
						<div class="col-12 col-lg-6 px-0">
							<input class="col-12 pass-autocomplete-off" type="password" name="cur_password" id="cur_password" value="{CUR_PASSWORD}" readonly>
							<small id="passwordHelpBlock" class="form-text text-muted">{L_CONFIRM_PASSWORD_EXPLAIN}</small>
						</div>
					</div>
					<!-- END switch_edit_profile -->

					<!-- BEGIN switch_ya_merge -->
					<div class="row mx-0 mb-1">
						<label for="new_password" class="col-12 col-lg-6 px-0">{L_NEW_PASSWORD}</label>
						<div class="col-12 col-lg-6 px-0">
							<input class="col-12 pass-autocomplete-off" type="password" name="new_password" id="new_password" value="{NEW_PASSWORD}" readonly>
							<small id="passwordHelpBlock" class="form-text text-muted">{L_PASSWORD_IF_CHANGED}</small>
						</div>
					</div>

					<div class="row mx-0 mb-1">
						<label for="password_confirm" class="col-12 col-lg-6 px-0">{L_CONFIRM_PASSWORD}</label>
						<div class="col-12 col-lg-6 px-0">
							<input class="col-12 pass-autocomplete-off" type="password" name="password_confirm" id="password_confirm" value="{PASSWORD_CONFIRM}" readonly>
							<small id="passwordHelpBlock" class="form-text text-muted">{L_PASSWORD_CONFIRM_IF_CHANGED}</small>
						</div>
					</div>
					<!-- END switch_ya_merge -->

					<!-- BEGIN switch_silent_password -->
					<input type="hidden" name="new_password" value="{NEW_PASSWORD}" />
					<input type="hidden" name="password_confirm" value="{PASSWORD_CONFIRM}" />
					<!-- END switch_silent_password -->

				</div>

				<div class="tab-pane fade" id="public-info" role="tabpanel" aria-labelledby="public-info-tab">

					<div class="row mx-0">
						<label for="facebook" class="col-12 col-lg-6 px-0">{L_FACEBOOK}</label>
						<div class="col-12 col-lg-6 px-0">
							<input class="col-12" type="text" name="facebook" id="facebook" value="{FACEBOOK}">
							<small id="facebookHelpBlock" class="form-text text-muted">https://facebook.com/<span>face.book.2019</span></small>
						</div>
					</div>

					<div class="row mx-0 mb-3">
						<label for="user_flag" class="col-12 col-lg-6 px-0">{L_FLAG}</label>
						<div class="col-10 col-lg-5 px-0">
							<select class="user_from_flag_select" name="user_flag" id="user_flag">
								<option value="blank">{L_FLAG_SELECT}</option>
								<!-- BEGIN country_flags -->
								<option value="{country_flags.FLAG_NAME}"{country_flags.FLAG_SELECTED}>{country_flags.FLAG_NAME}</option>
								<!-- END country_flags -->
							</select>
						</div>
						<div class="col-2 col-lg-1 px-0 d-flex justify-content-center align-items-center"><span class="countries {FLAG_START}"></span></div>
					</div>

					<!-- BEGIN xdata -->

					<!-- BEGIN switch_is_location -->
					<div class="row mx-0 mb-3">
						<label for="location" class="col-12 col-lg-6 px-0">{L_LOCATION}</label>
						<div class="col-12 col-lg-6 px-0">
							<input class="col-12" type="text" name="location" id="location" value="{LOCATION}">
						</div>
					</div>
					<!-- END switch_is_location -->

					<!-- BEGIN switch_is_website -->
					<div class="row mx-0 mb-3">
						<label for="website" class="col-12 col-lg-6 px-0">{L_WEBSITE}</label>
						<div class="col-12 col-lg-6 px-0">
							<input class="col-12" type="url" name="website" id="website" value="{WEBSITE}">
						</div>
					</div>
					<!-- END switch_is_website -->

					<!-- BEGIN switch_is_occupation -->
					<div class="row mx-0 mb-3">
						<label for="occupation" class="col-12 col-lg-6 px-0">{L_OCCUPATION}</label>
						<div class="col-12 col-lg-6 px-0">
							<input class="col-12" type="text" name="occupation" id="occupation" value="{OCCUPATION}">
						</div>
					</div>
					<!-- END switch_is_occupation -->

					<!-- BEGIN switch_is_interests -->
					<div class="row mx-0 mb-3">
						<label for="interests" class="col-12 col-lg-6 px-0">{L_INTERESTS}</label>
						<div class="col-12 col-lg-6 px-0">
							<input class="col-12" type="text" name="interests" id="interests" value="{INTERESTS}">
						</div>
					</div>
					<!-- END switch_is_interests -->

					<!-- SIGNATURE WILL GO HERE -->

					<!-- BEGIN switch_type_date -->
					<div class="row mx-0 mb-3">
						<label for="{xdata.CODE_NAME}" class="col-12 col-lg-6 px-0">{xdata.NAME}</label>
						<div class="col-12 col-lg-6 px-0">
							<input class="col-12" type="text" name="{xdata.CODE_NAME}" id="{xdata.CODE_NAME}" maxlength="{xdata.MAX_LENGTH}" value="{xdata.VALUE}">
							<small id="{xdata.CODE_NAME}HelpBlock" class="form-text text-muted">{xdata.DESCRIPTION}</small>
						</div>
					</div>
					<!-- END switch_type_date -->

					<!-- BEGIN switch_type_text -->
					<div class="row mx-0 mb-3">
						<label for="{xdata.CODE_NAME}" class="col-12 col-lg-6 px-0">{xdata.NAME}</label>
						<div class="col-12 col-lg-6 px-0">
							<input class="col-12" type="text" name="{xdata.CODE_NAME}" id="{xdata.CODE_NAME}" maxlength="{xdata.MAX_LENGTH}" value="{xdata.VALUE}">
							<small id="{xdata.CODE_NAME}HelpBlock" class="form-text text-muted">{xdata.DESCRIPTION}</small>
						</div>
					</div>
					<!-- END switch_type_text -->

					<!-- BEGIN switch_type_textarea -->
					<div class="row mx-0 mb-3">
						<label for="{xdata.CODE_NAME}" class="col-12 col-lg-6 px-0">{xdata.NAME}</label>
						<div class="col-12 col-lg-6 px-0">
							<textarea name="{xdata.CODE_NAME}" id="{xdata.CODE_NAME}" class="col-12">{xdata.VALUE}</textarea>
							<small id="{xdata.CODE_NAME}HelpBlock" class="form-text text-muted">{xdata.DESCRIPTION}</small>
						</div>
					</div>
					<!-- END switch_type_textarea -->

					<!-- BEGIN switch_type_checkbox -->
					<div class="row mx-0 mb-3">
						<label for="{xdata.CODE_NAME}" class="col-12 col-lg-6 px-0">{xdata.NAME}</label>
						<div class="col-12 col-lg-6 px-0">
							<input type="checkbox" name="{xdata.CODE_NAME}" id="{xdata.CODE_NAME}" {xdata.switch_type_checkbox.CHECKED} />
							<small id="{xdata.CODE_NAME}HelpBlock" class="form-text text-muted">{xdata.DESCRIPTION}</small>
						</div>
					</div>
					<!-- END switch_type_checkbox -->

					<!-- BEGIN switch_type_select -->
					<div class="row mx-0 mb-3">
						<label for="{xdata.CODE_NAME}" class="col-12 col-lg-6 px-0">{xdata.NAME}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="{xdata.CODE_NAME}" id="{xdata.CODE_NAME}">
        						<!-- BEGIN options -->
        						<option value="{xdata.switch_type_select.options.OPTION}" {xdata.switch_type_select.options.SELECTED}>{xdata.switch_type_select.options.OPTION}</option>
        						<!-- END options -->
      						</select>
							<small id="{xdata.CODE_NAME}HelpBlock" class="form-text text-muted">{xdata.DESCRIPTION}</small>
						</div>
					</div>
					<!-- END switch_type_select -->

					<!-- BEGIN switch_type_radio -->
					<div class="row mx-0 mb-3">
						<label for="{xdata.CODE_NAME}" class="col-12 col-lg-6 px-0">{xdata.NAME}</label>
						<div class="col-12 col-lg-6 px-0">
							<!-- BEGIN options -->
							<input type="radio" name="{xdata.CODE_NAME}" id="{xdata.CODE_NAME}" value="{xdata.switch_type_radio.options.OPTION}" {xdata.switch_type_radio.options.CHECKED} />
							<label for="{xdata.CODE_NAME}">{xdata.switch_type_radio.options.OPTION}</label><br />
							<!-- END options -->
							<small id="{xdata.CODE_NAME}HelpBlock" class="form-text text-muted">{xdata.DESCRIPTION}</small>
						</div>
					</div>
					<!-- END switch_type_radio -->
					<!-- END xdata -->

				</div>

				<div class="tab-pane fade" id="preferences" role="tabpanel" aria-labelledby="preferences-tab">

					<!-- glance options will go here -->

					<div class="row mx-0 mb-3">
						<label for="hide_images" class="col-12 col-lg-6 px-0">{L_HIDE_IMAGES}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="hide_images" id="hide_images">
								<option value="1"{HIDE_IMAGES_YES_SELECTED}>{L_YES}</option>
								<option value="0"{HIDE_IMAGES_NO_SELECTED}>{L_NO}</option>
							</select>
						</div>
					</div>

					<div class="row mx-0 mb-3">
						<label for="viewemail" class="col-12 col-lg-6 px-0">{L_PUBLIC_VIEW_EMAIL}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="viewemail" id="viewemail">
								<option value="1"{VIEW_EMAIL_YES_SELECTED}>{L_YES}</option>
								<option value="0"{VIEW_EMAIL_NO_SELECTED}>{L_NO}</option>
							</select>
						</div>
					</div>

					<div class="row mx-0 mb-3">
						<label for="hideonline" class="col-12 col-lg-6 px-0">{L_HIDE_USER}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="hideonline" id="hideonline">
								<option value="1"{HIDE_USER_YES_SELECTED}>{L_YES}</option>
								<option value="0"{HIDE_USER_NO_SELECTED}>{L_NO}</option>
							</select>
						</div>
					</div>

					<div class="row mx-0 mb-3">
						<label for="birthday_display" class="col-12 col-lg-6 px-0">{L_BIRTHDAY_DISPLAY}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="birthday_display" id="birthday_display">
								<option value="{BIRTHDAY_ALL}"{BIRTHDAY_ALL_SELECTED}>{L_BIRTHDAY_ALL}</option>
								<option value="{BIRTHDAY_DATE}"{BIRTHDAY_DATE_SELECTED}>{L_BIRTHDAY_YEAR}</option>
								<option value="{BIRTHDAY_AGE}"{BIRTHDAY_AGE_SELECTED}>{L_BIRTHDAY_AGE}</option>
								<option value="{BIRTHDAY_NONE}"{BIRTHDAY_NONE_SELECTED}>{L_BIRTHDAY_NONE}</option>
							</select>
						</div>
					</div>

					<!-- BEGIN birthdays_greeting -->

					<!-- END birthdays_greeting -->

					<div class="row mx-0">
						<label for="notifyreply" class="col-12 col-lg-6 px-0">{L_NOTIFY_ON_REPLY}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="notifyreply" id="notifyreply">
								<option value="1"{NOTIFY_REPLY_YES_SELECTED}>{L_YES}</option>
								<option value="0"{NOTIFY_REPLY_NO_SELECTED}>{L_NO}</option>
							</select>
							<small id="notifyReplyHelpBlock" class="form-text text-muted">{L_NOTIFY_ON_REPLY_EXPLAIN}</small>
						</div>
					</div>

					<div class="row mx-0 mb-3">
						<label for="notifypm" class="col-12 col-lg-6 px-0">{L_NOTIFY_ON_PRIVMSG}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="notifypm" id="notifypm">
								<option value="1"{NOTIFY_PM_YES_SELECTED}>{L_YES}</option>
								<option value="0"{NOTIFY_PM_NO_SELECTED}>{L_NO}</option>
							</select>
						</div>
					</div>

					<!-- BEGIN switch_can_disable_mass_pm -->
					<div class="row mx-0">
						<label for="allow_mass_pm" class="col-12 col-lg-6 px-0">{L_ENABLE_MASS_PM}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="allow_mass_pm" id="allow_mass_pm">
								<option value="4"{ALLOW_MASS_PM_SELECTED}>{L_YES}</option>
								<option value="2"{ALLOW_MASS_PM_NOTIFY_SELECTED}>{L_NO}</option>
								<option value="0"{DISABLE_MASS_PM_SELECTED}>{L_NO_MASS_PM}</option>
							</select>
							<small id="allowMassHelpBlock" class="form-text text-muted">{L_ENABLE_MASS_PM_EXPLAIN}</small>
						</div>
					</div>
					<!-- END switch_can_disable_mass_pm -->
					<!-- BEGIN switch_can_not_disable_mass_pm -->
					<div class="row mx-0">
						<label for="allow_mass_pm" class="col-12 col-lg-6 px-0">{L_ENABLE_MASS_PM}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="allow_mass_pm" id="allow_mass_pm">
								<option value="4"{ALLOW_MASS_PM_SELECTED}>{L_YES}</option>
								<option value="2"{ALLOW_MASS_PM_NOTIFY_SELECTED}>{L_NO}</option>
							</select>
							<small id="allowMassHelpBlock" class="form-text text-muted">{L_ENABLE_MASS_PM_EXPLAIN}</small>
						</div>
					</div>
					<!-- END switch_can_not_disable_mass_pm -->

					<div class="row mx-0 mb-3">
						<label for="attachsig" class="col-12 col-lg-6 px-0">{L_ALWAYS_ADD_SIGNATURE}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="attachsig" id="attachsig">
								<option value="1"{ALWAYS_ADD_SIGNATURE_YES_SELECTED}>{L_YES}</option>
								<option value="0"{ALWAYS_ADD_SIGNATURE_NO_SELECTED}>{L_NO}</option>
							</select>
						</div>
					</div>

					<div class="row mx-0 mb-3">
						<label for="allowbbcode" class="col-12 col-lg-6 px-0">{L_ALWAYS_ALLOW_BBCODE}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="allowbbcode" id="allowbbcode">
								<option value="1"{ALWAYS_ALLOW_BBCODE_YES_SELECTED}>{L_YES}</option>
								<option value="0"{ALWAYS_ALLOW_BBCODE_NO_SELECTED}>{L_NO}</option>
							</select>
						</div>
					</div>

					<div class="row mx-0 mb-3">
						<label for="allowhtml" class="col-12 col-lg-6 px-0">{L_ALWAYS_ALLOW_HTML}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="allowhtml" id="allowhtml">
								<option value="1"{ALWAYS_ALLOW_HTML_YES_SELECTED}>{L_YES}</option>
								<option value="0"{ALWAYS_ALLOW_HTML_NO_SELECTED}>{L_NO}</option>
							</select>
						</div>
					</div>

					<div class="row mx-0 mb-3">
						<label for="allowsmilies" class="col-12 col-lg-6 px-0">{L_ALWAYS_ALLOW_SMILIES}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="allowsmilies" id="allowsmilies">
								<option value="1"{ALWAYS_ALLOW_SMILIES_YES_SELECTED}>{L_YES}</option>
								<option value="0"{ALWAYS_ALLOW_SMILIES_NO_SELECTED}>{L_NO}</option>
							</select>
						</div>
					</div>

					<div class="row mx-0 mb-3">
						<label for="showavatars" class="col-12 col-lg-6 px-0">{L_SHOW_AVATARS}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="showavatars" id="showavatars">
								<option value="1"{SHOW_AVATARS_YES_SELECTED}>{L_YES}</option>
								<option value="0"{SHOW_AVATARS_NO_SELECTED}>{L_NO}</option>
							</select>
						</div>
					</div>

					<div class="row mx-0 mb-3">
						<label for="showsignatures" class="col-12 col-lg-6 px-0">{L_SHOW_SIGNATURES}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="showsignatures" id="showsignatures">
								<option value="1"{SHOW_SIGNATURES_YES_SELECTED}>{L_YES}</option>
								<option value="0"{SHOW_SIGNATURES_NO_SELECTED}>{L_NO}</option>
							</select>
						</div>
					</div>

					<div class="row mx-0 mb-3">
						<label for="newsletter" class="col-12 col-lg-6 px-0">{L_NEWSLETTER}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="newsletter" id="newsletter">
								<option value="1"{NEWSLETTER_YES_SELECTED}>{L_YES}</option>
								<option value="0"{NEWSLETTER_NO_SELECTED}>{L_NO}</option>
							</select>
						</div>
					</div>

					<!-- BEGIN force_word_wrapping -->
					<div class="row mx-0">
						<label for="user_wordwrap" class="col-12 col-lg-6 px-0">{L_WORD_WRAP}</label>
						<div class="col-12 col-lg-6 px-0">
							<input class="col-12" type="number" name="user_wordwrap" id="user_wordwrap" min="50" max="99" value="{WRAP_ROW}">
							<small id="wordWrapHelpBlock" class="form-text text-muted">{L_WORD_WRAP_EXPLAIN}</small>
						</div>
					</div>
					<!-- END force_word_wrapping -->

					<div class="row mx-0 mb-3">
						<label class="col-12 col-lg-6 px-0">{L_BOARD_LANGUAGE}</label>
						<div class="col-12 col-lg-6 px-0">
							{LANGUAGE_SELECT}
						</div>
					</div>

					<div class="row mx-0 mb-3">
						<label class="col-12 col-lg-6 px-0">{L_BOARD_STYLE}</label>
						<div class="col-12 col-lg-6 px-0">
							{STYLE_SELECT}
						</div>
					</div>

					<div class="row mx-0 mb-3">

						<label for="time_mode" class="col-12 col-lg-6 px-0">{L_TIME_MODE}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="time_mode" id="time_mode">
								<optgroup label="{L_TIME_MODE_AUTO}">
									<option value="6" {TIME_MODE_FULL_PC_SELECTED}>{L_TIME_MODE_FULL_PC}</option>
									<option value="4" {TIME_MODE_SERVER_PC_SELECTED}>{L_TIME_MODE_SERVER_PC}</option>
									<option value="3" {TIME_MODE_FULL_SERVER_SELECTED}>{L_TIME_MODE_FULL_SERVER}</option>
								</optgroup>
								<optgroup label="{L_TIME_MODE_DST} ({L_TIME_MODE_MANUAL})">
									<option value="Lonestar" {TIME_MODE_MANUAL_DST_SELECTED}>{L_TIME_MODE_DST}: {L_YES}{L_TIME_MODE_DST_ON}</option>
									<option value="0" {TIME_MODE_MANUAL_SELECTED}>{L_TIME_MODE_DST}: {L_NO}{L_TIME_MODE_DST_OFF}</option>
									<option value="2" {TIME_MODE_SERVER_SWITCH_SELECTED}>{L_TIME_MODE_DST}: {L_TIME_MODE_DST_SERVER}</option>
								</optgroup>
							</select>
							<small id="timeManageHelpBlock" class="form-text text-muted">{L_TIME_MODE_TEXT}</small>
						</div>

					</div>

					<div class="row mx-0 mb-3">
						<label for="dst_time_lag" class="col-12 col-lg-6 px-0">{L_TIME_MODE_DST_TIME_LAG}</label>
						<div class="col-12 col-lg-6 px-0">
							<input class="col-10 col-lg-11" type="number" name="dst_time_lag" id="dst_time_lag" min="0" max="120" value="{DST_TIME_LAG}">&nbsp;{L_TIME_MODE_DST_MN}
						</div>
					</div>

					<div class="row mx-0 mb-3">
						<label class="col-12 col-lg-6 px-0">{L_TIME_MODE_TIMEZONE}</label>
						<div class="col-12 col-lg-6 px-0">
							{TIMEZONE_SELECT}
						</div>
					</div>




					<!-- <div class="row mx-0 mb-3">
						<label class="col-12 col-lg-6 px-0">{L_SHOW_QUICK_REPLY}</label>
						<div class="col-12 col-lg-6 px-0">
							{QUICK_REPLY_SELECT}
						</div>
					</div>

					<div class="row mx-0 mb-3">
						<label class="col-12 col-lg-6 px-0">{L_QUICK_REPLY_MODE}</label>
						<div class="col-12 col-lg-6 px-0">
							<input type="radio" name="quickreply_mode" value="0" {QUICK_REPLY_MODE_BASIC} />{L_QUICK_REPLY_MODE_BASIC}&nbsp;&nbsp;<input type="radio" name="quickreply_mode" value="1" {QUICK_REPLY_MODE_ADVANCED} />{L_QUICK_REPLY_MODE_ADVANCED}
						</div>
					</div>

					<div class="row mx-0 mb-3">
						<label class="col-12 col-lg-6 px-0">{L_OPEN_QUICK_REPLY}</label>
						<div class="col-12 col-lg-6 px-0">
							<input type="radio" name="open_quickreply" value="1" {OPEN_QUICK_REPLY_YES} />{L_YES}<input type="radio" name="open_quickreply" value="0" {OPEN_QUICK_REPLY_NO} />{L_NO}
						</div>
					</div> -->





					<!-- {L_SCEDITOR_PANEL} -->
					<!-- IF SCEDITOR_STATE == 'sceditor' -->
					<div class="row mx-0 mb-3">
						<label class="col-12 col-lg-6 px-0">{L_SCEDITOR_STATE}</label>
						<div class="col-12 col-lg-6 px-0">
							{SCEDITOR_SELECT}
						</div>
					</div>
					<!-- ENDIF -->

				</div>

				<div class="tab-pane fade" id="avatar" role="tabpanel" aria-labelledby="avatar-tab">
					
					<!-- BEGIN switch_avatar_block -->
					<div class="row mx-0 mb-3">
						<label for="dst_time_lag" class="col-12 col-lg-6 px-0">{L_CURRENT_IMAGE}</label>
						<div class="col-12 col-lg-6 px-0">
							{AVATAR}
							<small class="form-text text-muted">{L_AVATAR_EXPLAIN}</small>							
						</div>

					</div>

					<div class="row mx-0 mb-3">
						<label for="avatardel" class="col-12 col-lg-6 px-0">{L_DELETE_AVATAR}</label>
						<div class="col-12 col-lg-6 px-0">
							<select name="avatardel" id="avatardel">
								<option value="1">{L_YES}</option>
								<option value="0" selected>{L_NO}</option>
							</select>							
						</div>
					</div>

					<!-- BEGIN switch_avatar_local_upload -->
					<div class="row mx-0 mb-3">
						<label for="avatar" class="col-12 col-lg-6 px-0">{L_UPLOAD_AVATAR_FILE}</label>
						<div class="col-12 col-lg-6 px-0">
							<input type="hidden" name="MAX_FILE_SIZE" value="{AVATAR_SIZE}" />
							<input class="col-12 px-0" type="file" name="avatar" id="avatar">
						</div>
					</div>
					<!-- END switch_avatar_local_upload -->

					<!-- BEGIN switch_avatar_remote_upload -->
					<div class="row mx-0 mb-3">
						<label for="avatarurl" class="col-12 col-lg-6 px-0">{L_UPLOAD_AVATAR_URL}</label>
						<div class="col-12 col-lg-6 px-0">
							<input class="col-12" type="text" name="avatarurl" id="avatarurl">
							<small id="avatarURLHelpBlock" class="form-text text-muted">{L_UPLOAD_AVATAR_URL_EXPLAIN}</small>
						</div>
					</div>
					<!-- END switch_avatar_remote_upload -->

					<!-- BEGIN switch_avatar_remote_link -->
					<div class="row mx-0 mb-3">
						<label for="avatarremoteurl" class="col-12 col-lg-6 px-0">{L_LINK_REMOTE_AVATAR}</label>
						<div class="col-12 col-lg-6 px-0">
							<input class="col-12" type="text" name="avatarremoteurl" id="avatarremoteurl">
							<small id="avatarRemoteURLHelpBlock" class="form-text text-muted">{L_LINK_REMOTE_AVATAR_EXPLAIN}</small>
						</div>
					</div>
					<!-- END switch_avatar_remote_link -->

					<!-- BEGIN switch_avatar_local_gallery -->
					<div class="row mx-0 mb-3">
						<label for="avatargallery" class="col-12 col-lg-6 px-0">{L_AVATAR_GALLERY}</label>
						<div class="col-12 col-lg-6 px-0">
							<input class="col-md-auto btn btn-dark" type="submit" name="avatargallery" id="avatargallery" value="{L_SHOW_GALLERY}">
						</div>
					</div>
					<!-- END switch_avatar_local_gallery -->


					<!-- END switch_avatar_block -->

				</div>

			</div>
			{S_HIDDEN_FIELDS}
			<div class="row mx-0 mt-3 justify-content-center">
				<input class="col-md-auto btn btn-dark mr-lg-1 mb-2 mb-lg-0" type="submit" name="submit" value="{L_SUBMIT}" /><input class="col-md-auto btn btn-dark" type="reset" value="{L_RESET}" name="reset" />
			</div>
			</form>

		<!-- </div> -->

	</div>

</section>