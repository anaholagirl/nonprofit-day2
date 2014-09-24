Rails.application.routes.draw do

  root to: "nonprofits#index"

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  resources :nonprofits
  resources :donations
  resources :plans
  resources :subscriptions

  resources :nonprofits do
    resources :donations, except: [:edit, :update, :destroy]
  end

  resources :users do
    resources :donations, except: [:edit, :update, :destroy]
  end

  resources :nonprofits do
    resources :subscriptions
  end

  resources :users do
    resources :subscriptions
  end

  resources :plans do
    resources :subscriptions
  end


end
