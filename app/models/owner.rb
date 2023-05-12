class Owner < ApplicationRecord
  has_many :pets
  validates :first_name, presence: true, length: {minimum: 3, maximum: 10 }
  validates :last_name, presence: true, length: {minimum: 3, maximum: 15 }
  validates :email, presence: true, format: { with: /\A\S+@.+\.\S+\z/}
  validates :identification, presence: true, length: { maximum: 8 }, uniqueness: true
end
