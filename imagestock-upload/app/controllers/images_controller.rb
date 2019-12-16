class ImagesController < ApplicationController
  def show
    image = Image.find(params[:id])
    send_data image.file.download
  rescue ActiveRecord::RecordNotFound
    render json: { errors: 'not found' }, status: :not_found
  end
end
