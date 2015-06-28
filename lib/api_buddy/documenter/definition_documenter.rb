module ApiBuddy
  module Documenter
    class DefinitionDocumenter < BaseDocumenter
      def to_md
        endpoints.map do |endpoint|
          EndpointDocumenter.new(endpoint).to_md
        end.join "\n"
      end
    end
  end
end
