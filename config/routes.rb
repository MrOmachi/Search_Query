Rails.application.routes.draw do
  get 'search', to: 'search#index'
  get 'search/show', to: 'search#show'
  devise_for :users
  resources :posts
  root "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
