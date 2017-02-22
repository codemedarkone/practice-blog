Rails.application.routes.draw do
  resources :portfolios
  get 'blogs/index'

  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  get 'blogs/home'

  get 'blogs/about'

  get 'blogs/contact'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
