$(".welcome").owlCarousel({
	autoPlay: 3000, //Set AutoPlay to 3 seconds
	items : 1,
	itemsDesktop : [1000,1],
	itemsDesktopSmall : [900,1],
	itemsTablet: [600,1],
	itemsMobile : true
});
$(".vacation").owlCarousel({
	autoPlay: 3000, //Set AutoPlay to 3 seconds
	items : 1,
	itemsDesktop : [1000,1],
	itemsDesktopSmall : [900,1],
	itemsTablet: [600,1],
	itemsMobile : true
});
$('.welcome-show').css("min-height", $(window).height() - $('.header').height() - $('.arrow').height() - 10);
$('.arrow').on('click', function(){
	$('body,html').animate({
		scrollTop : $('.welcome-show').height() + (2 * $('.arrow').height())
	}, 500);
});
