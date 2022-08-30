Rails.application.routes.draw do
  root "accommodations#index"

  resources :accommodations
end
