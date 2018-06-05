/**
 * Created by 845873174 on 17/05/2018.
 */

(function ($) {

    /**********Animate on Scroll**********/
    AOS.init();


    /**********Header - Nav bar selected page**********/
    $(".menu-item").click(function() {
        $(this).addClass("active");
        $(".menu-item")
            .not(this)
            .removeClass("active");
    });


    /**********Footer - Subscribe button**********/
    $("#subscribe-button").click(function () {
        $("#subscribe-button").addClass("validate", 450, callback);
    });

    function callback() {
        setTimeout(function () {
            $("#subscribe-button").removeClass("validate");
        }, 1250);
    }


    /**********Contact page- Send Message button**********/
    $("#send-message-button").click(function () {
        $("#send-message-button").addClass("validate", 450, callback);
    });

    function callback() {
        setTimeout(function () {
            $("#send-message-button").removeClass("validate");
        }, 1250);
    }


    /**********About page- Donate now button**********/
    $("#donate-now-button").click(function () {
        $("#donate-now-button").addClass("validate", 450, callback);
    });

    function callback() {
        setTimeout(function () {
            $("#donate-now-button").removeClass("validate");
        }, 1250);
    }

})(jQuery);