class Authentication::SessionsController < ApplicationController

    def new
    end

    # Create a new user
    def create
        @user = User.find_by(username: params[:username].downcase)
        if @user
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Logged in successfully!"
        else
            redirect_to new_session_path, alert: "Invalid username"
        end
    end

end