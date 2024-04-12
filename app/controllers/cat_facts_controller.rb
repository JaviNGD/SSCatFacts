require 'httparty'

class CatFactsController < ApplicationController
    before_action :protect_pages

    def index
        # Get a random cat fact from the API
        response = HTTParty.get('https://catfact.ninja/fact')
        if response.success?
            message = response.parsed_response['fact']
    
            # Save the fact to the database
            cat_fact = CatFact.new(fact: message)
            if cat_fact.save
                @fact = message
            else
            # If the fact already exists in the database, display the fact from the database
                @fact = CatFact.find_by(fact: message).fact
            end
        else
            @fact = 'No cat facts available at the moment. Please try again later.'
        end
    end

end
