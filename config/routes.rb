Shouter::Application.routes.draw do
  root "homes#show"

  resource :dashboard, only: [:show]

  resources :shouts, only: [:create]
end
