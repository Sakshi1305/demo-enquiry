ready = function() {

  $(".enquiry_btn").on("click",function() {
    $("#error").html('')
  });

  $(".close").on("click",function() {
    document.getElementById("contact_form").reset();
  })
};
$(document).on('turbolinks:load', ready);
