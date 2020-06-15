class Danhmuc < ApplicationRecord
  self.primary_key = :madanhmuc
  self.name
  has_many :loaisanphams, dependent: :delete_all

  validates :madanhmuc, presence: true
  validates :tendanhmuc, presence: true

  def name
    return self.tendanhmuc
  end
end
