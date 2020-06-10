Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :khachhangs
  resources :dondathangs
  resources :sanphams
  resources :loaisanphams
  get 'trangchu/index'
  root "trangchu#index"
end
