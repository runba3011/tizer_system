Rails.application.routes.draw do
  root to: "top#index"
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  resources :movies
  resources :materials , only: [:index , :show]
end
