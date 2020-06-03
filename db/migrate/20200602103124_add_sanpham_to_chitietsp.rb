class AddSanphamToChitietsp < ActiveRecord::Migration[5.1]
  def change
    execute <<-SQL
      ALTER TABLE chitietsps
        ADD CONSTRAINT fk_chitietsp_sanpham
        FOREIGN KEY (sanpham_id)
        REFERENCES sanphams(masanpham)
    SQL
  end
end
