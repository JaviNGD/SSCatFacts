require "test_helper"

class CatFactTest < ActiveSupport::TestCase
  
  test "should save cat fact" do
    # Create a new CatFact object
    cat_fact = CatFact.new(fact: 'Cats are awesome')
    # Save the object
    assert cat_fact.save
  end

  test "should not save cat fact without fact" do
    # Create a new CatFact object without a fact
    cat_fact = CatFact.new
    # Attempt to save the object
    assert_not cat_fact.save
  end

  test "should not save cat fact with duplicate fact" do
    # Create a new CatFact object
    cat_fact = CatFact.new(fact: 'Cats are awesome')
    # Save the object
    cat_fact.save

    # Attempt to create a new CatFact object with the same fact
    cat_fact2 = CatFact.new(fact: 'Cats are awesome')
    # Attempt to save the object
    assert_not cat_fact2.save
  end
end
