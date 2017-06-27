Rails.application.routes.draw do
  resources :lists
  resources :tasks

  devise_for :users, :controllers => {registrations: 'registrations'}

  root to: "lists#index"
end
