module ApiBuddy
  module Documenter
    class DefinitionDocumenter < BaseDocumenter
      def to_md
        lines(
          title, blank_line, endpoint_content
        )
      end

      private

      def title
        "# #{super}"
      end

      def endpoint_content
        endpoints.map do |endpoint|
          EndpointDocumenter.new(endpoint).to_md
        end.join horizontal_seperator
      end
    end
  end
end
