class Pet < ApplicationRecord
    belongs_to :owner

    validates :first_name, presence: true, length: { maximum: 10 }
    validates :breed, presence: true, length: { maximum: 10 }
    validates :pedigree, inclusion: { in: [true, false] }
end
