Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/dashboard", to: "pages#dashboard", as: :dashboard
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :only => [:show, :edit, :update]

  resources :flats do
    resources :bookings, only: [ :create ]
  end
  resources :bookings, only: [ :destroy]

  resources :bookings, only: [] do
    resources :reviews, only: [:new, :create]
  end


  resources :bookings, only: [:show, :update] do
      put :accept
      put :reject
  end

end
