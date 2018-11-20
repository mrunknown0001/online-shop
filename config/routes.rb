Rails.application.routes.draw do

	root 'home#index'

  get '/login', to: 'login#index'

  get '/register', to: 'register#index'

  #admin pages
  get '/admin', to: 'admin#index'

  get '/admin/products', to: 'product#index'

  get 'admin/product/add', to: 'product#create'


  #customer pages
  get '/u/dashboard', to: 'customer#index'
  get '/u', to: redirect('/u/dashboard')








  #test url only
  get '/users', to: 'user#index'

  post '/user/create'

	get '/user/:id', to: 'user#show'
  
end
