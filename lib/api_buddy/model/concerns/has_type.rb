module ApiBuddy
  module Concerns
    module HasType
      extend ActiveSupport::Concern

      attr_accessor :type

      TYPES = %i(string integer object) # datetime collection

      included do
        TYPES.each { |t| define_method(:"#{t}?") { type == t } }
      end
    end
  end
end
