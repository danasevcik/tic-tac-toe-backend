Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :sessions

  post '/login', to: 'auth#create'

  post '/find-user', to: 'users#find'

  post '/easy-session', to: 'sessions#create_easy'
  post '/hard-session', to: 'sessions#create_hard'
  post '/easy-comp-session', to: 'sessions#create_comp_easy'

  post '/easy-user', to: 'users#easy_user'
  post '/hard-user', to: 'users#hard_user'

end
