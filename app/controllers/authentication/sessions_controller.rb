class Authentication::SessionsController < ApplicationController
    skip_before_action :protect_pages
    
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

    # Destroy the current session
    def destroy
        session.delete(:user_id)
        redirect_to new_session_path, notice: "Logged out successfully!"
    end

end