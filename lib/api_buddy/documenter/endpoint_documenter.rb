module ApiBuddy
  module Documenter
    class EndpointDocumenter < BaseDocumenter
      def to_md
        lines(
          title, blank_line, description, blank_line, example
        )
      end

      private

      def title
        "## #{http_method} `#{path}`"
      end

      def example
        [
          "```javascript",
          "{",
          attributes_example_content,
          "}",
          "```"
        ]
      end

      def attributes_example_content
        attributes.map { |a| AttributeDocumenter.new(a).example_line }
      end


      def http_method
        super.upcase
      end
    end
  end
end
