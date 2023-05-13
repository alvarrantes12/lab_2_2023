module OwnersHelper
    def level_types
        Owner.level_types.keys.map do |type|
            [t("activerecord.attributes.content.types.#{type}"), type]
        end
    end
end
