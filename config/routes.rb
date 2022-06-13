Rails.application.routes.draw do
  resources :duyurus
  devise_for :admins
  get 'dashboard/index'
  get 'dashboard/editAdmin'
  get 'home/index'
  get 'home/underconstruction'
  root 'home#index'
  resources :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
