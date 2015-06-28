module ApiBuddy
  module Model
    class Endpoint
      attr_accessor :description, :path, :http_method

      def initialize
        @description, @http_method = '', :get
      end

      def inspect
        "#<#{self.class} description: #{description}>"
      end
      alias_method :to_s, :inspect
    end
  end
end
