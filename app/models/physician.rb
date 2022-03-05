class Physician < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :patients, through: :appointments

    before_save { self.email = email.downcase }
    before_save { self.unique_id = SecureRandom.uuid }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :name, presence: true, length: { in: 3..25, message: "Name length should be between 3 and 25 characters" }
    validates :email, presence: true, 
                        uniqueness: { case_sensitive: false }, 
                        length: { maximum: 105 },
                        format: { with: VALID_EMAIL_REGEX}
    validates :unique_id, uniqueness: true

end
