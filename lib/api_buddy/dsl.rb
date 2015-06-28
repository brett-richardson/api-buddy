module ApiBuddy
  module Dsl
    module_function

    def interpret(file_name)
      Model::ApiDefinition.new
    end
  end
end
