Rails.application.routes.draw do
  resources :member_payments
  resources :billing_accounts
  resources :gl_accounts
  resources :trainers
  resources :schedules
  root 'access#menu'
  get 'access/menu'
  get 'access/blog'
  get 'access/week_calendar'

  namespace :admin do
      resources :users
      resources :gymsites
      resources :members
      resources :trainers
      resources :schedules

      root to: "users#index"
    end
  resources :members
  devise_for :users
  resources :gymsites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
