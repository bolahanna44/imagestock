require 'test_helper'

class UploadsControllerTest < ActionDispatch::IntegrationTest
  test 'respond with an image' do
    image = create(:image)
    get image_path(image)
    assert_equal response.content_type, 'application/octet-stream'
  end

  test 'respond with success status' do
    image = create(:image)
    get image_path(image)
    assert_response :success
  end
end
