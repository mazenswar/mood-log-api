Rails.application.routes.draw do
  resources :thoughts
  resources :distortions
  resources :log_sub_emotions
  resources :sub_emotions
  resources :log_emotions
  resources :emotions
  resources :logs
  resources :users

  get '/auth', to: 'auth#persist'
  post '/login', to: 'auth#login'
  get '/static-data', to: 'static_data#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
