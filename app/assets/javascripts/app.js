$(document).ready(function(){
  

  $('select').eq(0).on("change",function(){
    if($(this).val() !== "SONGS"){
      var slugSongName = $(this).val().replace(" ", "-")
      window.location.href= "/songs/" + slugSongName
    }
  })


  $('#sign-up-button').on("click",function(){
    $('.signup').css("display","block")
    $('.signin').css("display","none")
  })
  $('#sign-in-button').on("click",function(){
    $('.signin').css("display","block")
    $('.signup').css("display","none")
  })

  $('body').on("click",".keyword",function(){
    console.log($(this).data().keywordid)

    $('.keyword-card').hide();
    var keywordData = $(this).data().keywordid
    $('.keyword-card').filter('[data-keywordid=' + keywordData + ']').fadeIn()
    
  })
  // $('.keyword-cards').html($('.keyword-cards').html().replace("'\'+'92'","'"))
  var keywords = $.parseJSON($('script').last().html()).replace('["',"").replace('"]',"").split('", "')
  keywords.forEach(function(value,index){
       $('.lyrics').html($('.lyrics').html().replace(value,"<span class='keyword' data-keywordid=" + index + "> "+value+" </span>"))
       $('.lyrics').html($('.lyrics').html().replace(value.toLowerCase(),"<span class='keyword' data-keywordid=" + index + "> "+value.toLowerCase()+" </span>"))
  })
  
  $('p').not(".keyword").on("click",function(){
        $('.keyword-card').hide();
  })



  $(".comment-submit").on("click",function(e){
    e.preventDefault()
    var $this = $(this)
    var songId = $('h1').eq(0).data().songId
    var comment = $(this).parent().find("#comment_content").val();
    var keywordId = $(".comment-submit").eq(1).closest(".keyword-card").data().paramid
    var commentInfo = {comment_content: comment, keyword_id: keywordId, song_id: songId}
    $.ajax({
      type:"POST",
      url:'/comments',
      context: $this,
      data: commentInfo,
      success: function(){
        $(this).parent().find("#comment_content").val(""); 
        $(this).closest(".keyword-card").find("ul").append("<li class='comment-content'> <div class='comment-user'><div class='comment-user-image' style='width:50px'> <img src='https://pbs.twimg.com/media/BzjFf1RIYAAZ-iS.jpg:large'></div><div class='comment-user-name'>" + comment  + "</div></div><div class='comment-text'>sdfsf</div></li>")
      },
      error: function(){
        alert("Cannot connect to the server.")
      }
    })
  })

})