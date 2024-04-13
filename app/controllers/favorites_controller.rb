class FavoritesController < ApplicationController

    # Add a favorite cat fact to the database for the current user
    def create
        Favorite.create(user_id: Current.user.id, cat_fact_id: params[:cat_fact_id])
    end
    
end
