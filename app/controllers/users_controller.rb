class UsersController < ApplicationController
    #  skip_before_action :logged_in?, only: [:create, :login]
    def friender_name
        user = User.find(self.friender_id)
        user.name 
    end 

    def friendee_name
        user = User.find(self.friendee_id)
        user.name 
    end

    def user_ids
        [self.frirend_id, self,friendee_id]
    end 

    def index
        users = User.all 
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user 
        # , include: [:list_movies]
    end

    def create 
         
        user = User.new(user_params)


        if user.valid?
            user.save
            render json: {user: user, token: encode_token({user_id: user.id})}
        else
            render json: {error: "Failed to create the user"}
        end
    end 

    def login
       
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            render json: {user: user, token: encode_token({user_id: user.id})}
            
        else
            render json: {error: "Invalid username or Password"}
        end
    end 

    private

    def user_params
        params.permit(:username, :password)
    end
end
