Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      post '/allergen/search' => 'allergens#search'
      get '/allergen' => 'allergens#index'
      # resources :allergen
    end
  end
end
