class Owner < ApplicationRecord
    has_many :pets
    
    validates :first_name, presence: true, length: { maximum: 10 }
    validates :last_name, presence: true, length: { maximum: 15 }
    validates :mail, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
    validates :owner_id, presence: true, uniqueness: true, length: { minimum: 5, maximum: 8 }
    validates :level, presence: true

end
