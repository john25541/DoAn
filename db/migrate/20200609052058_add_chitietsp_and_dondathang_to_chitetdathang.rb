class AddChitietspAndDondathangToChitetdathang < ActiveRecord::Migration[5.1]
  def change
    execute <<-SQL
      ALTER TABLE chitietdathangs
        ADD CONSTRAINT fk_chitietdathang_chitietsp
        FOREIGN KEY (chitietsp_id)
        REFERENCES chitietsps(machitietsp)
    SQL
    execute <<-SQL
      ALTER TABLE chitietdathangs
        ADD CONSTRAINT fk_chitietdathang_dondathang
        FOREIGN KEY (dondathang_id)
        REFERENCES dondathangs(madondathang)
    SQL
  end
end
