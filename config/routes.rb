Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'foods#index'

  get '/foods/new' => 'foods#new'
  post '/foods' => 'foods#create'

  get '/foods/:id' => 'products#show'

  get '/foods/:id/edit' => 'foods#edit'
  patch '/foods:id' => 'foods#update'

  delete '/foods/:id' => 'foods#destroy' 

  #

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end

