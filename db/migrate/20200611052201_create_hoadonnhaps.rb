class CreateHoadonnhaps < ActiveRecord::Migration[5.1]
  def change
    create_table :hoadonnhaps, {id: false} do |t|
      t.string :mahoadonnhap
      t.date   :ngapnhap
      t.decimal :thanhtien

      t.timestamps
    end
  end
end
