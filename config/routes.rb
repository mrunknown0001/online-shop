Rails.application.routes.draw do

	root 'home#index'

  get 'user/index'

	get '/user/:id', to: 'user#show'

  get 'login/', to: 'login#index'

  get 'register/', to: 'register#index'
  
end
