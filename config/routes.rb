Rails.application.routes.draw do

  resources :users, only: [:new, :create, :update, :show] do 
    resources :rounds, only: [:new,:create]
  end
  

end
