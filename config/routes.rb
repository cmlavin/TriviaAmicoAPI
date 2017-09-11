Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :scores
      resources :games

      post '/login', to: 'sessions#create'
      post '/signup', to: 'users#create'
      get '/me', to: 'users#me'
    end
  end
end
