nuke_jq(function($)
{
    "use strict"; // Start of use strict

    /* ---------------------------------------------
     Scripts initialization
     --------------------------------------------- */    
    $(document).ready(function(){           
        init_classic_menu();
    });

    $(window).resize(function(){
        
        init_classic_menu_resize();
        
    });

    /* --------------------------------------------
     Platform detect
     --------------------------------------------- */
    var mobileTest;
    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent)) {
        mobileTest = true;
        $("html").addClass("mobile");
    }
    else {
        mobileTest = false;
        $("html").addClass("no-mobile");
    }
    
    var mozillaTest;
    if (/mozilla/.test(navigator.userAgent)) {
        mozillaTest = true;
    }
    else {
        mozillaTest = false;
    }
    var safariTest;
    if (/safari/.test(navigator.userAgent)) {
        safariTest = true;
    }
    else {
        safariTest = false;
    }
    
    // Detect touch devices    
    if (!("ontouchstart" in document.documentElement)) {
        document.documentElement.className += " no-touch";
    }

    // Function for block height 100%
    function height_line(height_object, height_donor){
        height_object.height(height_donor.height());
        height_object.css({
            "line-height": height_donor.height() + "px"
        });
    }

    var mobile_nav = $(".mobile-nav");
    var desktop_nav = $(".desktop-nav");
    
    function init_classic_menu_resize(){
        
        // Mobile menu max height
        $(".mobile-on .desktop-nav > ul").css("max-height", $(window).height() - $(".main-nav").height() - 20 + "px");
        
        // Mobile menu style toggle
        if ($(window).width() <= 1200) {
            $(".main-nav").addClass("mobile-on");
        }
        else 
            if ($(window).width() > 1200) {
                $(".main-nav").removeClass("mobile-on");
                desktop_nav.show();
            }
    }

    /* ---------------------------------------------
     Nav panel classic
     --------------------------------------------- */
    var desktop_nav = $(".desktop-nav");    
    function init_classic_menu()
    {
        // Navbar sticky
        
        // $(".js-stick").sticky({
            // topSpacing: 0
        // });
        
        
        // height_line($(".inner-nav > ul > li > a"), $(".main-nav"));
        height_line(mobile_nav, $(".main-nav"));
        
        mobile_nav.css({
            "width": $(".main-nav").height() + "px"
        });
        
        // Transpaner menu
        
        if ($(".main-nav").hasClass("transparent")){
           $(".main-nav").addClass("js-transparent"); 
        }
        
        $(window).scroll(function(){        
            
                if ($(window).scrollTop() > 10) {
                    $(".js-transparent").removeClass("transparent");
                    $(".main-nav, .nav-logo-wrap .logo, .mobile-nav").addClass("small-height");
                }
                else {
                    $(".js-transparent").addClass("transparent");
                    $(".main-nav, .nav-logo-wrap .logo, .mobile-nav").removeClass("small-height");
                }
            
            
        });
        
        // Mobile menu toggle
        
        mobile_nav.click(function(){
        
            if (desktop_nav.hasClass("js-opened")) {
                desktop_nav.slideUp("slow", "easeOutExpo").removeClass("js-opened");
                $(this).removeClass("active");
            }
            else {
                desktop_nav.slideDown("slow", "easeOutQuart").addClass("js-opened");
                $(this).addClass("active");
                
                // Fix for responsive menu
                if ($(".main-nav").hasClass("not-top")){
                    $(window).scrollTo(".main-nav", "slow"); 
                }
                
            }
            
        });
        
        desktop_nav.find("a:not(.mn-has-sub)").click(function(){
            if (mobile_nav.hasClass("active")) {
                desktop_nav.slideUp("slow", "easeOutExpo").removeClass("js-opened");
                mobile_nav.removeClass("active");
            }
        });

        // Sub menu        
        var mnHasSub = $(".mn-has-sub");
        var mnThisLi;        
        $(".mobile-on .mn-has-sub").find(".fa:first").removeClass("fa-angle-right").addClass("fa-angle-down");        
        mnHasSub.click(function()
        {        
            if ($(".main-nav").hasClass("mobile-on")) 
            {
                mnThisLi = $(this).parent("li:first");
                if (mnThisLi.hasClass("js-opened")) {
                    mnThisLi.find(".mn-sub:first").slideUp(function(){
                        mnThisLi.removeClass("js-opened");
                        mnThisLi.find(".mn-has-sub").find(".fa:first").removeClass("fa-angle-up").addClass("fa-angle-down");
                    });
                }
                else {
                    $(this).find(".fa:first").removeClass("fa-angle-down").addClass("fa-angle-up");
                    mnThisLi.addClass("js-opened");
                    mnThisLi.find(".mn-sub:first").slideDown();
                }
                
                return false;
            }
            else 
            {
                
            }            
        });
        
        mnThisLi = mnHasSub.parent("li");
        mnThisLi.hover(function(){        
            if (!($(".main-nav").hasClass("mobile-on"))) {
            
                $(this).find(".mn-sub:first").stop(true, true).fadeIn("fast");
            }            
        }, function(){        
            if (!($(".main-nav").hasClass("mobile-on"))) {            
                $(this).find(".mn-sub:first").stop(true, true).delay(100).fadeOut("fast");
            }            
        });        
    }
        
    
}); // End of use strict