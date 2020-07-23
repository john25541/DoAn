ActiveAdmin.register Loaisanpham do
  permit_params :maloai, :danhmuc_id, :tenloai

  index do
    selectable_column
    id_column
    column :danhmuc_id
    column :tenloai
    actions
  end

  filter :maloai
  filter :tenloai
  filter :danhmuc_id

  form do |f|
    f.inputs do
      f.input :danhmuc_id , label: 'Danh mục sản phẩm', as: :select, :collection => Danhmuc.all.map{|danhmuc| [danhmuc.tendanhmuc, danhmuc.madanhmuc]}
      f.input :maloai , label: 'Mã loại'
      f.input :tenloai, label: 'Tên loại'
    end
    f.actions
  end 
end
