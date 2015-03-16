class SongsController < ApplicationController

  before_action :set_song, only: [:show, :edit]
  def create
    song = Song.create(song_params)
    song.create_lyrics(lyric_params)
    redirect_to songs_path
  end

  def destroy
  end

  def index
    @songs = Song.all
    @user = User.new
  end

  def new
    @song = Song.new
  end

  def edit
  end

  def show
    @comment = Comment.new
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end 

  def song_params
    params.require(:song).permit(:title)
  end

  def lyric_params
    params.require(:lyrics).permit(:content)
  end

end
