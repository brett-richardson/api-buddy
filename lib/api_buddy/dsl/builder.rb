module ApiBuddy
  module Dsl
    class Builder
      def initialize(&block)
        @block, @definition = block, Model::ApiDefinition.new
      end

      def call
        instance_eval &block
        definition
      end

      private
      attr_reader :block, :definition
      delegate :endpoints, to: :definition

      def endpoint(path)
        endpoint = Model::Endpoint.new
        endpoint.path = path

        definition.endpoints << endpoint
      end
    end
  end
end
