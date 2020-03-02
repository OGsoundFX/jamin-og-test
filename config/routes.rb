Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :jam_sessions, only: [:index, :show, :new, :create] do
    resources :spots, only: [:new, :create]
    resources :participations, only: [:create]
  end

  resources :profiles, only: [:show, :edit, :update]
  resources :dashboards, only: [:my_events]

  namespace :user do
    root :to => "profiles#edit"
  end
end
