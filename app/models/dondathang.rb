class Dondathang < ApplicationRecord
  self.primary_key = :madondathang

  has_many :chitietdathangs, dependent: :delete_all
  belongs_to :khachhang

end
