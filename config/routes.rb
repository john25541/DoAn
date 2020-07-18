Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :khachhangs
  get "khachhangs/profile"
  put "khachhangs/update_info"
  get "khachhangs/update_info"

  resource :carts, only: [:show]

  resources :dondathangs
  get "dondathangs/success"
  get 'dondathangs/:madondathang/cancel', to: 'dondathangs#cancel_order', as: :cancel_order

  resources :chitietdathangs
  
  
  resources :sanphams

  post 'sanphams/add_to_cart', to:'sanphams#add_to_cart', as:  'add_to_cart'
  delete 'carts/remove_from_cart', to: 'carts#remove_from_cart', as: 'remove_from_cart'

  resources :loaisanphams

  get 'trangchu/index'
  root "trangchu#index"
end
