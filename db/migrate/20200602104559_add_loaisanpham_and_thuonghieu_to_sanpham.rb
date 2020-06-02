class AddLoaisanphamAndThuonghieuToSanpham < ActiveRecord::Migration[5.1]
  def change
    execute <<-SQL
    ALTER TABLE sanphams
      ADD CONSTRAINT fk_sanpham_loaisp
      FOREIGN KEY (maloaisp)
      REFERENCES loaisanphams(maloai)
    SQL
    execute <<-SQL
    ALTER TABLE sanphams
      ADD CONSTRAINT fk_sanpham_thuonghieu
      FOREIGN KEY (mathuonghieusp)
      REFERENCES thuonghieus(mathuonghieu)
    SQL
  end
end
