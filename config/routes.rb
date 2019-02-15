Rails.application.routes.draw do
  resources :schedules
  root 'access#menu'
  get 'access/menu'
  get 'access/blog'
  get 'access/month_calendar'

  namespace :admin do
      resources :users
      resources :gymsites
      resources :members

      root to: "users#index"
    end
  resources :members
  devise_for :users
  resources :gymsites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
