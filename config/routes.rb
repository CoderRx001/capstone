Rails.application.routes.draw do
  get 'calendar/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html    

  get '/' => 'pages#index'
  get '/pages/:page' => 'pages#show'
  resources :pages, only: [:index, :show]
      #/pages/about
      #/pages/menu
      #/pages/pricing

  resources :recipes
  # get '/recipes' => 'recipes#index'
  # get '/recipes/new' => 'recipes#new'
  # post '/recipes' => 'recipes#create'
  # get '/recipes/:id(.:' => 'recipes#show'
  # get '/recipes/:id/edit' => 'recipes#edit'
  # patch '/recipes/:id' => 'recipes#update'
  # delete '/recipes/:id' => 'recipes#destroy'

  resources :foods
  # get '/foods' => 'foods#index'
  # get '/foods/new' => 'foods#new'
  # post '/foods' => 'foods#create'
  # get '/foods/:id' => 'foods#show'
  # get '/foods/:id/edit' => 'foods#edit'
  # patch '/foods/:id' => 'foods#update'
  # delete '/foods/:id' => 'foods#destroy' 

  resources :users
  # get '/users/:id' => 'users#show'
  # get 'users/:id/edit', to: "users#edit", as: "edit_user"
  # patch 'users/:id', to: "users#update"

  resource :calendar, only: [:show], controller: :calendar
  root to: "calendar#show"

  #

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/profile/new' => 'profile#new'
  post '/profile' => 'profile#create'
  get '/profile/:id' => 'profile#show'
  get '/profile/:id/edit' => 'profile#edit'
  patch '/profile:id' => 'profile#update'
  delete '/profile/:id' => 'profile#destroy'

end

