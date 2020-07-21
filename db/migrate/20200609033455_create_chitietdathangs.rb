class CreateChitietdathangs < ActiveRecord::Migration[5.1]
  def change
    create_table :chitietdathangs do |t|
      t.string :chitietsp_id
      t.string :dondathang_id
      t.integer :soluong 
      t.decimal :thanhtien
    end
    add_index :chitietdathangs, ["chitietsp_id", "dondathang_id"], :unique => true
  end

end
