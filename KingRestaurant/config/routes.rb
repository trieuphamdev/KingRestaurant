Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  resources :food_items
	root 'pages#home'
	get '/contact_us', to: 'pages#contact_us'
	get '/menu', to: 'sections#index'
end
