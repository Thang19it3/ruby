class Loaitin < ApplicationRecord
  belongs_to :theloais ,optional: true

  has_many :tintucs
end
