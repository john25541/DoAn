Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :khachhangs

  resources :dondathangs

  resources :sanphams
  get 'cart', to: 'sanphams#cart', as: 'cart'
  post 'sanphams/add_to_cart', to:'sanphams#add_to_cart', as:  'add_to_cart'
  delete 'sanphams/remove_from_cart', to: 'sanphams#remove_from_cart', as: 'remove_from_cart'

  resources :loaisanphams

  get 'trangchu/index'
  root "trangchu#index"
end
