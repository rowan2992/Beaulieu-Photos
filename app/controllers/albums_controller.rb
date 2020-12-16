class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]

  def show
    @album = Album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(:title, :body, :photo)
  end
end