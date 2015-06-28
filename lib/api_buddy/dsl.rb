module ApiBuddy
  module Dsl
    module_function

    def interpret(&block)
      builder = Builder.new &block
      builder.call
    end
  end
end
