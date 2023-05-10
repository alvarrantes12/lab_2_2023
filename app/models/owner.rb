class Owner < ApplicationRecord
    validates :first_name, presence: true, length: { maximum: 10 }
    validates :last_name, presence: true, length: { maximum: 15 }
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :id, presence: true, length: { in: 5..8 }
    enum level: { 'Bronze': 0, 'Silver': 1, 'Gold': 2 }
  end