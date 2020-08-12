class CreateCthoadonnhaps < ActiveRecord::Migration[5.1]
  def change
    create_table :cthoadonnhaps, {id:false} do |t|
      t.string :mmasanphamnhap
      t.string :tensanphamnhap
      t.integer :soluongnhap
      t.decimal :dongia
    end
  end
end
