Rails.application.routes.draw do
  devise_for :users

  root to: "taskopolis#index"
  get 'static_pages/home'

end
