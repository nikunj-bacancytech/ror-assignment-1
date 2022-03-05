class Patient < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :physicians, through: :appointments

    before_save { self.email = email.downcase }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :name, presence: true, length: { in: 3..25, message: "length should be between 3 and 25 characters" }
    validates :email, presence: true, 
                        uniqueness: { case_sensitive: false }, 
                        length: { maximum: 105 },
                        format: { with: VALID_EMAIL_REGEX}
end
