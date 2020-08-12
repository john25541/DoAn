class AddFieldsToKhachhang < ActiveRecord::Migration[5.1]
  def change
    add_column :khachhangs, :provider, :string
    add_column :khachhangs, :uid, :string
  end
end
