class PhotosController < ApplicationController
    skip_before_action :verify_authenticity_token

    def update
        photo = Photo.find(params[:id])
        photo.update(photo_params)
        render :json => photo
    end

    def destroy
        photo = Photo.find(params[:id])
        photo.albums_photos.each {|ap| ap.destroy}
        photo.destroy
        render :json => {status: 'deleted'}
    end

    private 
    def photo_params
        params.require(:photo).permit(:description, :location, :size, :time, :filename, :user_id, tags: [], people: [])
    end 
end