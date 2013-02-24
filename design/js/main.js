$(document).ready(function() {
  $('#create_btn').click(function() {
    $('#create_hidden').slideToggle();
  });

  if($('#right input').is(":focus")) {
    $(this).animate({
      width:"500px"
    });
  }
});

$('#submit').click(function(){
  if(!$('#email').val()){
  }
  if(!$('#password').val()){
  }
});
