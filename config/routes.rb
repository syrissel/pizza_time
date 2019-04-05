Rails.application.routes.draw do

  get 'topping/index'
  get 'contact/index'
  #get 'about/index'
  get 'search/index'
  # get 'pizza_orders/create'
  # get 'pizza_orders/update'
  # get 'pizza_orders/destroy'
  # get 'order_items/create'
  # get 'order_items/update'
  # get 'order_items/destroy'
  # get 'carts/show'
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  get 'deals/index'
  get 'deals/show'
  get 'pizzas/index'
  get 'pizzas/show'
  resources :about, only: [:index]
  resources :toppings, only: [:index, :show]
  resources :contact, only: [:index]
  resources :pizzas, only: [:index, :show]
  resources :deals, only: [:index, :show]
  resources :users, only: [:index, :show]
  resource :cart, only: [:show]
  resources :pizza_orders, only: [:create, :update, :destroy]
  # root to: "pizzas#index"

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
