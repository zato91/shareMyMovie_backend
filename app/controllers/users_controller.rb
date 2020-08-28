class UsersController < ApplicationController
    #  skip_before_action :logged_in?, only: [:create, :login]

    def index
        users = User.all 
        render json: users
    end

    def create 
    end 

    def login
        # UserSerializer.new(user)
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            render json: {user: user, token: encode_token({user_id: user.id})}
        else
            render json: {error: "Invalid username or Password"}
        end
    end 
end
