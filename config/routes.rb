Rails.application.routes.draw do

  resources :blogs
  resources :portifolios
  
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'

  root 'blogs#index'

end
