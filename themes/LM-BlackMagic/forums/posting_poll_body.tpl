<div class="row justify-content-center mb-4 mt-4"><span class="messages__posting_title">{L_ADD_A_POLL}</span></div>

<div class="row" style="line-height: 30px; padding: 4px;">
	<label for="poll_title" class="col-sm-12 col-lg-6 px-0 col-form-label">{L_POLL_QUESTION}</label>
	<div class="col-12 col-lg-6 px-0"><input class="col-12" type="text" name="poll_title" id="poll_title" value="{POLL_TITLE}"></div>
</div>

<!-- BEGIN poll_option_rows -->
<div class="row" style="line-height: 30px; padding: 4px;">
	<label for="poll_option_text[{poll_option_rows.S_POLL_OPTION_NUM}]" class="col-sm-12 col-lg-6 px-0 col-form-label">{L_POLL_OPTION}</label>
	<div class="col-12 col-lg-6 px-0">
		<input class="col-12 col-lg-7 mb-2 mb-lg-0" type="text" name="poll_option_text[{poll_option_rows.S_POLL_OPTION_NUM}]" id="poll_option_text[{poll_option_rows.S_POLL_OPTION_NUM}]" value="{poll_option_rows.POLL_OPTION}">
		<input class="col-12 col-lg-2 mb-2 mb-lg-0 btn btn-outline-success" type="submit" name="edit_poll_option" id="edit_poll_option" value="{L_UPDATE_OPTION}" />
		<input class="col-12 col-lg-2 btn btn-outline-danger" type="submit" name="del_poll_option[{poll_option_rows.S_POLL_OPTION_NUM}]" id="del_poll_option[{poll_option_rows.S_POLL_OPTION_NUM}]" value="{L_DELETE_OPTION}" />
	</div>
</div>
<!-- END poll_option_rows -->

<div class="row" style="line-height: 30px; padding: 4px;">
	<label for="add_poll_option_text" class="col-sm-12 col-lg-6 px-0 col-form-label">{L_POLL_OPTION}</label>
	<div class="col-12 col-lg-6 px-0">
		<!-- <input type="text" name="add_poll_option_text" size="50" maxlength="255" class="post" value="{ADD_POLL_OPTION}" /> &nbsp;<input type="submit" name="add_poll_option" value="{L_ADD_OPTION}" class="liteoption" /> -->
		<input class="col-12 col-lg-9 mb-2 mb-lg-0" type="text" name="add_poll_option_text" id="add_poll_option_text" maxlength="255" value="{ADD_POLL_OPTION}" />
		<input class="col-12 col-lg-3 btn btn-dark" type="submit" name="add_poll_option" value="{L_ADD_OPTION}" />
	</div>
</div>

<div class="row" style="line-height: 30px; padding: 4px;">
	<label for="poll_length" class="col-sm-12 col-lg-6 px-0 col-form-label">{L_POLL_LENGTH}</label>
	<div class="col-12 col-lg-6 px-0">
		<input class="col-8 col-lg-9 mb-2 mb-lg-0" type="text" name="poll_length" id="poll_length" maxlength="255" value="{POLL_LENGTH}" /> {L_DAYS}<br /><small>{L_POLL_LENGTH_EXPLAIN}</small>
	</div>
</div>

<div class="row" style="line-height: 30px; padding: 4px;">
	<label for="poll_view_toggle" class="col-sm-12 col-lg-6 px-0 col-form-label">{L_POLL_TOGGLE}</label>
	<div class="col-12 col-lg-6 px-0">
		<input class="align-middle" type="checkbox" name="poll_view_toggle" id="poll_view_toggle" value="1" {POLL_TOGGLE_CHECKED} /> <small>{L_POLL_TOGGLE_EXPLAIN}</small>
	</div>
</div>

<!-- BEGIN switch_poll_delete_toggle -->
<div class="row" style="line-height: 30px; padding: 4px;">
	<label for="poll_delete" class="col-sm-12 col-lg-6 px-0 col-form-label">{L_POLL_DELETE}</label>
	<div class="col-12 col-lg-6 px-0">
		<input class="align-middle" type="checkbox" name="poll_delete" id="poll_delete" />
	</div>
</div>
<!-- END switch_poll_delete_toggle -->

<div class="divider"></div>