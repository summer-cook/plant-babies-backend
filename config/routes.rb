Rails.application.routes.draw do
  #get 'plant/index'
  # local api route: http://localhost:3000/api/plants
  namespace :api do
    resources :plants  
  end
end
