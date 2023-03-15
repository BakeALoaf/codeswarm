Rails.application.routes.draw do
  get 'projects/new'
  get 'projects/create'
  devise_for :users
  root to: "pages#home"

  get '/tagged', to: "freelancespecs#tagged", as: :tagged

  resources :pages, only: [:update], param: :id
  resources :freelanceresults, only: [:index]
  resources :freelancespecs
  resources :dashboards, only: [:index, :update]
  resources :projects, only: [:new, :create]

end
