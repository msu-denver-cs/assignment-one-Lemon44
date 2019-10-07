Rails.application.routes.draw do
  resources :makes
  resources :parts
  resources :cars
  
  resources :cars do
    collection do
      get 'search'
    end
  end
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
