//= require jquery
//= require jquery_ujs
//= require jquery.scrollme.min.js
//= require owl.carousel.min.js
//= require mapbox.js
//= require facebook.js.erb

$(document).ready(function() {
	$(window).scroll(function() {
			var scroll = $(window).scrollTop();
			if (scroll >= 300) {
					$(".header").addClass('smaller');
					$('.header-logo').addClass('smaller');
			} else {
					$(".header").removeClass("smaller");
					$('.header-logo').removeClass('smaller');
			}
	});

	$('.header h1').on('click', function(){
		window.location.href = '/'
	});
});
