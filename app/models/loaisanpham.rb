class Loaisanpham < ApplicationRecord
  self.primary_key = :maloai
  self.name
  has_many :sanphams, dependent: :delete_all
  belongs_to :danhmuc
  validates :danhmuc, presence: true
  before_create :set_loaisanpham_id

  validates :maloai, :tenloai, :danhmuc_id , presence: true

  def name
    return self.tenloai
  end
  def set_loaisanpham_id
    self[:madondathang] = " LSP#{Time.now().to_i + rand(0..999) - rand(0..9999) + rand(0..999)}"
  end
end
