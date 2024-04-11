class Authentication::UsersController < ApplicationController

    # Display the sign up form
    def new
        @user = User.new
    end

    # Create a new user
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to root_path, notice: "User created successfully!"
        else
            render :new, status: :unprocessable_entity
        end
    end

    private 

    # params required for user creation
    def user_params
        params.require(:user).permit(:username)
    end
end