// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

console.log('js loaded')
$(document).ready(function(){
	$('#dropdownMenuButton').on('click', function (event) {
		console.log("ran")
	    $('.test').toggleClass('show');
	    $('.test1').removeClass('show');
	});

	$('body').on('click', function (e) {
		console.log("ran on body")
	    if (!$('#dropdownMenuButton').is(e.target) 
	        && $('#dropdownMenuButton').has(e.target).length === 0 
	        && $('.show').has(e.target).length === 0
	    ) {
	        $('.test').removeClass('show');
	    }
	});
	$('#dropdownMenuButton1').on('click', function (event) {
		console.log("ran")
	    $('.test1').toggleClass('show');
	    $('.test').removeClass('show');
	});

	$('body').on('click', function (e) {
		console.log("ran on body")
	    if (!$('#dropdownMenuButton1').is(e.target) 
	        && $('#dropdownMenuButton1').has(e.target).length === 0 
	        && $('.show').has(e.target).length === 0
	    ) {
	        $('.test1').removeClass('show');
	    }
	});
});