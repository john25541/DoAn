ActiveAdmin.register Dondathang do
  permit_params :madondathang, :ngaydathang, :ngaygiaohang, :tinhtrang,
  chitietdathangs_attributes: [:id, :chitietsp_id, :dondathang_id, :soluong, :thanhtien]

  actions :all, except: [:new, :destroy]
  breadcrumb do
    ['admin', 'Đơn đặt hàng']
  end

  menu label: "Đơn đặt hàng"

  index title: "Thông tin đơn đặt hàng" do
    selectable_column
    id_column
    column :madondathang
    column :ngaydathang
    column :ngaygiaohang
    column :tinhtrang
    actions
  end

  show do
    panel "Thông tin đơn đặt hàng" do
      
      attributes_table_for dondathang do
        row "Mã đơn đặt hàng", &:madondathang 
        row "Ngày đặt hàng", &:ngaydathang
        row "Ngày giao hàng", &:ngaygiaohang
        row "Tình trạng", &:tinhtrang
        h2 "Chi tiết #{dondathang.madondathang}", style: "font-size: bold"

        table_for dondathang.chitietdathangs do
          column "Mã chi tiết đặt hàng", :id
          column "Mã đơn đặt hàng", :dondathang_id
          column "Mã sản phẩm", :chitietsp_id
          column "Số lượng sản phẩm", :soluong
          column "Thành tiền", :thanhtien
        end 
      end
    end
  end

  filter :madondathang
  filter :ngaydathang
  filter :ngaygiaohang
  filter :tinhtrang
  form title: "Chỉnh sửa đơn đặt hàng" do  |f|
    f.inputs 'Đơn đặt hàng'  do
      f.input :madondathang , label: 'Mã đơn đặt hàng: ', input_html: { readonly: true, disabled: true  }
      f.input :ngaydathang, label: 'Ngày đặt hàng: ' , input_html: { readonly: true, disabled: true  }
      f.input :ngaygiaohang, label: 'Ngày giao hàng: ' 
      f.input :tinhtrang, label: 'Tình trạng đơn hàng: '
    end
    table_for  dondathang.chitietdathangs do
      column "Mã chi tiết đặt hàng", :id
      column "Mã đơn đặt hàng", :dondathang_id
      column "Mã sản phẩm", :chitietsp_id
      column "Số lượng sản phẩm", :soluong
      column "Thành tiền", :thanhtien
    end 
    f.actions
  end
end
