class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show, :edit, :update ]
  before_action :find_album, only: [ :show, :edit, :update ]

  def show
  end

  def edit
  end

  def update
    if @album.photos.attach(album_params[:photos])
      redirect_to album_path(@album)
    end
  end
  
  private
  
  def find_album
    @album = Album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(photos: [])
  end
end