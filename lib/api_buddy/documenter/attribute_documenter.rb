module ApiBuddy
  module Documenter
    class AttributeDocumenter < BaseDocumenter
      def to_md
        ''
      end

      def example_line(indent_level = 1)
        wrapped_example = wrapped_in_type(
          example, indent_level: indent_level + 1
        )
        "#{indent indent_level}\"#{name}\" : #{wrapped_example}"
      end

      private

      def example
        super || default_example
      end

      def default_example
        case type
        when :string  then "abc"
        when :integer then 123
        end
      end

      def wrapped_in_type(value, indent_level: 2)
        case type
        when :integer then value
        when :object then wrapped_object(value, indent_level: indent_level)
        else "\"#{value}\""
        end
      end

      def wrapped_object(attributes, indent_level: 2)
        attribute_lines = attributes.map do |attribute|
          self.class.new(attribute).example_line indent_level
        end

        lines(
          "{",
          attribute_lines.join(",\n"),
          "#{indent indent_level - 1}}"
        )
      end
    end
  end
end
