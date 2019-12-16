class ImagesController < ApplicationController
  def show
    converter = ImageConverter.new("http://upload_service:3000/images/#{params[:id]}")
    respond_to do |format|
      format.png { send_data converter.to_png }
      format.jpg { send_data converter.to_jpg }
      format.jpeg { send_data converter.to_jpeg }
    end
    converter.destroy!
  rescue OpenURI::HTTPError => e
    render json: { errors: e.to_s }, status: :service_unavailable
  end
end
