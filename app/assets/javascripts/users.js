
$(function() {

  // this function shows the edit user form on show page
  $("#display_profile").click(function(e) {
    e.preventDefault();
    $(this).hide();
    $('#edit_profile').show();
  });
});
