module ApiBuddy
  module Model
    class Endpoint
      attr_accessor :description, :path, :http_method, :attributes

      def initialize(path, args = {})
        @path, @description, @http_method, @attributes = path, '', :get, []
        options = args.reverse_merge(http_method: :get)
        @http_method = options.fetch :http_method
      end

      def inspect
        "#<#{self.class} description: #{description}, " \
          "http_method: #{http_method}, attributes: #{attributes}>"
      end
      alias_method :to_s, :inspect
    end
  end
end
