<div class="divider"></div>
<!-- BEGIN attach -->

<!-- BEGIN denyrow -->
<div class="col-12 mb-1">
    <div class="alert alert-danger" role="alert">{postrow.attach.denyrow.L_DENIED}</div>
</div>
<!-- END denyrow -->

<!-- BEGIN cat_images -->


<!-- END cat_images -->

<!-- BEGIN cat_thumb_images -->
<div class="col-12 mb-1 px-0 attachment___thumbs_body">
    <img class="img-responsive attachment__image" src="{postrow.attach.cat_thumb_images.IMG_THUMB_SRC}" alt="{postrow.attach.cat_thumb_images.DOWNLOAD_NAME}" border="0" />
</div>
<div class="col-12 mb-1 px-0">
    <a class="btn btn-dark text-truncate mw-100" href="{postrow.attach.cat_thumb_images.IMG_SRC}" title="{postrow.attach.cat_thumb_images.COMMENT}">
        <i class="fas fa-image"></i> {postrow.attach.cat_thumb_images.DOWNLOAD_NAME} ( {postrow.attach.cat_thumb_images.FILESIZE} {postrow.attach.cat_thumb_images.SIZE_VAR} - {postrow.attach.cat_thumb_images.L_DOWNLOADED_VIEWED} {postrow.attach.cat_thumb_images.L_DOWNLOAD_COUNT} )
    </a>
</div>
<!-- END cat_thumb_images -->

<!-- BEGIN attachrow -->
<div class="col-12 mb-1 px-0 attachment___file_body">
    <a class="btn btn-dark" href="{postrow.attach.attachrow.U_DOWNLOAD_LINK}" {postrow.attach.attachrow.TARGET_BLANK}>
        <i class="fa fa-download" aria-hidden="true"></i> {postrow.attach.attachrow.DOWNLOAD_NAME} ( {postrow.attach.attachrow.FILESIZE} {postrow.attach.attachrow.SIZE_VAR} - {postrow.attach.attachrow.L_DOWNLOADED_VIEWED} {postrow.attach.attachrow.L_DOWNLOAD_COUNT} )
    </a>
</div>
<!-- END attachrow -->

<!-- END attach -->