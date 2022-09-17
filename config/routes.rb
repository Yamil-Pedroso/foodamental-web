Rails.application.routes.draw do
  devise_for :users
  resources :testimonials
  root to: "pages#home"
  get 'pages/recommendations'
  get 'pages/blogs'
  get 'pages/news'
  get 'pages/about'
end
