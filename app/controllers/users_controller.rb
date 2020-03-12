class UsersController < ApplicationController

    def show
        render json: User.find(params[:id])
    end

    def create
        user = User.create(user_params)
        if user.valid?
            token = encode_token(user)
            render json: { user: user, token: token}
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    private 

    def user_params
        params.permit(:username, :first_name, :last_name, :password, :email, :dob)
    end
end
