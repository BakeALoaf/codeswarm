Rails.application.routes.draw do
  get 'projects/new'
  get 'projects/create'
  devise_for :users
  root to: "pages#home"

  resources :pages, only: [:update], param: :id
  resources :freelanceresults, only: [:index, :show]
  resources :freelancespecs, only: [:new, :create, :edit, :update, :destroy]
  resources :dashboards, only: [:index, :update]
  resources :projects, only: [:new, :create]

end
