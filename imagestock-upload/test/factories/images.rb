FactoryBot.define do
  factory :image do
    file { Rack::Test::UploadedFile.new("#{Rails.root}/test/files/test.png", 'image/png') }
  end
end
