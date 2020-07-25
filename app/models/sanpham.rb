class Sanpham < ApplicationRecord
  self.primary_key = :masanpham
  self.name

  has_many :chitietsps, dependent: :delete_all
  belongs_to :loaisanpham, optional: true
  belongs_to :thuonghieu, optional: true

  validates :masanpham, :loaisanpham_id, :thuonghieu_id, :tensanpham, :giaban, presence: true

  def name
    return self.tensanpham
  end

end
