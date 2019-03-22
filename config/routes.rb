Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pizza/index'
  get 'pizza/show'
  get 'static/index'
  get 'user/index'
  get 'user/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
