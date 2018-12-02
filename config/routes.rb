Rails.application.routes.draw do

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
	root 'home#index'

  get '/login', to: 'login#index', as: 'login'

  post '/login', to: 'login#login'

  get '/register', to: 'register#index', as: 'register'




  #admin pages
  get '/admin', to: 'admin#index'

  get '/admin/shop', to: 'admin#shop'

  get '/admin/products', to: 'product#index'

  get '/admin/product/add', to: 'product#create'

  post '/admin/product/add', to: 'product#add'

  get '/admin/product/delete/:id', to: 'product#destroy'

  get '/admin/customers', to: 'admin#customers'

  get '/admin/customer/delete/:id', to: 'user#destroy'




  #customer pages
  get '/u/dashboard', to: 'customer#index'
  get '/u', to: redirect('/u/dashboard')

  get '/u/shoppe', to: 'customer#shop'








  #test url only
  get '/users', to: 'user#index'

  post '/user/create'

	get '/user/:id', to: 'user#show'
  
end
