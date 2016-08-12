Rails.application.routes.draw do
 
  resources :users
  resources :books
  resources :libraries 
  
  #Creates static page routes
  StaticPagesController.action_methods.each do |action|
    get "/#{action}", to: "static_pages##{action}", as: "#{action}"
  end

  root 'static_pages#home'
end
