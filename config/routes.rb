Rails.application.routes.draw do
  devise_for :khachhangs
  resources :dondathangs
  resources :sanphams
  resources :loaisanphams
  get 'trangchu/index'
  root "trangchu#index"
end
