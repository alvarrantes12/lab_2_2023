class Pet < ApplicationRecord
    belongs_to :owner

    validates :name, presence: true, length: { maximum: 10 }
    validates :race, presence: true, length: { maximum: 10 }
    validates :pedigree, inclusion: [true, false]
end
