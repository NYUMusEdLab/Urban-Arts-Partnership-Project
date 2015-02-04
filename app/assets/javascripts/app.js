$(document).ready(function(){

  $('p').on("mouseenter","span",function(){
    var data = $(this).parent().data().info
    if (data === true){
    $(this).css("background-color","red")
    }
   
  })

  $('p').on("mouseleave","span",function(){
    $(this).css("background-color","white")
  })

  $('p').on("click","span",function(){
    $('.info-card').hide();
    var data = $(this).parent().data().lyric
    var show = $(this).parent().data().info
    if (show === true){
      $('section').filter('[data-definition=' + data + ']').fadeIn()
    }
  })



})