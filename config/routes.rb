Rails.application.routes.draw do

	root 'home#index'

  get '/users', to: 'user#index'

  post '/user/create'

	get '/user/:id', to: 'user#show'

  get '/login', to: 'login#index'

  get '/register', to: 'register#index'
  
end
