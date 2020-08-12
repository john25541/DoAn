class Sanpham < ApplicationRecord
  self.primary_key = :masanpham
  self.name

  has_many :chitietsps, dependent: :delete_all
  belongs_to :loaisanpham, optional: true
  belongs_to :thuonghieu, optional: true
  before_create :set_sanpham_id
  accepts_nested_attributes_for :chitietsps

   
  validates :masanpham, :loaisanpham_id, :thuonghieu_id, :tensanpham, :giaban, presence: true

  def name
    return self.tensanpham
  end

  def set_sanpham_id
    self[:masanpham] = " SP#{Time.now().to_i + rand(0..999) - rand(0..9999) + rand(0..999)}"
  end
  


end
