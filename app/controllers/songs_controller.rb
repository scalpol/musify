class SongsController < ApplicationController
  def create
    playlist = Playlist.find(params[:playlist_id])
    playlist.songs.build(song_params)
    playlist.save
    redirect_to playlist
  end

  def destroy
    song = Song.find(params[:id])
    if song.delete
      redirect_to playlist_path(params[:playlist_id]), notice: 'La canción se ha eliminado con éxito.'
    end
  end

  private

  def song_params
    params.require(:song).permit(:artist, :name)
  end
end
