// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

console.log('js loaded')
$(document).ready(function(){
	$('#dropdownMenuButton').on('click', function (event) {
		console.log("ran")
	    $('.test').toggleClass('show');
	});
});