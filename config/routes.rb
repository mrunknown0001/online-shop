Rails.application.routes.draw do

	get '/', to: redirect('home/index')
  get 'home/index'

  get 'login/index'
  post 'login/login'

  get 'register/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
