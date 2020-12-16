class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show, :edit, :update ]

  def show
    @album = Album.find(params[:id])
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])

    if @album.update(album_params)
      redirect_to root_path
    end
  end

  def album_params
    params.require(:album).permit(:title, :body, photos: [])
  end
end