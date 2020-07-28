class Dondathang < ApplicationRecord
  self.primary_key = :madondathang

  has_many :chitietdathangs

  belongs_to :khachhang

  before_create :set_order_id

  before_create :set_order_date
  before_create :set_delivery_date

  enum tinhtrang: {
    "Đã hủy" => 0,
    "Đơn hàng đang chờ xử lý" => 1,
    "Đơn hàng đã tiếp nhận" => 2,
    "Đơn hàng đang giao" => 3,
    "Giao hàng và thanh toán thành công" => 4,
  }

  def set_order_id
    self[:madondathang] = "DDH#{Time.now().to_i + rand(0..999) - rand(0..9999) + rand(0..999)}"
  end

  def set_order_date
    self[:ngaydathang] = Time.now()
  end

  def set_delivery_date
    self[:ngaygiaohang] = Time.now() + 432000
  end

end
