ActiveAdmin.register Thuonghieu do
  breadcrumb do
    ['admin', 'Thương hiệu']
  end
  menu label: "Thương hiệu"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :mathuonghieu, :tenthuonghieu, :hinhanhthuonghieu, :diachithuonghieu, :emailthuonghieu
  #
  # or
  #
  # permit_params do
  #   permitted = [:mathuonghieu, :tenthuonghieu, :hinhanhthuonghieu, :diachithuonghieu, :emailthuonghieu]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
