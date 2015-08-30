Rails.application.routes.draw do


  resources :users, only: [:new, :create, :update] do 
    resources :rounds, only: [:new,:create]
  end
  

end
