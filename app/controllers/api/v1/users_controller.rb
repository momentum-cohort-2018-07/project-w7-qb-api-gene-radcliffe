class Api::V1::UsersController < ApiController
    skip_before_action :authenticate, only: [:create, :login]
    include ActionController::HttpAuthentication::Basic::ControllerMethods

    
    
    def index
        @user =User.all
    end

    def login
      # binding.pry
        authenticate_or_request_with_http_basic do |usersname, password|
            

             user = User.find_by_username(usersname)
          
             if user && user.authenticate(password) then
                respond_with do |format|
                    format.JSON: {render json: {user: {id: user.id, username: user.username, token: user.auth_token}}}

                end
                
             else 
                render json: {status: :unauthorized, message: "wrong"} 
            end
       end

    end

    def create
        
        begin
            
            user = User.new(users_params)
            if !user.save
                render json: {status: :bad_request, message: user.errors.messages}
            else
                @user = user
                render 'api/v1/users/show'
            end
            
        rescue StandardError => exception
            render json: {status: :bad_request, message: "Exception encountered: #{exception}"}
        end
    end

    private
    def users_params
        params.require(:user).permit(:username, :email, :password)
    end
end
