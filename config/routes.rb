Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "movies" => "movies#index"
  root to: 'main#index'

  get "sign_in", to: 'sessions#new'
  post "sign_in", to: 'sessions#create'
  delete "logout", to: 'sessions#destroy'

  resources :movies, only: [:index, :show, :new, :create, :edit, :update]
end
