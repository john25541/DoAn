class CreateChitietsps < ActiveRecord::Migration[5.1]
  def change
    create_table :chitietsps, { id: false }  do |t|
      t.string  :machitietsp
      t.string  :sanpham_id
      t.string  :mausp
      t.string  :size
      t.text    :hinhanhsp
      t.integer :soluongton
      
      t.timestamps
    end
    execute ("ALTER TABLE chitietsps ADD PRIMARY KEY (machitietsp)")
  end
end
