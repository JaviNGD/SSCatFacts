require 'httparty'

class CatFactsController < ApplicationController

    def index
        response = HTTParty.get('https://catfact.ninja/fact')
        if response.success?
            @fact = response.parsed_response['fact']
        else
            @fact = 'No cat facts available at the moment. Please try again later.'
        end
    end
end
