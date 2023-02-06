<form method="POST" action="{S_POLL_ACTION}">
<div class="col-12 col-lg-6 mb-2 px-0 poll-body">
     <h4>{POLL_QUESTION}</h4>

    <div class="funkyradio mb-2">
    	<!-- BEGIN poll_option -->
        <div class="funkyradio-primary">
            <input type="radio" name="vote_id" id="vote_id_{poll_option.POLL_OPTION_ID}" value="{poll_option.POLL_OPTION_ID}" />
            <label for="vote_id_{poll_option.POLL_OPTION_ID}">{poll_option.POLL_OPTION_CAPTION}</label>
        </div>
        <!-- END poll_option -->

    </div>
    <div class="col-12 poll-button">
        <!-- IF L_VIEW_RESULTS -->
    	<a class="btn btn-secondary col-12 col-lg-3 mb-1 mb-lg-0" href="{U_VIEW_RESULTS}">{L_VIEW_RESULTS}</a>
        <!-- ENDIF -->
    	<input class="btn btn-primary col-12 col-lg-3" type="submit" name="submit" value="{L_SUBMIT_VOTE}" />
    </div>
</div>
{S_HIDDEN_FIELDS}
</form>