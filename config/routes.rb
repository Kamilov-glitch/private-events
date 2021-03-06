Rails.application.routes.draw do
  match '/users', to: 'users#index', via: 'get'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :events
  resources :event_participatings, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "events#index"
end
