Rails.application.routes.draw do

  root "dashboard#show"

  resource :session, only:[:new, :create, :destroy]
  resources :users do 
    resource :dashboard, only:[:show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
