class Danhmuc < ApplicationRecord
  self.primary_key = :madanhmuc
  has_many :loaisanphams, dependent: :delete_all
  has_many :sanphams, through: :loaisanphams

  validates :madanhmuc, presence: true
  validates :tendanhmuc, presence: true
end
