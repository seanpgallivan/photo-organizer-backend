class AlbumsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create 
        album = Album.create(album_params)
        render :json => album
    end 

    def update
        album = Album.find(params[:id])
        album.update(album_params)
        render :json => album
    end 

    def destroy
        album = Album.find(params[:id])
        album.albums_photos.each {|ap| ap.destroy}
        album.destroy
        render :json => {status: 'deleted'}
    end 

    private 
    def album_params
        params.require(:album).permit(:name, :description, :user_id)
    end 
end