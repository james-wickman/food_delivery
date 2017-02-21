// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/


$('#collapseExample1').on('click', function() {
    $('#collapseExample').toggle()
  }
);

$('#collapseExample').on('click',function() {
		$('#collapseExample1').toggle()
	});