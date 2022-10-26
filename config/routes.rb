Rails.application.routes.draw do

  namespace :authentication, path: '', as: '' do
    resources :users, only: [:new, :create], path: '/register', path_names: { new: '/' }
    resources :sessions, only: [:new, :create, :destroy], path: '/login', path_names: { new: '/' }

  end
  get 'pages/index'
  get 'pages/faq'
  get 'pages/contact'
  get 'pages/home'
  get 'pages/blog'
  get 'pages/about'
  resources :users, only: :show, path: '/user', param: :username
  resources :categories, except: :show
  resources :products, path: '/'
  root "products#index"
end
