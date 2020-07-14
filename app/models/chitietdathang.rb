class Chitietdathang < ApplicationRecord

  belongs_to :dondathang 
  belongs_to :chitietsp 

  before_save :set_into_money

  def into_money
    sanpham = Sanpham.find_by(masanpham: chitietsp.sanpham_id)
    sanpham.giaban * soluong
  end

  private
  def set_into_money
    self[:thanhtien] = into_money
  end
end
