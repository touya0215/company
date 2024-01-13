Rails.application.routes.draw do

  namespace :admins do
    get 'genres/index'
    get 'genres/edit'
  end
  root to: "customers/homes#top"
  get "/", to: 'customers/homes#top', as: :customers_homes_top
  get "homes/about", to: 'customers/homes#about', as: :customers_homes_about
  get 'search', to: 'customers/homes#search', as: :customers_homes_search
  # devise_for :admins
  # devise_for :customers
  devise_for :customer, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }
  devise_for :admins, skip: [:registrations, :passwords] ,controllers: {
    sessions:      'admins/sessions',
   # passwords:     'admin/passwords',
   # registrations: 'admin/registrations'
  }
  # namespace :customers do
  #   get 'homes/top'
  #   get 'homes/about'
  # end
  namespace :customers do
    get 'customers/new'
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
  end
  namespace :customers do
    get 'likes/index'
  end
  namespace :customers do
    get 'posts/new'
    get 'posts/index'
    get 'posts/show'
    get 'posts/edit'
  end
  namespace :admins do
    get 'posts/new'
    get 'posts/index'
    get 'posts/show'
    get 'posts/edit'
  end
  namespace :admins do
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
  end
  namespace :admins do
    get 'homes/top'
    get 'homes/about'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
