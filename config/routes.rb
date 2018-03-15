Rails.application.routes.draw do
  resources :carts
root 'store#index', as: 'store_index'

  resources :bikes
namespace :admin do
root 'application#index'
resources :projects, only: [:new, :create, :destroy]
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "projects#index"

resources :projects, only: [:index, :show, :edit, :update]

end
