Rails.application.routes.draw do

  resources :nonprofits
  resources :donations

  resources :nonprofits do
    resources :donations, except: [:edit, :update, :destroy]
  end

end
