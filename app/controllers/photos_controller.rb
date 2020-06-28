class PhotosController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create 
        photo = Photo.new(photo_params)
        if photo.save
            send_ok(photo)
        else
            send_error(photo.errors, 500)
        end
    end 

    def update
        photo = Photo.find(params[:id])
        if photo && photo.update_attributes(photo_params)
            send_ok(photo)
        elsif photo
            send_error(photo.errors, 500)
        else
            send_error({photo: ["Photo not found"]}, 404)
        end
    end

    def destroy
        photo = Photo.find(params[:id])
        if photo
            photo.albums_photos.each {|ap| ap.destroy}
            log_action(photo.id)
            photo.destroy
            render json: {message: 'deleted'}, status: :ok
        else
            send_error({photo: ["Photo not found"]}, 404)
        end
    end

    private 
    def photo_params
        params.require(:photo).permit(:description, :location, :size, :time, :filename, :user_id, tags: [], people: [])
    end 
end