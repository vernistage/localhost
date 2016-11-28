var images = ['cities/austin.jpg', 'cities/la.jpg', 'cities/nyc.jpg', 'cities/chicago.jpg', 'cities/seattle.jpg'];
$('body').css({
  'background-image': 'url(images/' + images[Math.floor(Math.random() * images.length)] + ')'
});

// $(document).ready(function(){
//    $('body').on('click', '#search', function(event){
//     event.preventDefault();
//     var t = $(this)
//     $.ajax({
//       type: 'GET',
//       url: "/categories"
//     }).done(function(response){
//       t.parent().parent().animate({'marginTop' : "-=150px" });
//     })
//   })
// })


