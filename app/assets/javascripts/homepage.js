var images = ['cities/austin.jpg', 'cities/la.jpg', 'cities/nyc.jpg', 'cities/chicago.jpg', 'cities/seattle.jpg'];
$('body').css({
  'background-image': 'url(images/' + images[Math.floor(Math.random() * images.length)] + ')'
});


