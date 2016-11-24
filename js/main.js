$(window).load(function() {
  $('.carousel').flexslider({
    animation: "slide",
    controlNav: false
  });
  $('.slider').flexslider({
    animation: "slide",
    controlNav: false
  });
});


$(window).scroll(function() {
    var windscroll = $(window).scrollTop();
    if (windscroll >= 10) {
        $('header').addClass('fixed-top');
    } else {

        $('header').removeClass('fixed-top');
    }

}).scroll();
$(document).ready(function() {
 $('.menu-toggle').click(function() {
  $(this).toggleClass('active')
  $('header nav ul').slideToggle()
  $('header nav .register-mobile').slideToggle()
 });
 $('.pin .hotspot-label').click(function () {
  $('.ovrlay').removeClass('active');
  $(this).parent().find('.ovrlay').addClass('active');
 });
 $('.close').click(function() {
  $('.ovrlay').removeClass('active');
 });
});