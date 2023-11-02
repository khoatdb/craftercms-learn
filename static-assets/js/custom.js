
// preloader
$(window).ready(function(){
    $('.preloader').fadeOut(1000); // set duration in brackets    
});

/* HTML document is loaded. DOM is ready.
-------------------------------------------*/
$(function(){

    // ------- WOW ANIMATED ------ //
    wow = new WOW(
        {
            mobile: false
        });
    wow.init();

    // ------- JQUERY PARALLAX ---- //
    function initParallax() {
        $('#home').parallax("100%", 0.1);
        $('#gallery').parallax("100%", 0.3);
        $('#menu').parallax("100%", 0.2);
        $('#team').parallax("100%", 0.3);
        $('#contact').parallax("100%", 0.1);

    }
    initParallax();

    // HIDE MOBILE MENU AFTER CLIKING ON A LINK
    $('.navbar-collapse a').click(function(){
        $(".navbar-collapse").collapse('hide');
    });

    // NIVO LIGHTBOX
    $('#gallery a').nivoLightbox({
        effect: 'fadeScale',
    });
    $("#contact-us-form").submit(function(e){
        e.preventDefault();
        var thisButton = $(this);
        alertify.set('notifier','position', 'top-right');
        if(!thisButton.hasClass("loading") && !thisButton.hasClass("done")){
            var frm = $("#contact-us-form");
            if (!frm[0].checkValidity()) {
                // If the form is invalid, submit it. The form won't actually submit;
                // this will just cause the browser to display the native HTML5 error messages.

            } else {
                var data = frm.serializeArray();
                data = data.reduce(function (m, e) { m[e.name] = e.value; return m; }, {});
                $.ajax({
                    type: "POST",
                    "url": "/api/1/services/email.json",
                    "data": data,
                }).done(function () {
                    $('#contact-us-form')[0].reset();
                    alertify.success("Email was successfully send")
                }).fail(function (error) {
                    alertify.error('There was an error during the action, please try again later');
                    console.error(error);
                }).always(function(){
                    setTimeout(function(){
                        thisButton.removeClass('done error');
                    }, 2000);
                });
            }
        }
    });
});

