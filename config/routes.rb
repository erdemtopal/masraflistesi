Rails.application.routes.draw do
  resources :duyurus
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'dashboard/index'
  devise_for :users
  get 'home/index'
  root 'home#index'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
