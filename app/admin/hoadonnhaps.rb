ActiveAdmin.register Hoadonnhap do
  breadcrumb do
    ['admin', 'Hóa đơn nhập']
  end
  menu label: "Hóa đơn nhập"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :mahoadonnhap, :ngapnhap, :thanhtien
  #
  # or
  #
  # permit_params do
  #   permitted = [:mahoadonnhap, :ngapnhap, :thanhtien]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
