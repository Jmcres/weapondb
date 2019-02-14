Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :weapons
      resources :users
      resources :user_weapons
      post "/login", to: "users#login"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
