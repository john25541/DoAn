class CreateChitietkms < ActiveRecord::Migration[5.1]
  def change
    create_table :chitietkms do |t|
      t.string :sanpham_id
      t.string :khuyenmai_id
      t.decimal :giakhuyenmai
    end
  end
end
