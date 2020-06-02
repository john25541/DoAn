class CreateSanphams < ActiveRecord::Migration[5.1]
  def change
    create_table :sanphams, { id: false }  do |t|
      t.string :masanpham
      t.string :maloaisp
      t.string :mathuonghieusp
      t.string :tensanpham
      t.decimal :giaban
      t.decimal :giakhuyenmai
      t.boolean :gioitinh
      t.text :mota
    end
    execute ("ALTER TABLE sanphams ADD PRIMARY KEY (masanpham)")
  end
end
