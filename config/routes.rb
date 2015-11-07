Rails.application.routes.draw do
  root :to => "home#index"
  # get '/users/:id', :to => 'users#show', :as => :user
  devise_for :users
  resources :users

  resources :targets do
    resources :exercises
  end

  resources :breakfasts do
    resources :breakfastingredients
  end

  resources :lunches do
    resources :lunchingredients
  end

  resources :dinners do
    resources :dinneringredients
  end

  resources :snacks do
    resources :snackingredients
  end
end
