ActiveAdmin.register Sanpham do
  permit_params :masanpham, :loaisanpham_id, :thuonghieu_id, :tensanpham, :giaban, :giakhuyenmai, :mota,
                chitietsps_attributes: [:machitietsp, :sanpham_id, :mausp, :size, :soluongton, :hinhanhsp]
  breadcrumb do
    ["admin", "Sản phẩm"]
  end
  menu label: "Sản phẩm"
  index title: "Sản phẩm" do
    selectable_column
    column "Mã sản phẩm", :masanpham
    column "Loại sản phẩm", :loaisanpham_id
    column "Thương hiệu", :thuonghieu_id
    column "Tên sản phẩm", :tensanpham
    column "Giá bán", :giaban
    column "Khuyến mãi", :giakhuyenmai

    actions
  end
  show do
    panel "Thông tin sản phẩm" do
      attributes_table_for sanpham do
        row "Mã sản phẩm", &:masanpham
        row "Loại sản phẩm", &:loaisanpham_id
        row "Thương hiệu", &:thuonghieu_id
        row "Tên sản phẩm", &:tensanpham
        row "Giá bán", &:giaban
        row "Mô tả" do |r|
          raw r.mota
        end
        h2 "Chi tiết #{sanpham.masanpham}", style: "font-size: bold"
        h4 do  
          button_to("Thêm chi tiết", new_admin_sanpham_chitietsp_path(sanpham), method: :get) 
        end
        table_for sanpham.chitietsps do
          column "Mã chi tiết", :machitietsp
          column "Màu", :mausp
          column "Size", :size
          column "Số lượng tồn", :soluongton
          column "Hình ảnh", :hinhanhsp
          column "Thao tác" do |sp|  
            link_to("Show", admin_sanpham_chitietsp_path(sanpham_id: sp.sanpham_id, id: sp.machitietsp))
          end
        end 
      end
    end
  end
  form title: "Thêm sản phẩm" do |f|
    f.object.masanpham = "SP#{Time.now().to_i}"
    f.inputs "Sản phẩm" do
      f.input :masanpham, label: "Mã sản phẩm: " 
      f.input :loaisanpham_id, label: "Loại sản Phẩm: ", as: :select, :collection => Loaisanpham.all.map { |loaisp| [loaisp.tenloai, loaisp.maloai] }
      f.input :thuonghieu_id, as: :select, :collection => Thuonghieu.all.map { |thuonghieu| [thuonghieu.tenthuonghieu, thuonghieu.mathuonghieu] }, label: "Thương hiệu: "
      f.input :tensanpham, label: "Tên sản phẩm: "
      f.input :giaban, label: "Giá bán: "
      f.input :giakhuyenmai, label: "Giá Khuyến mãi: "
      f.input :mota, label: "Mô tả: "
    end
    f.inputs 'Chi tiết sản phẩm' do
      f.has_many :chitietsps do |form|
        form.input :mausp, label: "Màu sản phẩm: "
        form.input :size, label: "Size: "
        form.input :soluongton, label: "Số lượng" , as: :number
        form.input :hinhanhsp, label: "Mã Loại" ,  as: :file     
      end
    end
    f.actions
  end
end
