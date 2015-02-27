//= require jquery
//= require jquery_ujs
//= require jquery.mousewheel.min.js
//= require owl.carousel.min.js
//= require mapbox.js
//= require facebook.js.erb

$(document).ready(function() {
	//Remove header animation on mobile devices and non home-page devices
	if (isMobile.any() || !home_page()){
		$(".header").addClass('smaller');
		$('.header-logo').addClass('smaller');
	}
	if (home_page()){
		$('.header').addClass("big-header fixed");
		$('.content').css("margin-top", "150px");
	}
	//Handles animation of header from big to small
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
	//Using h1 instead of link tag for styling purposes
	$('.header h1').on('click', function(){
		window.location.href = '/'
	});
	$(window).load(function(){
		footerFix();
	});
	$(window).resize(function(){
		footerFix();
	});
});
function footerFix(){
	//Makes footer sticky only when content fits on one page
	if (($(window).height() - $('.footer').height()) - ($('.content').height()+$('.header').height()) > 0){
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
