Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :freelanceresults, only: [:new]
  # resources :dashboards, only: [:index, :update]

  patch "/dashboards", to: "dashboards#update", as: "dashboard"
  get "/dashboard", to: "dashboards#index"
end
