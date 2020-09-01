Rails.application.routes.draw do
  resources :signups, only: [:new, :create]
  resources :activities, only: [:index, :show]
  resources :campers, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
