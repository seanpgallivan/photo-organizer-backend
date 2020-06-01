class AlbumsPhotosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create 
    albums_photo = AlbumsPhoto.create(album_params)
    render :json => albums_photo
    log_action(albums_photo.id)
  end 

  def destroy
    aid, pid = params[:id].split(',').map(&:to_i)
    albums_photo = AlbumsPhoto.find {|ap| ap.album_id == aid && ap.photo_id == pid}
    log_action(albums_photo.id)
    albums_photo.destroy
    render :json => {status: 'deleted'}
  end 

  private 
  def album_params
      params.require(:albums_photo).permit(:album_id, :photo_id)
  end
end