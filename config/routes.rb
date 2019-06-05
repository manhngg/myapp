Rails.application.routes.draw do
	devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
	devise_scope :user do
		get '/users/sign_out' => 'devise/sessions#destroy'
	end
	root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'

	get 'search', to: 'search#index'
	resources :products
	resources :products do
		resources :variants, except: [:show]
	end
	resources :variants, except: [:show]
	resources :products do
		resources :comments
	end
	resources :cart_items
	get 'cart', to: 'cart#index'
	resources :wish_items
	get 'wish', to: 'wish#index'
	resources :orders
	resources :users

	namespace :admin do
    root 'static_pages#home'
    get  '/help',    to: 'static_pages#help'
    get  '/about',   to: 'static_pages#about'
    get  '/contact', to: 'static_pages#contact'

    resources :users
    resources :products
    resources :orders
  end
end
