class CreateDondathangs < ActiveRecord::Migration[5.1]
  def change
    create_table :dondathangs, { id: false }  do |t|
      t.string :madondathang 
      t.date :ngaydathang
      t.date :ngaygiaohang
      t.string :tinhtrang , default: 1
    end
    execute ("ALTER TABLE dondathangs ADD PRIMARY KEY (madondathang)")
  end
end
