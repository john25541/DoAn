ActiveAdmin.register Nhacungcap do
  breadcrumb do
    ['admin', 'Nhà cung cấp']
  end
  menu label: "Nhà cung cấp"

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :mancc, :tenncc, :sdtncc, :diachincc, :emailncc
  #
  # or
  #
  # permit_params do
  #   permitted = [:mancc, :tenncc, :sdtncc, :diachincc, :emailncc]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
