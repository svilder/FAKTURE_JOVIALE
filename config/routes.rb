Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :bills

  resources :clients

  resources :companies

  resources :items

  resources :bank_accounts

  get "/dashboard", to: "pages#dashboard"
end
