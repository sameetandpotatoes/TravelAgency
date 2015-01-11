//= require jquery
//= require jquery_ujs
//= require jquery.mousewheel.min.js
//= require owl.carousel.min.js
//= require mapbox.js
//= require facebook.js.erb

$(document).ready(function() {
	if (isMobile.any() || !home_page()){
		$(".header").addClass('smaller');
		$('.header-logo').addClass('smaller');
	}
	if (home_page()){
		$('.header').addClass("big-header fixed");
		$('.content').css("margin-top", "150px");
	}
	$(window).scroll(function() {
			var scroll = $(window).scrollTop();
			if (scroll >= 300 || isMobile.any() || !home_page()) {
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
	footerFix();
	$(window).resize(function(){
		footerFix();
	});
});
function footerFix(){
	if (($(window).height() - $('.footer').height()) - ($('.content').height()+$('.header').height()) > 10){
		$('.footer').addClass("sticky");
	} else{
		$('.footer').removeClass("sticky");
	}
}
function home_page(){
	return window.location.pathname == "/";
}
var isMobile = {
	Android: function() {
		return navigator.userAgent.match(/Android/i);
	},
	BlackBerry: function() {
		return navigator.userAgent.match(/BlackBerry/i);
	},
	iOS: function() {
		return navigator.userAgent.match(/iPhone|iPad|iPod/i);
	},
	Opera: function() {
		return navigator.userAgent.match(/Opera Mini/i);
	},
	Windows: function() {
		return navigator.userAgent.match(/IEMobile/i);
	},
	any: function() {
		return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
	}
};
