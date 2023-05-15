class Pet < ApplicationRecord
    belongs_to :owner

    validates :first_name,presence: true,length: { minimum: 10 }
    validates :breed,presence: true,length: { minimum: 10 }
    validates :pedigree,inclusion: [true, false]
end