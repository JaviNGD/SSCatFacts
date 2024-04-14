class FavoritesController < ApplicationController
    before_action :protect_pages

    # Display the favorite cat facts for the current user
    def index
        @favorites = Favorite.where(user_id: Current.user.id)
    end

    # Add a favorite cat fact to the database for the current user
    def create
        Favorite.create(user_id: Current.user.id, cat_fact_id: params[:cat_fact_id])
        redirect_to favorites_path
    end

    # Remove a favorite cat fact from the database for the current user
    def destroy
        Favorite.find_by(user_id: Current.user.id, cat_fact_id: params[:id]).destroy
        redirect_to favorites_path
    end
    
    # Display most favorited cat facts for the community
    def community
        @favorites = Favorite.group(:cat_fact_id).count
        @top_facts = Favorite.group(:cat_fact).count.sort_by { |_, count| -count }.first(3) || []
    end

    # Add a favorite cat fact to the database for the current user
    def add_to_favorites
        Favorite.create(user_id: Current.user.id, cat_fact_id: params[:cat_fact_id])
        @added_to_favorites = true
    end

    # Remove a favorite cat fact from the database for the current user
    def remove_from_favorites
        Favorite.find_by(user_id: Current.user.id, cat_fact_id: params[:cat_fact_id]).destroy
        @added_to_favorites = false
    end

end
