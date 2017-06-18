Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'pages#index'
  get '/pages/:page' => 'pages#show'
      #/pages/about
      #/pages/menu
      #/pages/pricing

  get '/foods' => 'foods#index'
  get '/foods/new' => 'foods#new'
  post '/foods' => 'foods#create'
  get '/foods/:id' => 'foods#show'
  get '/foods/:id/edit' => 'foods#edit'
  patch '/foods:id' => 'foods#update'
  delete '/foods/:id' => 'foods#destroy' 

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

