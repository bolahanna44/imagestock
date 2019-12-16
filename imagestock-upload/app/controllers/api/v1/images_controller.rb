class Api::V1::ImagesController < Api::V1::ApplicationController
  def create
    image = Image.new(image_params)

    if image.save
      render json: { url: image_url(image) }
    else
      render json: { errors: image.errors.full_messages.to_sentence }, status: :bad_request
    end
  end

  private

  def image_params
    params.permit(:file)
  end
end
