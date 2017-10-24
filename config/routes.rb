Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  resources :restaurants do
    resources :reservations
  end
  resources :users, except: %i(destroy) do
    resources :user_reservations, only: %i(index destroy edit update)
    #had to create unique "user_reservations" controller,
    #otherwise restaurant_reservations and user_reservations share same controller#action
  end
  resource :sessions, only: [:create, :new, :destroy]
end
