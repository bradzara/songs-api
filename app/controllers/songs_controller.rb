class SongsController < ApplicationController

  def index
    @songs = Song.all
    render template: "songs/index"
  end

  def create
    @song = Song.create(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      year: params[:year]
    )
    render :show
  end
  
end
