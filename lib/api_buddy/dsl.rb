module ApiBuddy
  module Dsl
    module_function

    def interpret(&block)
      DefinitionBuilder.new(&block).call
    end

    def interpret_file(file_name)
      DefinitionBuilder.new { eval File.read file_name }.call
    end
  end
end
