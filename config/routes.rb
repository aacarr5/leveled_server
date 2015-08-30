Rails.application.routes.draw do

  root '/users/new'

  resources :users, only: [:new, :create, :update] do 
    resources :rounds, only: [:new,:create]
  end
  

end
