Rails.application.routes.draw do
  get 'groups/index'
  devise_for :users
  root to: "groups#index"
end
