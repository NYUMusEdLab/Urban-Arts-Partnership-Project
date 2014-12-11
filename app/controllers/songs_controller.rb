class SongsController < ApplicationController

  before_action :set_song, only: [:show, :edit]
  def create
  end

  def destroy
  end

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def edit
  end

  def show
    
  end

  private

  def set_song
    @song = Song.find(params[:id])

  end 


end
