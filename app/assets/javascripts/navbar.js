$( document ).ready(function() {
  if ($(this).scrollTop() > 0) {
    $('.high_voltage_pages_show_html .navbar-wagon').removeClass('transparent').removeClass('color')
  }
  else {
    $(".navbar-wagon").addClass('transparent').addClass('color')
  }
  // navbar transition jQuery script
  $(window).scroll(function(e){
    if ($(this).scrollTop() > 0) {
      $('.navbar-wagon').removeClass('transparent').removeClass('color')
    }
    else {
      $(".navbar-wagon").addClass('transparent').addClass('color')
    }
  });

});