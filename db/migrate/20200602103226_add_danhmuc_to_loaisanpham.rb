class AddDanhmucToLoaisanpham < ActiveRecord::Migration[5.1]
  def change
    execute <<-SQL
      ALTER TABLE loaisanphams
        ADD CONSTRAINT fk_loaisp_danhmuc
        FOREIGN KEY (danhmuc_id)
        REFERENCES danhmucs(madanhmuc)
    SQL
  end
end
