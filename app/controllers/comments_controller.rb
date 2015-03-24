class CommentsController < ApplicationController

  def create
    keyword = Keyword.find(keyword_id.to_i + 1)
    comment = keyword.comments.create(content:comment_content)
    comment.update(user_id: current_user.id)
    render nothing:true
  end

  def new
    @comment = Comment.new
  end

  private

  def comment_content
    params.require("comment_content")

  end 

  def keyword_id
    params.require("keyword_id")
  end

  def song_id
    params.require("song_id")
  end

end