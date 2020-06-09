class CreateDondathangs < ActiveRecord::Migration[5.1]
  def change
    create_table :dondathangs, { id: false }  do |t|
      t.string :madondathang
      t.text :ghichu
      t.date :ngaydathang
      t.date :ngaygiaohang
      t.string :tinhtrang
      t.decimal :tongtien
      
    end
    execute ("ALTER TABLE dondathangs ADD PRIMARY KEY (madondathang)")
  end
end
