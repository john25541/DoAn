class Loaisanpham < ApplicationRecord
  self.primary_key = :maloai
  has_many :sanphams, dependent: :delete_all
  belongs_to :danhmuc

  validates :danhmuc, presence: true
end
