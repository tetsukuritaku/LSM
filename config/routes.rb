Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  # controllers:  {
  #   sessions: 'devise/sessions',
  #   registrations: 'devise/registrations'
  # }
  get "/home/about" => "homes#about"

  resources :users
  resources :books
end
