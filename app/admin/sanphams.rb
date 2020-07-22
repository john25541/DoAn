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
    if f.object.new_record?
      f.has_many :chitietsps do |ct|
        ct.input :machitietsp, label: "Mã chi tiết sp"
        ct.input :size, label: "Size"
        ct.input :mausp, label: "Màu"
        ct.input :soluongton, label: "Số lượng tồn"
      end
    end
    actions
  end

  controller do
    def create
      chitiet = Chitietsps.create!(chitiet_params)
  
      params[:chitietsps][:sanphams_attributes].each do |_, u|
        Sanpham.create!(loaisanpham_id: u[:loaisanpham_id], thuongwhieu_id: u[:thuonghieu_id], tensanpham: u[:tensanpham], giaban: u[:giaban], giakhuyenmai: u[:giakhuyenmai], mota: u[:mota]) do |sp|
          sp.chitietsps = chitiet
        end
      end
  
      flash[:notice] = 'Thêm Sản Phẩm Mới Thành Công'
      redirect_to admin_sanphams_path(chitiet)
    end
  end
end
