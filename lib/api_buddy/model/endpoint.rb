module ApiBuddy
  module Model
    class Endpoint
      attr_accessor :description, :path, :http_method, :attributes

      def initialize
        @description, @http_method, @attributes = '', :get, []
      end

      def inspect
        "#<#{self.class} description: #{description}, " \
          "http_method: #{http_method}, attributes: #{attributes}>"
      end
      alias_method :to_s, :inspect
    end
  end
end
