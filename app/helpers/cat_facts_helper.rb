module CatFactsHelper

    # Obtains id of the cat fact
    def get_fact_id
        CatFact.find_by(fact: @fact).id
    end
end
