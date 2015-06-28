module ApiBuddy
  module Model
    class Attribute
      attr_accessor :type, :example
      TYPES = %i(string integer) # datetime object collection

      def initialize(name, type = :string, example: nil)
        @name, @type, @example = name, type, example
      end

      TYPES.each { |t| define_method(:"#{t}?") { type == t } }

      def inspect
        "#<#{self.class} name: #{name}, type: #{type}, example: #{example}>"
      end
      alias_method :to_s, :inspect

      private
      attr_reader :name, :type
    end
  end
end
