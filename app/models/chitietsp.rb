class Chitietsp < ApplicationRecord
  self.primary_key = :machitietsp

  belongs_to :sanpham
  has_many :chitietdathangs
  has_many :dondathangs, through: :chitietdathangs
end
