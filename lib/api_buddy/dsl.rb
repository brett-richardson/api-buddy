module ApiBuddy
  module Dsl
    module_function

    def interpret(&block)
      DefinitionBuilder.new(&block).call
    end
  end
end
