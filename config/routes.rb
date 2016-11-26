Rails.application.routes.draw do
  devise_for :users
  resources :categories, only: [:index, :show]
  # get '/users' => 'users#index'
  get '/users/:id' => 'users#show', :as => :users_show
  get '/users/:id/become_host' => 'users#become_host', :as => :become_host
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
