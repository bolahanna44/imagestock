class Image < ApplicationRecord
  has_one_attached :file
  validates :file, attached: true, content_type: %w[image/png image/jpg image/jpeg]
end
