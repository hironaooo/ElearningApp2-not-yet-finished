Rails.application.routes.draw do
  root 'static_pages#home'
  resources :users
  resources :sessions, only: [:create] 
  get '/login', to: 'sessions#new'
	delete '/logout', to: 'sessions#destroy'
end
