class PhotosController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create 
        photo = Photo.create(photo_params)
        render :json => photo
        log_action(photo.id)
    end 

    def update
        photo = Photo.find(params[:id])
        photo.update(photo_params)
        render :json => photo
        log_action(photo.id)
    end

    def destroy
        photo = Photo.find(params[:id])
        photo.albums_photos.each {|ap| ap.destroy}
        log_action(photo.id)
        photo.destroy
        render :json => {status: 'deleted'}
    end

    private 
    def photo_params
        params.require(:photo).permit(:description, :location, :size, :time, :filename, :user_id, tags: [], people: [])
    end 
end