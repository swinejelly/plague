// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on('page:change', function() {
    $('#editlink').click(function() {
        $('#endfooter').hide();
        $('#editfooter').fadeIn();
    });
    $('#endlink').click(function() {
        $('#endfooter').fadeIn();
        $('#editfooter').hide();
    });

    $('#createlink').click(function() {
        $('#createfooter').fadeIn();
    });
});
