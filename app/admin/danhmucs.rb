ActiveAdmin.register Danhmuc do
  permit_params :madanhmuc, :tendanhmuc,loaisanphams_attributes: [:maloai, :danhmuc_id,:tenloai]
  breadcrumb do
    ['admin', 'Danh Mục']
  end
  
  menu :label => "Danh mục"

  index title: "Danh mục" do
    selectable_column
    id_column
    column :tendanhmuc

    actions
  end
  

  filter :madanhmuc
  filter :tendanhmuc

  form do  |f|
    f.inputs 'tạo mới danh mục'  do
      f.input :madanhmuc , label: 'Mã danh mục'
      f.input :tendanhmuc, label: 'Tên danh mục'
    end
    f.inputs 'Loai sản phẩm' do
      f.has_many :loaisanphams do |form|
        form.input :maloai, label: "Mã Loại"
        form.input :tenloai, label: "Tên Loại"          
      end
    end
    f.actions
  end
end
