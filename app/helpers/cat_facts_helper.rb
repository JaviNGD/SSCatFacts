module CatFactsHelper

    # Obtains id of the cat fact, if it exists in the database else returns -1 
    def get_fact_id
        cat_fact = CatFact.find_by(fact: @fact)
        cat_fact ? cat_fact.id : -1
    end
end
