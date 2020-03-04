Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :profiles, only: [:show, :edit, :update]
  resources :jam_sessions, only: [:index]

  # namespace :user do
  #   root :to => "profiles#edit"
  # end
end
