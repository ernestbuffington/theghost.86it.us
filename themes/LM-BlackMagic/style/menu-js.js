	/*global jQuery:false */
jQuery.noConflict();
//dropdown script
jQuery(document).ready(
  function() {

		var submenu = jQuery("ul.sub-menu");
		submenu.parent().addClass('dropdown');
		submenu.addClass('dropdown-menu');

		var submenu1 = jQuery("dropdown-menu.children");
		submenu1.parent().addClass('dropdown');
		submenu1.addClass('dropdown-menu');

		var children =  jQuery("dropdown-menu.children");
		children.parent().addClass('dropdown');

		var menuul = jQuery(".menu ul");
		menuul.parent().addClass('dropdown');

		var child = jQuery(".dropdown .dropdown-menu");
		child.removeClass("children");

		var link = jQuery(".dropdown > a");
		link.append('<i class="fas fa-angle-down caret"></i>');

		children.hover(
           function(){
               jQuery(this).parent().addClass('active');
           }, function(){
               jQuery(this).parent().removeClass('active');
           }
        );
        submenu.hover(
           function(){
               jQuery(this).parent().addClass('active');
           }, function(){
                 jQuery(this).parent().removeClass('active');
           }
        );

		var menu = jQuery(".menu ul");
       menu.addClass('nav');
       submenu1.removeClass("nav");

		var mainm = jQuery('.site-nav-container');

		mainm.css('display', 'block');

  }
);










/*Mobile menu parent click with submenu fix*/
if (jQuery(window).width() < 960) {
jQuery('.nav li a').click(function(e){
    if(!jQuery(this).parent().hasClass('active')) {
        jQuery('.nav li').removeClass('active');
        jQuery(this).parent().addClass('active');
        e.preventDefault();
    } else {
        return true;
    }
});
}




