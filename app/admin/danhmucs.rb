ActiveAdmin.register Danhmuc do
  permit_params :madanhmuc, :tendanhmuc

  index do
    selectable_column
    id_column
    column :tendanhmuc
    actions
  end

  filter :madanhmuc
  filter :tendanhmuc
  form  title: 'Tạo danh mục' do  |f|
    f.inputs 'tạo mới danh mục'  do
      f.input :madanhmuc , label: 'Mã danh mục'
      f.input :tendanhmuc, label: 'Tên danh mục'
    end
    f.inputs 'tạo mới loại sản phẩm' do
      f.has_many :loaisanphams , heading: false do |a|
        a.input :maloai
      end
    end
    f.actions
  end
end
