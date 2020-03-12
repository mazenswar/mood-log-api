class AuthController < ApplicationController

    def login
        user = User.find_by(username: login_params[:username])
        if user && user.authenticate(login_params[:password])
            token = encode_token(user)
            render json: { user: user, token: token}
        else
            render json: {errors: 'Username or Password are incorrect'}
        end
    end

    def persist
        if token 
            render json: active_user
        end 
    end

    private 
    def login_params
        params.permit(:username, :password)
    end
end