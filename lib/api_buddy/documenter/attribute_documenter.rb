module ApiBuddy
  module Documenter
    class AttributeDocumenter < BaseDocumenter
      def to_md
        ''
      end

      def example_line(indent_level = 2)
        "#{indent indent_level}\"#{name}\" : #{wrapped_in_type example}"
      end

      private

      def example
        super || default_example
      end

      def default_example
        case type
        when :string  then "Abc"
        when :integer then 123
        end
      end

      def wrapped_in_type(value)
        case type
        when :integer, :object then value
        else "\"#{value}\""
        end
      end
    end
  end
end
