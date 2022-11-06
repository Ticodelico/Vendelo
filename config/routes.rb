Rails.application.routes.draw do
  get 'favorites/create'

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
  resources :favorites, only: [:index, :create, :destroy], param: :product_id
  resources :users, only: :show, path: '/user', param: :username
  resources :categories, except: :show
  resources :products, path: '/'
  root "products#index"
end
