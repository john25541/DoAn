class CreateChitietdathangs < ActiveRecord::Migration[5.1]
  def change
    create_table :chitietdathangs do |t|
      t.string :chitietsp_id
      t.string :dondathang_id
      t.integer :soluong 
      t.decimal :thanhtien
    end
  end
end
