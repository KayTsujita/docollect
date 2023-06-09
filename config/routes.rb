Rails.application.routes.draw do
  devise_for :users
  root to: "groups#index"
  resources :groups, only: [:new, :create, :show] do
    resources :documents, only: [:index, :create, :show]
  end
end
