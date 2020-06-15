class Loaisanpham < ApplicationRecord
  self.primary_key = :maloai
  self.name
  has_many :sanphams, dependent: :delete_all
  belongs_to :danhmuc
  validates :danhmuc, presence: true

  def name
    return self.tenloai
  end
end
