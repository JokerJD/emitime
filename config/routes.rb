Rails.application.routes.draw do
  resources :bios, only: [:edit, :update]
  resources :authentications, only: [:destroy]
  get 'bios/index'

  get '/home', to: 'home#index'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

	authenticated :user do
		root 'bios#index', as: 'authenticated_root'
	end
	devise_scope :user do
		root 'devise/sessions#new'
	end
end
