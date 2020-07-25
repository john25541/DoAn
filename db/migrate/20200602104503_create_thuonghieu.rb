class CreateThuonghieu < ActiveRecord::Migration[5.1]
  def change
    create_table :thuonghieus, { id: false } do |t|
      t.string :mathuonghieu
      t.string :tenthuonghieu
      t.string :hinhanhthuonghieu
      t.string :diachithuonghieu
      t.string :emailthuonghieu
    end
    execute ("ALTER TABLE thuonghieus ADD PRIMARY KEY (mathuonghieu)")
  end
end
