Rails.application.routes.draw do
  resources :resources, except: :show
  resources :lists
  resources :tasks

  devise_for :users, :controllers => {registrations: 'registrations'}

  root to: "lists#index"
end
