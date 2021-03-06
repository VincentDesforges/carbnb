Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show

  resources :cars do
    resources :bookings, only: [:new, :create, :index, :destroy]

    resources :carphotos, only: [:index, :destroy]
    resources :reviews, only: [  :create ]
  end


  resources :bookings, only: :show

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
