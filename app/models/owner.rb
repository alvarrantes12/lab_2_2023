class Owner < ApplicationRecord
    has_many :pets

    validates :first_name, presence: true, length: {minimum: 3, maximum: 10}
    validates :last_name, presence: true, length: {minimum: 3, maximum: 10}
    validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\z/i}
    validates :identity, presence: true, uniqueness: true
    validates :level, presence: true

    enum level: {'gold': 0, 'silver':1, 'bronze': 3}
end
