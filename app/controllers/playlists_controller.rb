class PlaylistsController < ApplicationController
  def create
  	song1 = Song.find(params[:song_id])
  	playlist = Playlist.new(user: current_user, song: song1)
  	if playlist.save
  	  redirect_to "/songs", notice: "song successfully added to playlist"
	  else 
      flash[:errors] = playlist.errors.full_messages
      redirect_to "/songs"
    end
  end
end
