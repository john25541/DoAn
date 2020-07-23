ActiveAdmin.register Sanpham do

  permit_params :masanpham,:loaisanpham_id ,:thuonghieu_id ,:tensanpham,:giaban,:giakhuyenmai ,:gioitinh,:mota
  index do
    selectable_column

    column :masanpham
    column :loaisanpham_id
    column :thuonghieu_id
    column :tensanpham
    column :giaban
    column :giakhuyenmai
  
    actions
  end

  form title: "Thêm sản phẩm" do |f|
    f.inputs "Sản phẩm" do
      input :masanpham , label: "Mã sản phẩm"
      input :loaisanpham_id, label: 'Loại sản Phẩm', as: :select, :collection => Loaisanpham.all.map{|loaisp| [loaisp.tenloai, loaisp.maloai]}
      input :thuonghieu_id, label: 'Thương hiệu', as: :select, :collection => Thuonghieu.all.map{|thuonghieu| [thuonghieu.tenthuonghieu, thuonghieu.mathuonghieu]}
      input :tensanpham, label: "Tên sản phẩm"
      input :giaban , label: "Giá bán"
      input :giakhuyenmai, label: "Giá Khuyến mãi"
      input :mota , label: "Mô tả"
    end
    actions
  end

end
