Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'pages/recommendations'
  get 'pages/blogs'
  get 'pages/news'
  get 'pages/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
