$(document).on('scroll', function (e) {
    $('.background-custom').css('opacity', ($(document).scrollTop() / 500));
});
