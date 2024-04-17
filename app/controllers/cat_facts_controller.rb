require 'httparty'

class CatFactsController < ApplicationController
    before_action :protect_pages

    def index
        begin
            # Get a random cat fact from the API
            response = HTTParty.get('https://catfact.ninja/fact')
            if response.success?
                message = response.parsed_response['fact']
        
                # Save the fact to the database
                cat_fact = CatFact.new(fact: message)
                if cat_fact.save
                    @fact = fact_db(message)
                    @added_to_favorites = false
                else
                # If the fact already exists in the database, display the fact from the database
                    @fact = fact_db(message)
                    @added_to_favorites = Favorite.exists?(user_id: Current.user.id, cat_fact_id: CatFact.find_by(fact: message).id)
                end
            else
                @fact = 'No cat facts available at the moment. Please try again later.'
            end
        rescue StandardError => e
            @fact = 'No cat facts available at the moment. Please try again later.'
            Rails.logger.error "Had an issue with the cat facts API: #{e}"
        end
    end

    private

    def fact_db(message)
        CatFact.find_by(fact: message).fact
    end

end
