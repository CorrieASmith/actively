Rails.application.routes.draw do
  root :to => "home#index"
  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
  end

  :targets do
    resources :exercises
  end
end
