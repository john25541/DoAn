ActiveAdmin.register Chitietsp do
  permit_params :machitietsp,:sanpham_id,:mausp,:size ,:hinhanhsp,:soluongton
  index do
    selectable_column

    column :machitietsp
    column :sanpham_id
    column :mausp
    column :size 
    column :hinhanhsp
    column :soluongton

    actions
  end
    filter :machitietsp
    filter :sanpham_id
    filter :mausp
    filter :size 
    filter :hinhanhsp
    filter :soluongton

  form do |f|
    f.inputs do
      f.input :machitietsp, label: 'Mã chi tiết sản phẩm'
      f.input :sanpham_id, label: 'sản phẩm', as: :select, :collection => Sanpham.all.map{|sanpham| [sanpham.tensanpham, sanpham.masanpham]}
      f.input :mausp, label: 'Màu'
      f.input :size , label: 'size'
      f.input :hinhanhsp, label: 'Hình ảnh'
      f.input :soluongton, label: 'Số Lượng'
    end
    f.actions
  end
  
end
