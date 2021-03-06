module ApiBuddy
  module Dsl
    class EndpointBuilder
      def initialize(path, args = {}, &block)
        @block, @endpoint = block, Model::Endpoint.new(path, args)
      end

      def call
        instance_exec &block if block.present?
        endpoint
      end

      private
      attr_reader :block, :path
      attr_accessor :endpoint
      delegate :attributes, to: :endpoint

      def description(text)
        endpoint.description = text
      end

      def attribute(name, type = :string, example: nil)
        attribute = Model::Attribute.new name

        attribute.type    = type
        attribute.example = example

        attributes << attribute
      end

      def json(name, &block)
        attributes << NestedObjectBuilder.new(name, &block).call
      end

      def collection(name, &block)
        attributes << NestedObjectBuilder.new(
          name, collection: true, &block
        ).call
      end
    end
  end
end
