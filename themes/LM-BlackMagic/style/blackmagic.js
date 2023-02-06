jQuery.noConflict(), jQuery(function($) 
{
	var clipboard = new ClipboardJS('[data-clipboard-btn]');
	clipboard.on('success', function(e)
	{
		var toastTxt = $('[data-clipboard-btn]').data( 'toast-text' );
		// console.log(e);
		bootoast.toast({
			position: 'rightTop', 	/* bottom, leftBottom, rightBottom, top, rightTop, leftTop */
			message: toastTxt
		});
	});

    clipboard.on('error', function(e)
    {
        console.warn(e);
    });

	$(".image-radio").each(function(){
        if($(this).find('input[type="checkbox"]').first().attr("checked"))
        {
        	console.log('I have now been checked!');
            $(this).addClass('image-radio-checked');
        }else{
            $(this).removeClass('image-radio-checked');
        }
    });

    // sync the input state
    $(".image-radio").on("click", function(e)
    {
        $(this).removeClass('image-radio-checked');
        $(this).addClass('image-radio-checked');
        var $radio = $(this).find('input[type="checkbox"]');
        $radio.prop("checked", !$radio.prop("checked"));
        e.preventDefault();
    });

	/**
	 * Remove the back to top button
	 */
	$(".bm-back-to-top").click(function(e)
	{
		e.preventDefault();
		$("html, body").animate({
			scrollTop: 0
		}, 400);
	});

	$(window).on("scroll load", function() {
		var y = $(this).scrollTop();
		if (y > 570) {
			$(".bm-back-to-top").addClass("btt-visible");
		} else {
			$(".bm-back-to-top").removeClass("btt-visible");
		}
	});

	// $('#cur_password, #new_password, #password_confirm').click(function (e){
	$('.pass-autocomplete-off').click(function (e){
		e.preventDefault();
		$this = $('.pass-autocomplete-off');
		if ( $this.prop('readonly') == true ) {
			$this.prop('readonly', false);
		} else {
			$this.prop('readonly', true);
		}
	});


	$('[data-carousel-nav]').click(function (e){
		e.preventDefault()
	});

	/**
	 * Add bootstrap tooltip to all anchors
	 */
	$( 'a.btn' ).each(function() 
	{
		var $this = $(this);
		if ( $this.attr('title') )
		{
			$this.attr('data-toggle', 'btn-tooltip').attr('data-placement', 'top');
		}
	});

	$( '.forum-emoticon' ).each(function() 
	{
		var $this = $(this);
		if ( $this.attr('title') )
		{
			$this.attr('data-toggle', 'btn-tooltip').attr('data-placement', 'top');
		}
	});

	$('.blackmagic-up-to-date, .blackmagic-out-of-date').attr('data-toggle', 'btn-tooltip').attr('data-placement', 'top');

	$('[data-toggle="btn-tooltip"]').tooltip();

	$('input[type="submit"]').addClass('btn btn-dark');

    $('input[name="help"]').addClass('form-control');
    $('form[name="post"] textarea').addClass('form-control');

});