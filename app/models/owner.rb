class Owner < ApplicationRecord
    enum levelsEnum: { gold: 1, silver: 2, bronze: 3 }

    validates :name, presence: true, length: { maximum: 10 }
    validates :last_name, presence: true, length: { maximum: 15 }
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :identifier, presence: true, uniqueness: true, length: { in: 5..8 }
    validates :level, presence: true
  
    def nivel_traducido
      I18n.t("activerecord.attributes.owner.levels.#{level}")
    end

end
