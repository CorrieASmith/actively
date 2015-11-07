Rails.application.routes.draw do
  root :to => "home#index"
  # get '/users/:id', :to => 'users#show', :as => :user
  devise_for :users
  resources :users
  resources :targets do
    resources :exercises
  end
  resources :breakfasts
  resources :lunches
  resources :dinners
  resources :snacks
  resources :ingredients
end
