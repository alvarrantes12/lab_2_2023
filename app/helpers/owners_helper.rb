module OwnersHelper
    def level
        Owner.levels.keys.map do |level|
            [t("activerecord.attributes.owner.types_level.#{level}"), level]
        end
    end
end
