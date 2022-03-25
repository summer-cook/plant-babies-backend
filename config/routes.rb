Rails.application.routes.draw do
  #get 'plant/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :plants  
  end
end
