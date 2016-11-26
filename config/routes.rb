Rails.application.routes.draw do
  devise_for :users
  resources :categories, only: [:index, :show]

  get '/users/:id' => 'users#show', :as => :users_show
  get '/users/:id/become_host' => 'users#become_host', :as => :become_host

  root to: "home#index"
end
