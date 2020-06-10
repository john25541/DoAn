class Chitietsp < ApplicationRecord
  self.primary_key = :machitietsp

  belongs_to :sanpham

  has_and_belongs_to_many :dondathangs
end
