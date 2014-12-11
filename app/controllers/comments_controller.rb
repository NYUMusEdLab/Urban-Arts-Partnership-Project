class CommentsController < ApplicationController

  def create
    song = Song.find(song_params.to_i)
    lyric = Lyric.find(lyric_params.to_i)
    lyric.comments.create(comment_params)
    redirect_to song
  end

  def new
    @comment = Comment.new
  end

  private

  def comment_params
    params.require(:comment).permit(:content)

  end 

  def lyric_params
    params.require(:lyric_id)
  end

  def song_params
    params.require(:song_id)
  end

end