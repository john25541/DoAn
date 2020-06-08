class Danhmuc < ApplicationRecord
  self.primary_key = :madanhmuc
  has_many :loaisanphams, dependent: :delete_all

  validates :madanhmuc, presence: true
  validates :tendanhmuc, presence: true
end
