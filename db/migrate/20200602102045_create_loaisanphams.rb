class CreateLoaisanphams < ActiveRecord::Migration[5.1]
  def change
    create_table :loaisanphams, { id: false }  do |t|
        t.string :maloai
        t.string :danhmuc_id
        t.string :tenloai
    end
    execute ("ALTER TABLE loaisanphams ADD PRIMARY KEY (maloai)")
  end
end
