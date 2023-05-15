class Owner < ApplicationRecord
    has_many :owner

    validates :first_name,presence: true,length: { minimum: 10 }
    validates :last_name,presence: true,length: { minimum: 15 }
    validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    validates :identification, presence: true, uniqueness: true, numericality: { greater_than: 9999, less_than: 100000000 }
    validates :level,presence: true

    enum level: {'bronze': 0, 'silver': 1, 'gold': 2}
end
