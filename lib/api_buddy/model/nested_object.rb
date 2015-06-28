module ApiBuddy
  module Model
    class NestedObject
      include Concerns::HasType
      attr_accessor :name, :attributes

      def initialize(name)
        @name, @attributes, @type = name, [], :object
      end

      def example; end

      def inspect
        "#<#{self.class} name: #{name}>"
      end
      alias_method :to_s, :inspect
    end
  end
end
