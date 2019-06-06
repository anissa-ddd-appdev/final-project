Rails.application.routes.draw do
  devise_for :users
  
  match("/", { :controller => "index", :action => "regions", :via => "get" })
  
  match("/united_states", { :controller => "index", :action => "united_states", :via => "get" })
  
  match("/mexico", { :controller => "index", :action => "mexico", :via => "get" })
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
