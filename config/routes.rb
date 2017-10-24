Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  resources :restaurants do
    resources :reservations
  end
<<<<<<< HEAD
  resource :sessions, only: [:create, :new, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
  resources :users, except: %i(destroy) do
    resources :reservations, only: %i(destroy edit update)
  end
>>>>>>> 833a02838e9880453bb9730be4418a73d8b6e4a4
end
