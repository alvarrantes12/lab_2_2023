class Owner < ApplicationRecord
  has_many :pets

  validates :first_name, presence: true, length: { minimum: 4, maximum: 10 }
  validates :last_name, presence: true, length: { minimum: 4, maximum: 15 }
  validates :email, presence: true, format: { with: /\A[\w+-.]+@[a-z\d-]+(.[a-z]+)*.[a-z]+\z/i}
  validates :id_number, presence: true, uniqueness: true, length: {minimum:5, maximum:8}
  validates :level, presence: true

  enum level: {'bronze': 0, 'silver': 1, 'gold': 2}
end