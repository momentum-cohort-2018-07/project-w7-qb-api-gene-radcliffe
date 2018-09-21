Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'notifications/show'
      get 'notifications/index'
    end
  end
  get 'answers/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
       
      get 'users/login', to: "users#login" 
      get 'users/answer', to: "users#answer" 
      get 'users/profile/:id', to: "users#profile"
      resources :search, only: :index
      resources :questions, only: [:index, :show, :destroy] do
        resources :answers, only: [:create, :index] do
            resources :answers, only: [:create, :show]
        end
      end
      resources :users, only: [:create, :index] do
          resources :answers, only: :index
          get 'questions/user', to: 'questions#user'
          resources :questions, only: [:create, :update, :show] do
           
            resources :answers, only: [:index, :update, :destroy]
          end
      end
    end
  end


end
