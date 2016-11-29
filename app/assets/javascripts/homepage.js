var images = ['cities/austin.jpg', 'cities/la.jpg', 'cities/nyc.jpg', 'cities/chicago.jpg', 'cities/seattle.jpg'];
$('body').css({
  'background-image': 'url(images/' + images[Math.floor(Math.random() * images.length)] + ')'
});

$(document).ready(function(){
   $('body').on('click', '#search', function(event){
    event.preventDefault();
    var t = $(this)
    $.ajax({
      type: 'GET',
      url: "/categories"
    }).done(function(response){
      // Remove header
      t.parent().parent().parent().find('#main-header').remove()
      // Move up search
      t.parent().animate({'marginTop' : "-=90px", 'animation-duration': '0.00001s' });
      // Remove any previous append
      t.parent().parent().parent().siblings().children().remove()
      // Add categories below
      $('.categories-list').append(response)
    })
  })
})


