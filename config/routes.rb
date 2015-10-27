Rails.application.routes.draw do
  root :to => "home#index"
  resources :targets do
    resources :exercises
  end
end
