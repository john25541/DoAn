class Dondathang < ApplicationRecord
  self.primary_key = :madondathang

  has_many :chitietdathangs, dependent: :delete_all
  has_and_belongs_to_many :chitietsps
end
