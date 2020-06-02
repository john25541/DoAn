class CreateChitietsps < ActiveRecord::Migration[5.1]
  def change
    create_table :chitietsps, { id: false }  do |t|
      t.string  :machitietsp
      t.string  :masp
      t.string  :mausp
      t.string  :size
      t.text    :hinhanhsp
      t.integer :soluongton
      t.timestamp
    end
    execute ("ALTER TABLE chitietsps ADD PRIMARY KEY (machitietsp)")
  end
end
