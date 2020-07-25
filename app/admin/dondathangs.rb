ActiveAdmin.register Dondathang do
  permit_params :madondathang, :ngaydathang, :ngaygiaohang, :tinhtrang
  breadcrumb do
    ['admin', 'Đơn đặt hàng']
  end

  menu label: "Đơn đặt hàng"

  index do
    selectable_column
    id_column
    column :madondathang
    column :ngaydathang
    column :ngaygiaohang
    column :tinhtrang
    actions
  end

  filter :madondathang
  filter :ngaydathang
  filter :ngaygiaohang
  filter :tinhtrang
end
