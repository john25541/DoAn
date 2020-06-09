class Chitietdathang < ApplicationRecord
  self.primary_key = :machitietsp, :madondathang

  belongs_to :dondathang, optional: true
  belongs_to :chitietsp, optional: true

end
