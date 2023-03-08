Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :freelanceresults, only: [:index]
  # resources :dashboards, only: [:index, :update]

  patch "/dashboards", to: "dashboards#update", as: "dashboard"
  get "/dashboards", to: "dashboards#index"
end
