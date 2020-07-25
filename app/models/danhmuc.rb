class Danhmuc < ApplicationRecord
  self.primary_key = :madanhmuc
  self.name
  has_many :loaisanphams, dependent: :delete_all
  has_many :sanphams, through: :loaisanphams

  accepts_nested_attributes_for :loaisanphams



  validates :madanhmuc, presence: true
  validates :tendanhmuc, presence: true

  def name
    return self.tendanhmuc
  end
end
