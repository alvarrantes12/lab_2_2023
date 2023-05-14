class Owner < ApplicationRecord
    has_many :pets
    
    validates :first_name, presence: true, length: {maximum: 10} 
    validates :last_name, presence: true, length: {maximum: 15} 
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :identifier, presence: true, uniqueness: true, length: {minimum: 5, maximum: 8} 

    enum level: {'gold': 0,'silver': 1,'bronze':2}
end
