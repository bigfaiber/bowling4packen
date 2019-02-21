Rails.application.routes.draw do
  root 'users#show'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users, only: [:show] do
    resources :games
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
