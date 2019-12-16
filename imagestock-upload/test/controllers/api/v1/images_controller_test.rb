require 'test_helper'

class Api::V1::ImagesControllerTest < ActionDispatch::IntegrationTest
  test 'should respond with success status when uploading an image' do
    post api_v1_images_path, params: { file: fixture_file_upload("#{Rails.root}/test/files/test.png") }
    assert_response :success
  end

  test 'should respond with bad request when file is blank' do
    post api_v1_images_path
    assert_response :bad_request
  end
end
