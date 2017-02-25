# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  $('.search').on 'ajax:success', ->
    $('html,body').animate
      scrollTop: $($(this).attr('data-scroll-to')).offset().top