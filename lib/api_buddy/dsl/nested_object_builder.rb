module ApiBuddy
  module Dsl
    class NestedObjectBuilder < EndpointBuilder
      def initialize(name, collection: false, &block)
        @block, @collection = block, collection
        @nested_object      = Model::NestedObject.new name
      end

      def call
        instance_exec &block if block.present?
        nested_object
      end

      private
      attr_reader :block
      attr_accessor :nested_object
      delegate :attributes, to: :nested_object
    end
  end
end
