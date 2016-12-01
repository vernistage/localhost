$(document).ready(function(){

  if (document.getElementById('chat-messages') != null){

    var elem = document.getElementById('chat-messages');
    elem.scrollTop = elem.scrollHeight;
    var messageNum = {messageNum: $("#chat-messages").children().length};
    $('#send-message-form').submit(function(e){
      e.preventDefault();
      var url = this.action;
      var data = $(this).serialize();
      var form = $(this);
      $.ajax({
        type: 'POST',
        url: url,
        data: data
      }).done(function(response){
        if ($("#chat-messages").children().length == 0){
          $("#chat-messages").html(response.html)
        }else{
        $("#chat-messages").children().last().after(response.html);
        }
        form.trigger('reset')
        form.find('[name="commit"]').removeAttr('disabled')
        var elem = document.getElementById('chat-messages');
        elem.scrollTop = elem.scrollHeight;
        messageNum = {messageNum: $("#chat-messages").children().length};
      }).fail(function(res){
      });
    });

    var url = window.location.pathname;
    // var messageNum = {messageNum: $("#chat-messages").children().length};
    // var messageNum = {messageNum: document.getElementById('chat-messages').children.length};
    // debugger;
    messageNum = {messageNum: $("#chat-messages").children().length};

    (function messagePoll() {
      messageNum = {messageNum: $("#chat-messages").children().length};
      setTimeout(function() {
        $.ajax({
          url: (url + "/polling"),
          data: messageNum,
          dataType: "html",
          success: function(response) {
            if(response == "no_content"){
              console.log("no content")
            }else if(($("#chat-messages").children().length + ($(response).children().length) / 2) == parseInt($(response).children().parent().last().attr('id'))) {
               $("#chat-messages").children().last().after(response);
                var elem = document.getElementById('chat-messages');
                elem.scrollTop = elem.scrollHeight;
                messageNum = parseInt($(response).children().parent().last().attr('id'));
            }
          },
          complete: messagePoll() }
        );
      }, 50);

    })();





  };

});



