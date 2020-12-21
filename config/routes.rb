Rails.application.routes.draw do
  resources :reservations
  resources :books do
    member do
      post :reserve, to: 'books#reserve'
    end
  end


  devise_for :users
  get '/users/myreservation', to: 'users#my_reservations'
  root 'books#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
