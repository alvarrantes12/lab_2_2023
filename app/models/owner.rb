class Owner < ApplicationRecord
    has_many :pet

    validates :first_name,presence: true, length: { maximum: 10 }
    validates :last_name,presence: true, length: { maximum: 15 }
    validates :email,presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :identification_numer, length: { minimum: 5, maximum: 8 },presence: true, uniqueness: true

    enum level_type: {'gold': 0, 'silver': 1, 'bronze': 2}

    
end
