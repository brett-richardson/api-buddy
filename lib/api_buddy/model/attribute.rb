module ApiBuddy
  module Model
    class Attribute
      include Concerns::HasType
      attr_accessor :example

      def initialize(name, type = :string, example: nil)
        @name, @type, @example = name, type, example
      end

      def inspect
        "#<#{self.class} name: #{name}, type: #{type}, example: #{example}>"
      end
      alias_method :to_s, :inspect

      private
      attr_reader :name, :type
    end
  end
end
