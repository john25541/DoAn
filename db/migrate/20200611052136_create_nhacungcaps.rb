class CreateNhacungcaps < ActiveRecord::Migration[5.1]
  def change
    create_table :nhacungcaps, {id: false} do |t|
      t.string :mancc
      t.string :tenncc
      t.string :sdtncc
      t.string :diachincc
      t.string :emailncc
    end
  end
end
