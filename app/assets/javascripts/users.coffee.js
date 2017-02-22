// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$('#dropdownMenuButton').on('click', function (event) {
	byebug
    $(this).parent().toggleClass('open');
});


$('body').on('click', function (e) {
    if (!$('li.dropdown.mega-dropdown').is(e.target) 
        && $('li.dropdown.mega-dropdown').has(e.target).length === 0 
        && $('.open').has(e.target).length === 0
    ) {
        $('li.dropdown.mega-dropdown').removeClass('open');
    }
});