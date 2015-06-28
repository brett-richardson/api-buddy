module ApiBuddy
  module Dsl
    class EndpointBuilder
      def initialize(path, &block)
        @path, @block, @endpoint = path, block, Model::Endpoint.new
      end

      def call
        endpoint.path = path
        instance_exec &block if block.present?
        endpoint
      end

      private
      attr_reader :block, :path
      attr_accessor :endpoint
      delegate :attributes, to: :endpoint

      def attribute(name, type = :string, example: nil)
        attribute = Model::Attribute.new name

        attribute.type    = type
        attribute.example = example

        attributes << attribute
      end

      def json(name, &block)
        attributes << NestedObjectBuilder.new(name, &block).call
      end
    end
  end
end
