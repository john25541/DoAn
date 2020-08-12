class CreateKhuyenmais < ActiveRecord::Migration[5.1]
  def change
    create_table :khuyenmais, { id: false } do |t|
      t.string :makhuyenmai 
      t.string :tenkhuyenmai
      t.datetime :ngaybatdau
      t.datetime :ngayketthuc
      t.decimal :KMtheogia
      t.float :KMtheophantram
    end
    execute ("ALTER TABLE khuyenmais ADD PRIMARY KEY (makhuyenmai)")
  end
end
