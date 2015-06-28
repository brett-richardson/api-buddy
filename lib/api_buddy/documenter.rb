module ApiBuddy
  module Documenter
    module_function

    def build(definition)
      DefinitionDocumenter.new(definition).to_md
    end
  end
end
