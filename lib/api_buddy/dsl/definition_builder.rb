module ApiBuddy
  module Dsl
    class DefinitionBuilder
      def initialize(&block)
        @block, @definition = block, Model::Definition.new
      end

      def call
        instance_eval &block
        definition
      end

      private
      attr_reader :block, :definition
      delegate :endpoints, to: :definition

      def title(value)
        definition.title = value
      end

      def endpoint(path, args = {}, &block)
        definition.endpoints << EndpointBuilder.new(path, args, &block).call
      end
    end
  end
end
