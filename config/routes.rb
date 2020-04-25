Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'subjects#welcome'
  
  get "/welcome" => "subjects#welcome"

  resources :subjects
  resources :users
  resources :roles

  
end
