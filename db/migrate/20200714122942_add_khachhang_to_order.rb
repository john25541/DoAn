class AddKhachhangToOrder < ActiveRecord::Migration[5.1]
  def change
    add_reference :dondathangs, :khachhang,foreign_key: true
  end
end
