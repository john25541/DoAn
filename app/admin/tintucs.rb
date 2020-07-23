ActiveAdmin.register Tintuc do
  permit_params :matintuc, :tieude, :ngaybatdau, :ngayketthuc, :mota, :hinhanhtintuc

  index do
    selectable_column
    id_column
    column :matintuc
    column :tieude
    column :ngaybatdau
    column :ngayketthuc
    column :mota
    column :hinhanhtintuc
    actions
  end

  filter :matintuc
  filter :tieude
  filter :ngaybatdau
  filter :ngayketthuc
  filter :mota
  filter :hinhanhtintuc

  form title: "TẠO TIN TỨC" do |f|
    f.inputs do
      f.input :matintuc , label: "Mã tin tức"
      f.input :tieude, label: "Tiêu đề"
      f.input :ngaybatdau, label: "Ngày bắt đầu"
      f.input :ngayketthuc, label: "Ngày kết thúc"
      f.input :mota, label: "Mô tả"
      f.input :hinhanhtintuc, label: "Hình ảnh tin tức"
    end
    f.actions
  end 
end
