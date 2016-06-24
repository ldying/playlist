class SongsController < ApplicationController
  def index
  	@songs = Song.all
  end

  def create
  	song = Song.new(song_params)
    if song.save
      redirect_to "/songs", notice: "song successfully added"

    else 
      flash[:errors] = song.errors.full_messages
      redirect_to "/songs"
    end
  end

  def show
    @song = Song.find(params[:id])

  end

  private
  def song_params
    params.require(:song).permit(:artist, :title)
  end
end
