Rails.application.routes.draw do
  devise_for :users

  root to: 'site#index'

  authenticate :user do
    resources :draws
  end
end
