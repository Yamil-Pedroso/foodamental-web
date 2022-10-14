Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  get 'pages/recommendations'
  get 'pages/blogs'
  get 'pages/news'
  get 'pages/about'

  resources :testimonials
  resources :recipes do
    resources :comments
  end
end
