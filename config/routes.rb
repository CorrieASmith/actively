Rails.application.routes.draw do
  root :to => "home#index"
  # get '/users/:id', :to => 'users#show', :as => :user
  devise_for :users
  resources :users

  resources :targets do
    resources :exercises
  end

  resources :breakfasts do
    resources :breakfast_ingredients
  end

  resources :lunches do
    resources :lunch_ingredients
  end

  resources :dinners do
    resources :dinner_ingredients
  end

  resources :snacks do
    resources :snack_ingredients
  end
end
