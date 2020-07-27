class Dondathang < ApplicationRecord
  self.primary_key = :madondathang

  has_many :chitietdathangs, foreign_key: 'dondathang_id'

  belongs_to :khachhang

  before_save :set_order_id
  before_save :set_order_date
  before_save :set_delivery_date

  enum tinhtrang: {
    "Đã hủy" => 0,
    "Đơn hàng đang chờ xử lý" => 1,
    "Đơn hàng đã tiếp nhận" => 2,
    "Giao hàng và thanh toán thành công" => 3,
  }

  def set_order_id
    self[:madondathang] = "DDH#{Dondathang.count + Time.now().to_i}"
  end

  def set_order_date
    self[:ngaydathang] = Time.now()
  end

  def set_delivery_date
    self[:ngaygiaohang] = Time.now() + 432000
  end

end
