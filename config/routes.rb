Rails.application.routes.draw do

  root "users#show"

  resource :session, only:[:new, :create, :destroy]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
