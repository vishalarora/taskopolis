require "sidekiq/web"

Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}

  resources :resources, except: :show
  resources :lists
  resources :tasks
  resources :task_actions

  namespace :admin do
    mount Sidekiq::Web => "/jobs"
  end

  authenticated :user do
    root :to => "lists#index"
  end
end
