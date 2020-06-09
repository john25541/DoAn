class Dondathang < ApplicationRecord
  self.primary_key = :madondathang

  has_many :chitietdathangs, dependent: :delete_all
  has_many :chitietsps, through: :chitietdathangs
end
