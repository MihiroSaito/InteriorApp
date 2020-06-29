$(function openMenu(){
  $(".clip-btn").on('click', function(){
    $('.open-menu').css({
      'transition-duration': '0.4s',
      position: "absolute",
      width: "23%",
      left: "0",
      'border-right': '2px solid rgb(0, 170, 255)'
      
    });

    $(".clip-btn").on('click', function(){
      $('.open-menu').css({
        width: "0px",
        'transition-duration': '0.4s'
      });
      openMenu();
    });
  });
});
