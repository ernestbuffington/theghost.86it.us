<!-- <tr>
  <td class="catHead" colspan="2" style="height: 30px; text-align: center;">{L_ADD_ATTACH_TITLE}</td>
</tr>
<tr>
  <td class="row1" colspan="2" style="text-align: center">
  	{L_ADD_ATTACH_EXPLAIN}
  	<br />
  	{RULES}
  </td>
</tr>
<tr> 
  <td class="row1">{L_FILE_NAME}</td> 
  <td class="row2"><input type="file" name="fileupload" maxlength="{FILESIZE}" value="" class="post" style="width: 85%;" /></td> 
</tr> 
<tr> 
  <td class="row1">{L_FILE_COMMENT}</td> 
  <td class="row2">
  	<textarea name="filecomment" wrap="virtual" class="post liteoption" style="height: 100px; min-height: 100px; padding: 5px; resize: vertical; width: 85%;">{FILE_COMMENT}</textarea>
  	<br />
  	<input type="submit" name="add_attachment" value="{L_ADD_ATTACHMENT}" class="liteoption" />
  </td> 
</tr> -->

<div class="divider"></div>

<div class="row justify-content-center mb-2 mt-4"><span class="messages__posting_title">{L_ADD_ATTACH_TITLE}</span></div>

<div class="row" style="line-height: 30px; padding: 4px;">
	<div class="col-12 col-lg-6">{L_FILE_NAME}</div>
	<div class="col-12 col-lg-6"><input type="file" name="fileupload" maxlength="{FILESIZE}" value="" /></div>
</div>

<div class="row" style="line-height: 30px; padding: 4px;">
	<div class="col-12 col-lg-6">{L_FILE_COMMENT}</div>
	<div class="col-12 col-lg-6"><textarea class="col-12" name="filecomment" wrap="virtual" style="height: 100px; min-height: 100px; resize: vertical;">{FILE_COMMENT}</textarea></div>
</div>

<div class="row text-right" style="line-height: 30px; padding: 4px;">
	<div class="col-12"><input class="col-12 col-lg-2 btn btn-dark" type="submit" name="add_attachment" value="{L_ADD_ATTACHMENT}" /></div>
</div>
   
<div class="divider"></div>