Rails.application.routes.draw do
  resources :invoice_items
  resources :invoices
  resources :products
  resources :member_payments
  resources :billing_accounts
  resources :gl_accounts
  resources :trainers
  resources :schedules
  root 'access#menu'
  get 'access/menu'
  get 'access/blog'
  get 'access/week_calendar'
  get 'access/month_calendar'
  get 'reports/gl_accounts_list'
  get 'access/reports/index'
  get 'accounting/reports/index'
  get 'accounting/reports/menu'
  get 'access/registro_miembros'
  namespace :accounting do
    resource :reports
    resource :settings
  end

  namespace :admin do
      resources :users
      resources :gymsites
      resources :members
      resources :trainers
      resources :schedules
      resources :gl_accounts
      resources :account_types
      resources :billing_accounts
      resources :member_payments

      root to: "users#index"
    end

    namespace :settings do
      resources :gl_accounts
      resource :gymsites, only: [:edit, :update]
      # resource :members, only: [:edit, :update], as: 'member'
      resource :users, except: [:show]
  end
  resources :members
   get 'active_members', to: 'members#active_members'
  get 'inactive_members', to: 'members#inactive_members'


  devise_for :users
  resources :gymsites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
