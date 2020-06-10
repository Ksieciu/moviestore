
$(function(){
  
    var single = $('.image-top');
    var width = single.width();
    $(window).resize(function(){
      width = single.width();
    });
  
    // $('#prev, #next').click(function( e ){
    //   var next = this.id=="next";    
    //   $('.slider-wrapper').stop().animate({scrollLeft:(next?"+=":"-=")+width}, 1200);
    // });
  
  });