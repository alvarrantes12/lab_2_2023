module OwnersHelper
    def levels
      Owner.levels.keys.map do |level|
        [t("activerecord.attributes.owner.levels.#{level}"), level]
      end
    end
  end
