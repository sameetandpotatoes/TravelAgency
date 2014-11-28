// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require pages.js
//= require travels.js
//= require bootstrap-slider
//= require jquery.scrollme.min.js
//= require owl.carousel.min.js

$(document).ready(function() {
	prepareAccordion();
	  window.fbAsyncInit = function() {
    FB.init({
      appId      : '1582224785343435',
      xfbml      : true,
      version    : 'v2.2'
    });
  };
  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
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
		items : 4,
		itemsDesktop : [1000,3],
		itemsDesktopSmall : [900,2],
		itemsTablet: [600,2],
		itemsMobile : true
	});
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
	$('.header').on('click', function(){
		window.location.href = '/'
	});
	$('.facebook-social').on('click', function(){
		FB.ui({
		  method: 'share',
		  href: 'http://www.toptiertraveling.com/',
		}, function(response){});
		});
	$('.twitter-social').on('click', function(){
		window.location.href = 'https://twitter.com/intent/tweet?screen_name=toptiertravelin&button_hashtag=ThanksTopTier'
	});
	$('.welcome-show').css("min-height", $(window).height() - $('.header').height() - $('.arrow').height() - 10);
	$('.arrow').on('click', function(){
		$('body,html').animate({
			scrollTop : $('.welcome-show').height() + (2 * $('.arrow').height())
		}, 500);
	});
});
function prepareAccordion(){
	var accordionHeadings = document.getElementsByClassName('entry-header');
	var accordionParagraphs = document.getElementsByClassName('entry-content');
	for (var i = 0; i < accordionHeadings.length; i++){
		accordionParagraphs[i].className = 'entry-content hide-content';
		accordionHeadings[i].onclick = function accordion() {
			var accParagraph = this.nextElementSibling;
			hideAccordion(accParagraph);
			if (accParagraph.className == 'entry-content hide-content')
			{
					$(accParagraph).animate({height:accParagraph.children[0].offsetHeight + 100}, 200, function(){
						accParagraph.className = 'entry-content show-content';
					});
			}
			else
			{
					$(accParagraph).animate({height:'5px'}, 200, function(){
						accParagraph.className = 'entry-content hide-content';
					});
			}
		}
	}
}
function hideAccordion(accParagraph){
	var accordionHeadings = document.getElementsByClassName('entry-header');
	var accordionParagraphs = document.getElementsByClassName('entry-content');
	for (var i = 0; i < accordionHeadings.length; i++){
		if (accordionParagraphs[i] != accParagraph)
			accordionParagraphs[i].className = 'entry-content hide-content';
	}
}
