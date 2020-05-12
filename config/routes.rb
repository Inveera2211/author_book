Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #root_path 'home#index'
  root :to => "home#index"

  resources :authors
  resources :books


  #apis routes
  namespace :api do
  #get '/authors/:id' => 'api'
  get '/authors/:id', to: 'authors#authors_books'
  end

end
