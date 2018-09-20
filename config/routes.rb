Rails.application.routes.draw do
  get 'answers/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
       
      get 'users/login', to: "users#login" 
      get 'users/answer', to: "users#answer" 
      resources :questions, only: [:index, :show] do
        resources :answers, only: [:create, :index] do
            resources :answers, only: [:create, :show]
        end
      end
      resources :users, only: [:create, :index] do
          resources :answers, only: :index
          
          resources :questions, only: [:create, :update, :show] do
            resources :answers, only: [:index, :update, :destroy]
          end
      end
    end
  end


end
