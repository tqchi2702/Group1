require 'sidekiq/web'

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as:'rails_admin'
  resources :waiters
  resources :categories
  resources :dishes
  resources :orders 
  resources :orderdishes
  
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "home#index"
# Thay đổi trang mặc định khi bắt đầu vào 
root "categories#index"
  
end
