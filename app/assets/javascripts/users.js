// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready(function() {
	$.ajax({
        type: "PUT",
        url: "/drivers/update",
        data: { driver: { available: false } },
        dataType: "string", // you want a difference between normal and ajax-calls, and json is standard
    	success: function(json){
        	console.log(valuesToSubmit, json);
        }
    });
})
$(document).on('turbolinks:load', function() {
	$('#dropdownMenuButton').on('click', function (event) {
	    $('.test').toggleClass('show');
	    $('.test1').removeClass('show');
	});
	$('body').on('click', function (e) {
	    if (!$('#dropdownMenuButton').is(e.target) 
	        && $('#dropdownMenuButton').has(e.target).length === 0 
	        && $('.show').has(e.target).length === 0
	    ) {
	        $('.test').removeClass('show');
	    }
	});
	$('#dropdownMenuButton1').on('click', function (event) {
	    $('.test1').toggleClass('show');
	    $('.test').removeClass('show');
	});
	$('body').on('click', function (e) {
	    if (!$('#dropdownMenuButton1').is(e.target) 
	        && $('#dropdownMenuButton1').has(e.target).length === 0 
	        && $('.show').has(e.target).length === 0
	    ) {
	        $('.test1').removeClass('show');
	    }
	});
    $('#toggle-event').change(function() { 
    	$('#console-event').html('Available: ' + $(this).prop('checked'));
	    var setAvailable = $(this).prop('checked');
	  $.ajaxSetup({
	    beforeSend: function( xhr ) {
	      var token = $('meta[name="csrf-token"]').attr('content');
	      if (token) xhr.setRequestHeader('X-CSRF-Token', token);
	    }
	  });
	    $.ajax({
	        type: "PUT",
	        url: "/drivers/update",
	        data: { driver: { available: setAvailable } },
	        dataType: "string", // you want a difference between normal and ajax-calls, and json is standard
	    	success: function(json){
	        	console.log(valuesToSubmit, json);
	        }
	    });
	    return false; // prevents normal behaviour
    });	
	
});