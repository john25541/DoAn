class Chitietsp < ApplicationRecord
  self.primary_key = :machitietsp

  belongs_to :sanpham , foreign_key: 'masp'
end
