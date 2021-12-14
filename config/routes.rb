Rails.application.routes.draw do
  devise_for :users
  resources :events
  # devise_for :installs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "events#index"
end
