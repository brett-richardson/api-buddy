module ApiBuddy
  module Dsl
    class Builder
      def initialize(&block)
        @block, @definition = block, Model::ApiDefinition.new
      end

      def call
        endpoints << Model::Endpoint.new
        definition
      end

      private
      attr_reader :block, :definition
      delegate :endpoints, to: :definition
    end
  end
end
