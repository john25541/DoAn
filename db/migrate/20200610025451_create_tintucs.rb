class CreateTintucs < ActiveRecord::Migration[5.1]
  def change
    create_table :tintucs, { id: false } do |t|
      t.string :matintuc
      t.string :tieude
      t.datetime :ngaybatdau
      t.datetime :ngayketthuc
      t.text :mota
      t.string :hinhanhtintuc
    end
    execute ("ALTER TABLE tintucs ADD PRIMARY KEY (matintuc)")
  end
end
