Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
        get 'users/login', to: "users#login" 
       
        resources :questions, only: :index do
          resources :answers, only: :index
        end
        resources :users, only: [:create, :index] do
          resources :answers, only: :index
          
          resources :questions, only: [:create, :update, :show] do
            resources :answers, only: [:create, :update, :destroy]
          end
      end
    end
  end


end
