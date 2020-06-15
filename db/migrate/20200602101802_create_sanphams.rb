class CreateSanphams < ActiveRecord::Migration[5.1]
  def change
    create_table :sanphams, { id: false }  do |t|
      t.string :masanpham
      t.string :loaisanpham_id
      t.string :thuonghieu_id
      t.string :tensanpham
      t.decimal :giaban
      t.decimal :giakhuyenmai
      t.text :mota
    end
    execute ("ALTER TABLE sanphams ADD PRIMARY KEY (masanpham)")
  end
end
