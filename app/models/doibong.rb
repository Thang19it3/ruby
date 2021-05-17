class Doibong < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :members
end
