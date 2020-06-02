class CreateDanhmucs < ActiveRecord::Migration[5.1]
  def change
    create_table :danhmucs, { id: false }  do |t|
      t.string :madanhmuc
      t.string :tendanhmuc
    end
    execute ("ALTER TABLE danhmucs ADD PRIMARY KEY (madanhmuc)")
  end
end
