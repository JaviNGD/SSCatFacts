class User < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :cat_facts, through: :favorites

    # username must be present, unique, between 2 and 20 characters long, and only contain letters and numbers
    validates :username,
        presence: true, uniqueness: true,
        length: { in: 2..20 },
        format: { with: /\A[a-zA-Z0-9]+\z/, message: "only allows letters and numbers"}

    before_save :downcase_username

    private

    # downcase the username before saving
    def downcase_username
        self.username.downcase!
    end
end
