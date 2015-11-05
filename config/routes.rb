Rails.application.routes.draw do
  devise_for :users
  root :to => "home#index"
  resources :targets do
    resources :exercises
  end
end
