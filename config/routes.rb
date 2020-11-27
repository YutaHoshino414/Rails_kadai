Rails.application.routes.draw do
  resources :tsubuyakis do
    collection do
      post :confirm
    end
  end
end
