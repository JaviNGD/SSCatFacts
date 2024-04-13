class CatFact < ApplicationRecord
    # content must be present and unique
    validates :fact, presence: true, uniqueness: true

    has_many :favorites, dependent: :destroy
end
