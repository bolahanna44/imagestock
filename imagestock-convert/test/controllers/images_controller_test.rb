require 'test_helper'

class ImagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    super
    stub_request(:get, "http://upload_service:3000/images/1").to_return(body: File.new("#{Rails.root}/test/files/test.png"))
  end

  test "should return jpg image if format is jpg" do
    get image_path(id: 1, format: 'jpg')
    assert_equal response.content_type, 'application/octet-stream'
  end

  test "should return png image if format is png" do
    get image_path(id: 1, format: 'png')
    assert_equal response.content_type, 'application/octet-stream'
  end

  test "should return jpeg image if format is jpeg" do
    get image_path(id: 1, format: 'jpeg')
    assert_equal response.content_type, 'application/octet-stream'
  end
end
