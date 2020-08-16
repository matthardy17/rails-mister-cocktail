Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:show, :create, :new, :index, :update, :edit] do
    resources :doses, only: [:create, :new ]
  end
  resources :doses, only: [:destroy]
end
