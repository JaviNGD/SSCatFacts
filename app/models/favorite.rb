class Favorite < ApplicationRecord
  validates :user_id, uniqueness: { scope: :cat_fact_id }
  belongs_to :user
  belongs_to :cat_fact
end
