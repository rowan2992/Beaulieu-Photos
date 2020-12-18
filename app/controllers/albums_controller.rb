class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show, :edit, :update, :new, :create ]
  before_action :find_album, only: [ :show, :edit, :update ]

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to album_path(@album)
    else
      redirect_to albums_path
    end
  end

  def show
  end

  def index
    @albums = Album.all
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
    params.require(:album).permit(:name, :description, photos: [])
  end
end