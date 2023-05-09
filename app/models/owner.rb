class Owner < ApplicationRecord

    validates :first_name, presence: true, length: { maximum: 10 }
    validates :last_name, presence: true, length: { maximum: 15 }
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :id_number, presence: true, length: { in: 5..8 }

    enum level: {'bronze': 0, 'silver': 1, 'gold': 2}
end
