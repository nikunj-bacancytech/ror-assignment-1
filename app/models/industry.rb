class Industry < ApplicationRecord
    has_and_belongs_to_many :sectors 

    before_save { self.email = email.downcase }
    before_save { self.registration_number = SecureRandom.uuid }

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :name, presence: true, length: { in: 3..100, message: "Name length should be between 3 and 100 characters" }
    validates :email, presence: true, 
                        uniqueness: { case_sensitive: false }, 
                        length: { maximum: 105 },
                        format: { with: VALID_EMAIL_REGEX}
    validates :registration_number, uniqueness: true
end
