Rails.application.routes.draw do
  resources :lists
  resources :tasks

  devise_for :users

  root to: "taskopolis#index"
end
