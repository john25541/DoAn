Rails.application.routes.draw do
  resources :sanphams
  get 'trangchu/index'
  root "trangchu#index"
end
