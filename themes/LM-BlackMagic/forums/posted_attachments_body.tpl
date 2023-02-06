<div class="row justify-content-center mb-4 mt-4"><span class="messages__posting_title">{L_POSTED_ATTACHMENTS}</span></div>

<!-- BEGIN attach_row -->
<div class="row" style="line-height: 30px; padding: 4px;">
    <label for="poll_title" class="col-sm-12 col-lg-6 px-0 col-form-label">{L_FILE_NAME}</label>
    <div class="col-12 col-lg-6 px-0"><a class="col-12 btn btn-dark text-left text-truncate" href="{attach_row.U_VIEW_ATTACHMENT}" target="_blank">{attach_row.FILE_NAME}</a></div>
</div>

<div class="row" style="line-height: 30px; padding: 4px;">
    <label for="poll_title" class="col-sm-12 col-lg-6 px-0 col-form-label">{L_FILE_COMMENT}</label>
    <div class="col-12 col-lg-6 px-0"><textarea class="col-12 textarea__posting_attach_area" name="comment_list[]" cols="35">{attach_row.FILE_COMMENT}</textarea></div>
</div>

<div class="row" style="line-height: 30px; padding: 4px;">
    <label for="poll_title" class="col-sm-12 col-lg-6 px-0 col-form-label">{L_OPTIONS}</label>
    <div class="col-12 col-lg-6 px-0">
        <input type="submit" name="edit_comment[{attach_row.ATTACH_FILENAME}]" value="{L_UPDATE_COMMENT}" class="col-12 col-lg-3 btn btn-outline-primary mb-2 mb-lg-0" /> 
        <!-- BEGIN switch_update_attachment -->
        <input type="submit" name="update_attachment[{attach_row.ATTACH_ID}]" value="{L_UPLOAD_NEW_VERSION}" class="col-12 col-lg-3 btn btn-outline-warning mb-2 mb-lg-0" /> 
        <!-- END switch_update_attachment -->
        <input type="submit" name="del_attachment[{attach_row.ATTACH_FILENAME}]" value="{L_DELETE_ATTACHMENT}" class="col-12 col-lg-3 btn btn-outline-danger mb-2 mb-lg-0" /> 
        <!-- BEGIN switch_thumbnail -->
        <!-- <input type="submit" name="del_thumbnail[{attach_row.ATTACH_FILENAME}]" value="{L_DELETE_THUMBNAIL}" class="col-12 col-lg-3 btn btn-outline-danger" />  -->
        <!-- END switch_thumbnail -->
    </div>
</div>
{attach_row.S_HIDDEN}
<div class="divider"></div>
<!-- END attach_row -->
