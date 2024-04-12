class CatFact < ApplicationRecord
    # content must be present and unique
    validates :fact, presence: true, uniqueness: true
end
