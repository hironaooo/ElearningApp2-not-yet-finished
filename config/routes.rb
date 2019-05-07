Rails.application.routes.draw do
  root 'sessions#new'
  resources :users
  resources :sessions, only: [:create] 
  get '/login', to: 'sessions#new'
	delete '/logout', to: 'sessions#destroy'

  namespace :admin do
		resources :users, only: [:index, :update, :destroy]
	end

end
