$(".welcome").owlCarousel({
	autoPlay: 3000, //Set AutoPlay to 3 seconds
	items : 1,
	itemsDesktop : [1000,1],
	itemsDesktopSmall : [900,1],
	itemsTablet: [600,1],
	itemsMobile : true
});

$(".vacation").owlCarousel({
	autoplay: true,
	autoplayTimeout: 2000,
	autoplayHoverPause: true,
	items : 2,
	itemsDesktop : [1199,2],
	itemsDesktopSmall : [979,1]
});

$('.vacation').mouseenter(function(){
	console.log("MOUSE HAS ENTERED THE BUILDING");
	$('.vacation').trigger('autoplay.play.owl',[2000]);
});

$('.vacation').mouseleave(function(){
	console.log("MOUSE HAS LEFT THE BUILDING");
	$('.vacation').trigger('autoplay.stop.owl');
});

$('.welcome-show').css("min-height", $(window).height() - $('.header').height() - $('.arrow').height() - 10);
$('.vacation-show').css("min-height", $(window).height() - $('.header').height());

$('.arrow').on('click', function(){
	var nextDiv = $(this).parent().next();
	$('body,html').animate({
		scrollTop : nextDiv.offset().top - 70
	}, 500);
});

$('.button-hawaii').on('click', function(){
	window.location.href = "/travels/hawaii"
});

$('.button-italy').on('click', function(){
	window.location.href = "/travels/italy"
});
