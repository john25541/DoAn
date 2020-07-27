class Sanpham < ApplicationRecord
  self.primary_key = :masanpham
  self.name

  has_many :chitietsps, dependent: :delete_all
  belongs_to :loaisanpham, optional: true
  belongs_to :thuonghieu, optional: true
  accepts_nested_attributes_for :chitietsps


  validates :masanpham, :loaisanpham_id,:thuonghieu_id, :tensanpham,:giaban, :mota , presence: true

  def name
    return self.tensanpham
  end

end
