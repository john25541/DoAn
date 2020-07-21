class CreateDondathangs < ActiveRecord::Migration[5.1]
  def change
    create_table :dondathangs, { id: false }  do |t|
      t.string :madondathang 
      t.string :diachigiaohang
      t.date :ngaydathang
      t.date :ngaygiaohang
      t.integer :tinhtrang , default: 1
    end
    execute ("ALTER TABLE dondathangs ADD PRIMARY KEY (madondathang)")
  end
end
