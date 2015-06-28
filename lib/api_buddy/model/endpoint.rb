module ApiBuddy
  module Model
    class Endpoint
      attr_reader :description

      def initialize
        @description = ''
      end

      def inspect
        "#<#{self.class} description: #{description}>"
      end
      alias_method :to_s, :inspect
    end
  end
end
