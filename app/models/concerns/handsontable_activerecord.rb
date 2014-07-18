module HandsontableActiverecord
  extend ActiveSupport::Concern

  module ClassMethods
    def to_handson(*columns)
      self.pluck(columns.join(',').to_sym).unshift(handson_header(columns))
    end

    def handson_header(columns)
      columns.map{|h| I18n.t("activerecord.attributes.#{self.name.underscore}.#{h.to_s}")}
    end
  end
end
