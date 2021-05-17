class Tintuc < ApplicationRecord
  belongs_to :loaitins,optional: true
  mount_uploader :image, ImageUploader
  has_rich_text :content
end
