$(".welcome").owlCarousel({
	autoPlay: 3000, //Set AutoPlay to 3 seconds
	items : 1,
	itemsDesktop : [1000,1],
	itemsDesktopSmall : [900,1],
	itemsTablet: [600,1],
	itemsMobile : true
});

$('.welcome-show').css("min-height", $(window).height() - $('.header').height() - $('.arrow').height() - 10);

$('.row > div').on('click', function(){
	var vac_desc = $(this).attr("data-desc");
	var dest = $($(this).children()[0]).text().toLowerCase();
	$('.row > div > img').addClass("grayscale");
	$($(this).children()[1]).removeClass("grayscale");
	$('.desc').css("opacity","0");
	$('.desc p').text("");
	$('.desc').css("width","0px");
	$('.createdButton').remove()
	setTimeout(function(){
		$('.desc').css("width","600px");
		setTimeout(function(){
			$('.desc').css("opacity","1");
			$('.desc p').text(vac_desc);
			var html = '<a class="button-'+dest+' pure-button" href="/travels/'+dest+'">Find out more!</a>';
			console.log(html);
			var htmlObject = document.createElement('div');
			htmlObject.className = "createdButton";
			htmlObject.innerHTML = html;
			$('.desc').append(htmlObject);
		},200);
	},400);
});

$('.arrow').on('click', function(){
	var nextDiv = $(this).parent().next();
	$('body,html').animate({
		scrollTop : nextDiv.offset().top - 40
	}, 500);
});

// $('.button-hawaii').on('click', function(){
// 	window.location.href = "/travels/hawaii"
// });
//
// $('.button-italy').on('click', function(){
// 	window.location.href = "/travels/italy"
// });
