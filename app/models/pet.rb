class Pet < ApplicationRecord
    belongs_to :owner

    validates :name, presence: true, length: {minimum: 2, maximum: 10}
    validates :breed, presence: true, length: {minimum: 3, maximum: 10}
    validates :pedigree, inclusion: { in: [true, false] }
end
