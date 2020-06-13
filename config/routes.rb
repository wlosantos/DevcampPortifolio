Rails.application.routes.draw do

  resources :portifolios
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :blogs
  
  root 'blogs#index'

end
