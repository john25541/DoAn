class Danhmuc < ApplicationRecord
  self.primary_key = :madanhmuc
  self.name
  has_many :loaisanphams, dependent: :delete_all
  has_many :sanphams, through: :loaisanphams

  accepts_nested_attributes_for :loaisanphams
  before_create :set_danhmuc_id


  validates :madanhmuc, :tendanhmuc, presence: true

  def name
    return self.tendanhmuc
  end
  def set_danhmuc_id
    self[:madondathang] = "DM#{Time.now().to_i + rand(0..999) - rand(0..9999) + rand(0..999)}"
  end
end
