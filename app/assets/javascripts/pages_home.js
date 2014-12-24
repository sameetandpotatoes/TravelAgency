$(".welcome").owlCarousel({
	autoPlay: 3000, //Set AutoPlay to 3 seconds
	items : 1,
	itemsDesktop : [1000,1],
	itemsDesktopSmall : [900,1],
	itemsTablet: [600,1],
	itemsMobile : true
});

$(".vacation").owlCarousel({
	autoPlay: 3000,
	items : 2,
	itemsDesktop : [1199,2],
	itemsDesktopSmall : [979,1]
});

$('.welcome-show').css("min-height", $(window).height() - $('.header').height() - $('.arrow').height() - 10);

$('.arrow').on('click', function(){
	$('body,html').animate({
		scrollTop : $('.welcome-show').height() + (2 * $('.arrow').height())
	}, 500);
});

$('.button-hawaii').on('click', function(){
	window.location.href = "/travels/hawaii"
});

$('.button-italy').on('click', function(){
	window.location.href = "/travels/italy"
});
