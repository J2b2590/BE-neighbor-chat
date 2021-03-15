class UsersController < ApplicationController
    # skip_before_action :require_login, only: [:login, :auto_login]

    def index 
        users = User.all
        render json: users
    end

    def show
      user = User.find(params[:id])
      render json: user
    end

    
    def create
        user = User.find_by(username: params[:username])
       
        if user && user.authenticate(params[:password])   
            payload = {user_id: user.id}
            token = encode_token(payload)
            puts token
            render json: {user: UserSerializer.new(user), jwt: token} 
            else
            render json: { error: "invalid username/password. "}, status: 401
            end
     end




    # def require_login
    #     render json: {message: "Please Login"}, status: :unauthorized unless logged_in?
    # end

     

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            payload = {user_id: user.id}
            token = encode_token(payload)
            render json: {user: user, jwt: token, success: "Welcome back, #{user.username}"}
        else
            render json: {failure: "Log in failed! Username or password invalid!"}
        end
      end
    
      def auto_login
        if session_user
          render json: session_user
        else
          render json: {errors: "No User Logged In"}
        end
      end
    
      def user_is_authed
        render json: {message: "You are authorized"}
      end


     

    

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
