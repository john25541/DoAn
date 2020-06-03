class Sanpham < ApplicationRecord
  self.primary_key = :masanpham
  has_many :chitietsps, dependent: :delete_all
end
