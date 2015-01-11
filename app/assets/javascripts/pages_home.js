var firstTimeClick = true;

$(".welcome").owlCarousel({
	autoPlay: 3000, //Set AutoPlay to 3 seconds
	items : 1,
	itemsDesktop : [1000,1],
	itemsDesktopSmall : [900,1],
	itemsTablet: [600,1],
	itemsMobile : true
});

$('.select-dest').on('click', function(){
	var vac_desc = $(this).attr("data-desc");
	var dest = $($(this).children()[0]).text().toLowerCase();

	$('.desc').css("opacity","0");
	$('.desc p').text("");
	$('.desc').css("width","0px");
	$('.createdButton').remove();

	if (!firstTimeClick && !$(this).hasClass("grayscale")){
		$('.select-dest').removeClass("grayscale");
		firstTimeClick = true;
		return;
	}
	firstTimeClick = false;
	$('.select-dest').addClass("grayscale");
	$(this).removeClass("grayscale");

	setTimeout(function(){
		$('.desc').css("width","600px");
		setTimeout(function(){
			$('.desc').css("opacity","1");
			$('.desc p').text(vac_desc);
			var html = '<a class="pure-button" href="/travels/'+dest+'">Find out more!</a>';
			var htmlObject = document.createElement('div');
			htmlObject.className = "createdButton";
			htmlObject.innerHTML = html;
			$('.createdButton').remove();
			$('.desc').append(htmlObject);
		},200);
	},400);
});

$('.item img').css("height", 0.50 * $(window).height());
$('.welcome-show').css("min-height", $(window).height() - $('.header').height() - $('.arrow').height() - 10);
$(window).resize(function(e){
	$('.item img').css("height", 0.50 * $(window).height());
	$('.welcome-show').css("min-height", $(window).height() - $('.header').height() - $('.arrow').height() - 10);
});

$('.arrow').on('click', function(){
	$('body,html').animate({
		scrollTop: $('.centered > h1').offset().top - 80
	}, 500);
});

$('#moveLeft div').hover(
	function(){ //Mouse on
		$(this).stop().animate({right: 20}, 100);
	}, function() { //Mouse off
		$(this).stop().animate({right: 0}, 100);
	}
);

$('#moveRight div').hover(
	function(){ //Mouse on
		$(this).stop().animate({left: 20}, 100);
	}, function() { //Mouse off
		$(this).stop().animate({left: 0}, 100);
	}
);
