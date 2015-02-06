$(document).ready(function(){

  $('body').on("click",".keyword",function(){
    console.log($(this).data().keywordid)

    $('.keyword-card').hide();
    var keywordData = $(this).data().keywordid
    $('.keyword-card').filter('[data-keywordid=' + keywordData + ']').fadeIn()
    
  })

  // $('.keyword-cards').html($('.keyword-cards').html().replace("'\'+'92'","'"))
  $('p').html($('p').html().replace("Mesopatamia","Mesopotamia"))
  var keywords = $.parseJSON($('script').last().html()).replace('["',"").replace('"]',"").split('", "')

  keywords.forEach(function(value,index){
       $('p').html($('p').html().replace(value,"<span class='keyword' data-keywordid=" + index + "> "+value+" </span>"))
       $('p').html($('p').html().replace(value.toLowerCase(),"<span class='keyword' data-keywordid=" + index + "> "+value.toLowerCase()+" </span>"))
  })
  
  $('p').not(".keyword").on("click",function(){
        $('.keyword-card').hide();
    
  })

})