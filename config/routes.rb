Rails.application.routes.draw do
  resources :services
  resources :customers
  resources :pages do
    collection do
      get :welcome
      get :about

    end
  end
  root "pages#show", page: "welcome"
  # root to: "customers#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
