// The plugin code
(function ($) {

    $.fn.parallax = function (options) {
        var $$ = $(this);
        offset = $$.offset();
        var defaults = {
            "start": 0,
            "stop": offset.top + $$.height(),
            "coeff": 0.95
        };
        var opts = $.extend(defaults, options);
        return this.each(function () {
            $(window).bind('scroll', function () {
                windowTop = $(window).scrollTop();
                if ((windowTop >= opts.start) && (windowTop <= opts.stop)) {
                    newCoord = windowTop * opts.coeff;
                    $$.css({
                        "background-position": "0 " + newCoord + "px"
                    });
                }
            });
        });
    };
})(jQuery);


if (window.innerWidth > 1350) {
    if(/chrom(e|ium)/.test(navigator.userAgent.toLowerCase())){
        $('#header').parallax({ "coeff": 0.4 });
        $('#teaser').parallax({ "coeff": -0.4 });
        $('.section .main').parallax({ "coeff": 0.5 });
    }
}


//var rtime = new Date(1, 1, 2000, 12, 00, 00);
//var timeout = false;
//var delta = 200;
//$(window).resize(function () {
//    rtime = new Date();
//    if (timeout === false) {
//        timeout = true;
//        setTimeout(resizeend, delta);
//    }
//});

//function resizeend() {
//    if (new Date() - rtime < delta) {
//        setTimeout(resizeend, delta);
//    } else {
//        timeout = false;
//        location.reload();
//    }
//}