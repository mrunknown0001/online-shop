Rails.application.routes.draw do

	root 'home#index'

  # resources :users
  # resources :sessions, only: [:new, :create, :destroy]

  get 'logout', to: 'sessions#destroy', as: 'logout'

  get '/login', to: 'login#index', as: 'login'

  post '/login', to: 'sessions#create'

  get '/register', to: 'register#index', as: 'register'




  #admin pages
  get '/admin', to: 'admin#index', as: 'admin_dashboard'

  get '/admin/shop', to: 'admin#shop'

  get '/admin/products', to: 'product#index'

  get '/admin/product/add', to: 'product#create'

  post '/admin/product/add', to: 'product#add'

  get '/admin/product/delete/:id', to: 'product#destroy'

  get '/admin/orders', to: 'admin#orders'

  get '/admin/customers', to: 'admin#customers'

  get '/admin/customer/delete/:id', to: 'user#destroy'




  #customer pages
  get '/u/dashboard', to: 'customer#index', as: 'customer_dashboard'
  get '/u', to: redirect('/u/dashboard')

  get '/u/shoppe', to: 'customer#shop'

  get '/u/buy/product/:id', to: 'customer#buy'

  post '/u/place/order', to: 'order#place'

  get '/u/myOrders', to: 'customer#myorders'

  get '/u/payments', to: 'customer#payments'







  #test url only
  get '/users', to: 'user#index'

  post '/user/create'

	get '/user/:id', to: 'user#show'
  
end
