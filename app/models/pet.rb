class Pet < ApplicationRecord
    belongs_to :owner
    validates :name, presence: true, length: { maximum: 10 }
    validates :breed, presence: true, length: { maximum: 10 }
    validates :pedigree, presence: true

end
