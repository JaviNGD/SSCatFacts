class ApplicationController < ActionController::Base
    before_action :set_current_user
    before_action :protect_pages
    skip_before_action :protect_pages, only: [:index]

    def index
    end

    def not_found
    end

    private

    # Set the current user for the session if the user is logged in
    def set_current_user
        Current.user = User.find_by(id: session[:user_id]) if session[:user_id]
    end

    # Redirect to the login page if the user is not logged in
    def protect_pages
        redirect_to new_session_path, alert: "You must be logged in to access this page" unless Current.user
    end
    
end
