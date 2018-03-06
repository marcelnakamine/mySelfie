Rails.application.routes.draw do
  resources :photos
  resources :tags
  resources :pages
  root to: 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
