Rails.application.routes.draw do
  get 'tables/index'
  get 'tables/show'
  get 'tables/new'
  get 'tables/create'
  get 'tables/destroy'
  get 'tables/edit'
  get 'tables/update'
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/new'
  get 'restaurants/create'
  get 'restaurants/destroy'
  get 'restaurants/edit'
  get 'restaurants/update'
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'orders/create'
  get 'orders/destroy'
  get 'orders/edit'
  get 'orders/update'
  get 'orders/confirmation'
  get 'menus/index'
  get 'menus/show'
  get 'menus/new'
  get 'menus/create'
  get 'menus/destroy'
  get 'menus/edit'
  get 'menus/update'
  get 'dishes/index'
  get 'dishes/show'
  get 'dishes/new'
  get 'dishes/create'
  get 'dishes/destroy'
  get 'dishes/edit'
  get 'dishes/update'
  get 'categories/index'
  get 'categories/show'
  get 'categories/new'
  get 'categories/create'
  get 'categories/destroy'
  get 'categories/edit'
  get 'categories/update'
  devise_for :users


  root to: 'pages#home' do
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :restaurants do
    resources :menus do
      resources :categories
    end
    resources :dishes
  end

  resources :tables do
    resources :orders, only: [:index, :new, :create, :show, :edit, :update] do
      member do
        get :confirmation
      end
    end
  end

  resources :orders, only: [] do
    resources :dishes, only: :show
  end

  resources :qr_codes, only: [:new, :create]

  get 'qr_codes', to: "qr_codes#new"

  resources :tables
  get '/design', to: 'pages#design'


end
