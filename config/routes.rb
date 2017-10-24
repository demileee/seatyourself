Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  resources :restaurants do
    resources :reservations
  end
  resources :users, except: %i(destroy) do
    resources :reservations, only: %i(destroy edit update)
  end
end
