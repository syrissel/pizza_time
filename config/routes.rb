Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  get 'deals/index'
  get 'deals/show'
  get 'pizzas/index'
  get 'pizzas/show'
  resources :pizzas, only: [:index, :show]
  resources :deals, only: [:index, :show]
  resources :users, only: [:index, :show]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #  get 'pizza/index'
  # get 'pizza/show'
  # get 'static/index'
  # get 'user/index'
  # get 'user/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  

  root :controller => 'static', :action => :index
end
