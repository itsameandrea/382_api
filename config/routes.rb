Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      # inside of this block it works as it always did
      resources :restaurants, only: [ :index, :show, :update, :create, :destroy ]
    end
  end

  # 1. create the route
  # 2. create the controller action
  # 3. create the view

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
