$(document).ready(function(){

  $('body').on('submit', '#send-message-form', function(e){
    e.preventDefault();
    var url = this.action;
    var data = $(this).serialize();
    var form = $(this);
    $.ajax({
      type: 'POST',
      url: url,
      data: data
      }).done(function(response){
        $("#chat-messages").children().last().after(response);
    });
    $(this).trigger('reset');
  });
  (function(){
    setInterval(function() {

      }, 4000);
  })();
});


