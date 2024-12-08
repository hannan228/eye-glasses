Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home_pages#index"

  resources :dashboards, only: [:index] do
    collection do
      get :kedin
      get :erkek
      get :blue_block
      get :sale
      get :kids
    end
  end

  resources :erkeks, only: [:index] do

  end


end
