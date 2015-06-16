$(document).scroll(function() {    
    var scroll = $(this).scrollTop();

    if (scroll >= 50) {
        $("#menu").addClass("active");
    } else {
        $("#menu").removeClass("active");
    }

});