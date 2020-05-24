class PhotosController < ApplicationController
    def index 
        photos = User.find(1).photos
        render :json => photos
    end 

    def show 
        photo = Photo.find(params[:id])
        render :json => photo
    end 

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
        params.require(:photo).permit(:description, :tags, :people, :location, :size, :time, :filename, :user_id)
    end 
end