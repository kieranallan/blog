Rails.application.routes.draw do
  root "accommodations#index"

  resources :accommodations do
    resources :reviews
  end
end
