class Sanpham < ApplicationRecord
  self.primary_key = :masanpham
  has_many :chitietsps, dependent: :delete_all
  belongs_to :loaisanpham, optional: true

  validates :loaisanpham, presence: true
end
