Rails.application.routes.draw do

  resources :blogs
  resources :portifolios, except: [:show]
  get 'portifolio/:id', to: 'portifolios#show', as: 'portifolio_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root 'pages#home'

end
