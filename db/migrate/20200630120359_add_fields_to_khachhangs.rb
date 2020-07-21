class AddFieldsToKhachhangs < ActiveRecord::Migration[5.1]
  def change
    add_column :khachhangs, :anhdaidien, :string
    add_column :khachhangs, :hotenkhachhang, :string
    add_column :khachhangs, :gioitinh, :boolean
    add_column :khachhangs, :diachi, :string
    add_column :khachhangs, :sodienthoai, :string
    add_column :khachhangs, :ngaysinh, :date
  end
end
