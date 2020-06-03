Rails.application.routes.draw do
  resources :sanphams
  resources :loaisanphams
  get 'trangchu/index'
  root "trangchu#index"
end
