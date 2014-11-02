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
//= require turbolinks
//= require turbolinks_transitions
//= require pages.js
//= require travels.js
//= require bootstrap-slider

$(document).ready(function() {
	prepareAccordion();
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
					$(accParagraph).animate({height:accParagraph.children[0].offsetHeight + 50}, 500, function(){
						accParagraph.className = 'entry-content show-content';
					});
			}
			else
			{
					$(accParagraph).animate({height:'5px'}, 500, function(){
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
