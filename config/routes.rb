Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :pages, only: [:update], param: :id
  resources :freelanceresults, only: [:index]
  resources :freelancespecs
  resources :dashboards, only: [:index, :update]

end
