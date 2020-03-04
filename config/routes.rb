Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :jam_sessions, only: [:show, :index] do
    resources :spots, only: [:show]
  end

  resources :profiles, only: [:show, :edit, :update]

  # namespace :user do
  #   root :to => "profiles#edit"
  # end
end
