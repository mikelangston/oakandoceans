#Variable to store for when document is ready
app_ready = () ->
  $('.main-nav-toggle-btn').click ->
    $('.main-nav-container').toggle ->
      $(this).animate
        right: 0;
        400

#Standard jQuery document ready
$(document).ready(app_ready)
#Tubolinks Single Page App page load ready
$(document).on('page:load', app_ready)