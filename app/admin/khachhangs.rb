ActiveAdmin.register Khachhang do
  permit_params :email, :password, :password_confirmation	
  breadcrumb do
    ['admin', 'Khách hàng']
  end
  menu label: "Khách hàng"
  index do	
    selectable_column	
    id_column	

    column :email	
    column :encrypted_password	
    column :create_at	
    column :update_at	

    actions	
  end	

  form do |f|	
    f.inputs do	
      f.input :email	
      f.input :password	
      f.input :password_confirmation	
    end      	
    f.actions      	
  end
end
