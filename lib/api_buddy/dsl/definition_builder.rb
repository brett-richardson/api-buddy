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

      def endpoint(path, &block)
        definition.endpoints << EndpointBuilder.new(path, &block).call
      end
    end
  end
end