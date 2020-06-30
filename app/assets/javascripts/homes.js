$(function openMenu(){
  $(".clip-btn").on('click', function(){
    $('.open-menu').css({
      'transition-duration': '0.4s',
      position: "absolute",
      height: "330px",
      right: "0",
      'border-left': '2px solid rgb(0, 170, 255)',
      'border-bottom': '2px solid rgb(0, 170, 255)'
    });

    $('.clip-btn').css({
      'border-top': 'none'
    });

    $('.menu-contents').css({
      visibility: 'visible',
      'transition': '1s',
      opacity: '1'
    });

    $(".clip-btn").on('click', function(){
      $('.open-menu').css({
        height: "0px",
        'transition-duration': '0.4s',
        'border-bottom': 'none'
      });

      $('.menu-contents').css({
        visibility: 'hidden',
        'transition': '0.2s',
        opacity: '0'
      });

      openMenu();
    });
  });
});
