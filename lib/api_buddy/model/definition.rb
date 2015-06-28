module ApiBuddy
  module Model
    class Definition
      attr_reader :endpoints

      def initialize
        @endpoints = []
      end

      def inspect
        "#<#{self.class} endpoints #{endpoints}>"
      end
      alias_method :to_s, :inspect
    end
  end
end
